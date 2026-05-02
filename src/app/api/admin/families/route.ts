import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

const INITIAL_FAMILIES = [
  { name: 'The Classics', description: 'Vainilla/Mantequilla estándar con chispas o nueces.' },
  { name: 'The Dark Side', description: 'Base de cacao intenso y combinaciones oscuras.' },
  { name: 'Gourmet Centers', description: 'Masas premium con rellenos líquidos o cremosos.' },
  { name: 'Special Editions', description: 'Masas de temporada e ingredientes exóticos.' }
];

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { results } = await DB.prepare("SELECT * FROM product_families").all();
    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  const body = await req.json();
  const { action } = body;

  try {
    if (action === 'seed') {
      for (const family of INITIAL_FAMILIES) {
        await DB.prepare("INSERT OR IGNORE INTO product_families (name, description) VALUES (?, ?)")
          .bind(family.name, family.description)
          .run();
      }
      return NextResponse.json({ success: true, message: "Families seeded" });
    }
    
    const { name, description } = body;
    await DB.prepare("INSERT INTO product_families (name, description) VALUES (?, ?)")
      .bind(name, description)
      .run();
    
    return NextResponse.json({ success: true });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
