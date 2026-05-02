import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare("SELECT * FROM equipment ORDER BY name ASC").all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { name, type, location, min_temp, max_temp } = await req.json();
    const result = await DB.prepare(`
      INSERT INTO equipment (name, type, location, min_temp, max_temp) 
      VALUES (?, ?, ?, ?, ?) RETURNING *
    `).bind(name, type, location, min_temp, max_temp).first();
    return NextResponse.json(result);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
