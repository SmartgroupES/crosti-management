import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  try {
    const { results } = await DB.prepare("SELECT * FROM raw_materials ORDER BY name ASC").all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  try {
    const data = await req.json();
    const { id, current_stock, average_cost_per_unit, min_stock_alert } = data;

    if (id) {
      // Update existing
      await DB.prepare(`
        UPDATE raw_materials 
        SET current_stock = ?, average_cost_per_unit = ?, min_stock_alert = ?
        WHERE id = ?
      `).bind(current_stock, average_cost_per_unit, min_stock_alert, id).run();
    } else {
      // Create new
      await DB.prepare(`
        INSERT INTO raw_materials (name, current_stock, unit_measure, average_cost_per_unit, min_stock_alert)
        VALUES (?, ?, ?, ?, ?)
      `).bind(data.name, current_stock, data.unit_measure, average_cost_per_unit, min_stock_alert).run();
    }

    return NextResponse.json({ success: true });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
