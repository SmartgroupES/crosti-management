import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare(`
      SELECT po.*, s.name as supplier_name 
      FROM purchase_orders po
      JOIN suppliers s ON po.supplier_id = s.id
      ORDER BY po.order_date DESC
    `).all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { supplier_id, items } = await req.json();
    
    // 1. Create PO
    const po = await DB.prepare(`
      INSERT INTO purchase_orders (supplier_id, status) 
      VALUES (?, 'draft') RETURNING *
    `).bind(supplier_id).first();

    // 2. Create Items
    const statements = items.map((item: any) => 
      DB.prepare(`
        INSERT INTO purchase_order_items (po_id, material_id, quantity, unit_cost)
        VALUES (?, ?, ?, ?)
      `).bind(po.id, item.materialId, item.suggestedQty, item.estimatedCost || 0)
    );

    await DB.batch(statements);

    return NextResponse.json({ success: true, poId: po.id });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
