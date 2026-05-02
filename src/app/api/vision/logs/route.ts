import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;

  if (!DB) {
    return NextResponse.json({ error: "Database not found" }, { status: 500 });
  }

  try {
    const { results } = await DB.prepare(`
      SELECT * FROM vision_logs 
      ORDER BY timestamp DESC 
      LIMIT 50
    `).all();

    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
