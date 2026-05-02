import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { plan, date, location } = await req.json(); // Array of { productId, quantity }
    const targetDate = date || new Date().toISOString().split('T')[0];
    const targetLocation = location || 'Downtown'; // Default for simulation

    // 1. Get recipes for all products in the plan to calculate material consumption
    const productIds = plan.map((p: any) => p.productId);
    const placeholders = productIds.map(() => '?').join(',');
    
    const { results: recipeItems } = await DB.prepare(`
      SELECT 
        r.product_id, 
        r.material_id,
        r.quantity_needed as qty_per_unit
      FROM recipes r
      WHERE r.product_id IN (${placeholders})
    `).bind(...productIds).all();

    // 2. Aggregate material consumption
    const materialConsumption: Record<number, number> = {};
    for (const item of plan) {
      const ingredients = recipeItems.filter((ri: any) => ri.product_id === item.productId);
      for (const ing of ingredients) {
        const totalNeeded = ing.qty_per_unit * item.quantity;
        materialConsumption[ing.material_id] = (materialConsumption[ing.material_id] || 0) + totalNeeded;
      }
    }

    // 3. Execute updates in a transaction (simulated with individual calls as D1 batching is safer)
    const statements = [];

    // Update Raw Materials Stock
    for (const [matId, amount] of Object.entries(materialConsumption)) {
      statements.push(
        DB.prepare("UPDATE raw_materials SET current_stock = current_stock - ? WHERE id = ?")
          .bind(amount, parseInt(matId))
      );
    }

    // Update Daily Operations (Production Planned)
    for (const item of plan) {
      statements.push(
        DB.prepare(`
          INSERT INTO daily_operations (date, product_id, location, production_planned) 
          VALUES (?, ?, ?, ?)
          ON CONFLICT(date, product_id, location) DO UPDATE SET production_planned = excluded.production_planned
        `).bind(targetDate, item.productId, targetLocation, item.quantity)
      );
    }

    // Note: D1 ON CONFLICT requires a unique index. Let's check if it exists or use upsert logic.
    // If no unique index on (date, product_id), we do manual upsert.
    
    await DB.batch(statements);

    return NextResponse.json({ success: true, message: "Plan aprobado e inventario actualizado" });
  } catch (e: any) {
    console.error(e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
