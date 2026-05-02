import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare("SELECT * FROM employees WHERE is_active = 1 ORDER BY name ASC").all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { name, position, hourly_rate } = await req.json();
    const result = await DB.prepare("INSERT INTO employees (name, position, hourly_rate) VALUES (?, ?, ?) RETURNING *")
      .bind(name, position, hourly_rate)
      .first();
    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
