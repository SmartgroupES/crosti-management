import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  const searchParams = req.nextUrl.searchParams;
  const search = searchParams.get('search') || '';

  try {
    let query = `
      SELECT 
        hr.id,
        hr.name,
        hr.micros_id,
        hr.total_cost,
        (SELECT COUNT(*) FROM historical_recipe_ingredients WHERE recipe_id = hr.id) as ingredient_count
      FROM historical_recipes hr
    `;

    if (search) {
      query += ` WHERE hr.name LIKE '%${search.replace(/'/g, "''")}%' OR hr.micros_id LIKE '%${search.replace(/'/g, "''")}%'`;
    }

    // Eliminamos el límite de 100 para cargar TODAS
    query += ` ORDER BY hr.name ASC`;

    const { results: recipes } = await DB.prepare(query).all();

    return NextResponse.json(recipes);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
