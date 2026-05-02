import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { plan } = await req.json(); // Array of { productId, quantity }

    if (!plan || !Array.isArray(plan)) {
      return NextResponse.json({ error: "Plan array is required" }, { status: 400 });
    }

    // 1. Get recipes for all products in the plan
    const productIds = plan.map(p => p.productId);
    const placeholders = productIds.map(() => '?').join(',');
    
    const { results: recipeItems } = await DB.prepare(`
      SELECT 
        r.product_id, 
        m.name as material_name, 
        m.unit_measure, 
        m.current_stock,
        r.quantity_needed as qty_per_unit
      FROM recipes r
      JOIN raw_materials m ON r.material_id = m.id
      WHERE r.product_id IN (${placeholders})
    `).bind(...productIds).all();

    // 2. Aggregate materials
    const aggregation: Record<string, { quantity: number, unit: string, stock: number }> = {};

    for (const item of plan) {
      const ingredients = recipeItems.filter((ri: any) => ri.product_id === item.productId);
      
      for (const ing of ingredients) {
        const totalNeeded = ing.qty_per_unit * item.quantity;
        if (aggregation[ing.material_name]) {
          aggregation[ing.material_name].quantity += totalNeeded;
        } else {
          aggregation[ing.material_name] = {
            quantity: totalNeeded,
            unit: ing.unit_measure,
            stock: ing.current_stock
          };
        }
      }
    }

    // Convert to array
    const result = Object.entries(aggregation).map(([name, data]) => ({
      name,
      total: data.quantity,
      unit: data.unit,
      stock: data.stock,
      gap: Math.max(0, data.quantity - data.stock)
    }));

    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
