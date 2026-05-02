import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { material_id, supplier_id, quantity, total_cost, date } = await req.json();

    if (!material_id || !quantity || !total_cost) {
      return NextResponse.json({ error: "Material, quantity and total cost are required" }, { status: 400 });
    }

    // 1. Get current material info to recalculate average cost
    const material = await DB.prepare("SELECT current_stock, average_cost_per_unit FROM raw_materials WHERE id = ?")
      .bind(material_id)
      .first();

    if (!material) {
      return NextResponse.json({ error: "Material not found" }, { status: 404 });
    }

    const oldStock = material.current_stock || 0;
    const oldAvgCost = material.average_cost_per_unit || 0;
    const newQty = parseFloat(quantity);
    const newTotalCost = parseFloat(total_cost);
    
    // New Average Cost = (Total Value + New Cost) / (Total Stock + New Qty)
    const newAvgCost = ( (oldStock * oldAvgCost) + newTotalCost ) / (oldStock + newQty);

    // 2. Execute updates in batch
    const statements = [
      // Insert purchase record
      DB.prepare(`
        INSERT INTO purchases (supplier_id, material_id, quantity, total_cost, invoice_date) 
        VALUES (?, ?, ?, ?, ?)
      `).bind(supplier_id || null, material_id, newQty, newTotalCost, date || new Date().toISOString().split('T')[0]),
      
      // Update raw material stock and average cost
      DB.prepare(`
        UPDATE raw_materials 
        SET current_stock = current_stock + ?, 
            average_cost_per_unit = ? 
        WHERE id = ?
      `).bind(newQty, newAvgCost, material_id)
    ];

    await DB.batch(statements);

    return NextResponse.json({ 
      success: true, 
      new_stock: oldStock + newQty, 
      new_avg_cost: newAvgCost 
    });

  } catch (e: any) {
    console.error(e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
