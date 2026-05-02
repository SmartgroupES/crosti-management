import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare(`
      SELECT tl.*, e.name as equipment_name, emp.name as employee_name, e.min_temp, e.max_temp
      FROM temperature_logs tl
      JOIN equipment e ON tl.equipment_id = e.id
      JOIN employees emp ON tl.employee_id = emp.id
      ORDER BY tl.timestamp DESC
      LIMIT 100
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
    const { equipment_id, employee_id, temperature, notes } = await req.json();
    const result = await DB.prepare(`
      INSERT INTO temperature_logs (equipment_id, employee_id, temperature, notes) 
      VALUES (?, ?, ?, ?) RETURNING *
    `).bind(equipment_id, employee_id, temperature, notes).first();
    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
