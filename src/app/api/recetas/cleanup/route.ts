import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;

  if (!DB) {
    return NextResponse.json({ error: "Database binding not found" }, { status: 500 });
  }

  try {
    // Delete ingredients first to respect foreign key (even if no cascade)
    await DB.prepare(`
      DELETE FROM historical_recipe_ingredients 
      WHERE recipe_id IN (
        SELECT id FROM historical_recipes 
        WHERE name NOT LIKE '%GALLETA%' AND name NOT LIKE '%COOKIE%'
      )
    `).run();

    // Delete recipes
    const result = await DB.prepare(`
      DELETE FROM historical_recipes 
      WHERE name NOT LIKE '%GALLETA%' AND name NOT LIKE '%COOKIE%'
    `).run();

    return NextResponse.json({ 
      success: true, 
      message: "Limpieza completada. Solo se han mantenido galletas y cookies.",
      deletedCount: result.meta.changes
    });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
