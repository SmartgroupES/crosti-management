import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  const date = req.nextUrl.searchParams.get('date');
  const location = req.nextUrl.searchParams.get('location');

  try {
    let query = `
      SELECT s.*, e.name as employee_name, e.hourly_rate 
      FROM schedules s 
      JOIN employees e ON s.employee_id = e.id
    `;
    const params = [];

    if (date) {
      query += ` WHERE s.date = ?`;
      params.push(date);
    }

    const { results } = await DB.prepare(query).bind(...params).all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { employee_id, date, start_time, end_time, location } = await req.json();
    const result = await DB.prepare(`
      INSERT INTO schedules (employee_id, date, start_time, end_time, location) 
      VALUES (?, ?, ?, ?, ?) RETURNING *
    `).bind(employee_id, date, start_time, end_time, location).first();
    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
