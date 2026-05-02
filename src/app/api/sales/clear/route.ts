import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;

  if (!DB) {
    return NextResponse.json({ error: "Database binding not found" }, { status: 500 });
  }

  try {
    await DB.prepare("DELETE FROM sales").run();
    return NextResponse.json({ success: true, message: "Todos los datos de ventas han sido eliminados" });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
