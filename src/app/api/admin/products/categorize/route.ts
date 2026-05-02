import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare(`
      SELECT p.*, f.name as family_name 
      FROM products p 
      LEFT JOIN product_families f ON p.family_id = f.id
      ORDER BY p.name ASC
    `).all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  const body = await req.json();
  const { productIds, familyId } = body;

  if (!productIds || familyId === undefined) {
    return NextResponse.json({ error: "Product IDs and Family ID are required" }, { status: 400 });
  }

  try {
    const placeholders = productIds.map(() => '?').join(',');
    await DB.prepare(`UPDATE products SET family_id = ? WHERE id IN (${placeholders})`)
      .bind(familyId, ...productIds)
      .run();
    
    return NextResponse.json({ success: true });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
