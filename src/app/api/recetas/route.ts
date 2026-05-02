import { NextRequest, NextResponse } from 'next/server';
import { getRequestContext } from '@cloudflare/next-on-pages';
import recetasData from '@/lib/recetas.json';

export const dynamic = 'force-dynamic';
export const runtime = 'edge';

export async function GET() {
  try {
    const context = getRequestContext() as any;
    const DB = context.env.DB;

    // 1. Fetch activation status from DB
    const statusResult = await DB.prepare('SELECT * FROM recipe_status').all();
    const statusMap = (statusResult.results || []).reduce((acc: any, curr: any) => {
      acc[curr.recipe_name] = curr.is_active === 1;
      return acc;
    }, {});

    return NextResponse.json({
      ...recetasData,
      statusMap
    });
  } catch (error: any) {
    console.error('Error cargando recetas:', error);
    return NextResponse.json({ error: 'Error al cargar las recetas' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const context = getRequestContext() as any;
    const DB = context.env.DB;

    if (body.bulk && body.statusMap) {
      // Bulk update
      const updates = Object.entries(body.statusMap).map(([id, active]) => {
        return DB.prepare(`
          INSERT INTO recipe_status (recipe_name, is_active) 
          VALUES (?, ?)
          ON CONFLICT(recipe_name) DO UPDATE SET is_active = excluded.is_active
        `).bind(id, active ? 1 : 0);
      });
      await DB.batch(updates);
    } else {
      const { id, active } = body;
      await DB.prepare(`
        INSERT INTO recipe_status (recipe_name, is_active) 
        VALUES (?, ?)
        ON CONFLICT(recipe_name) DO UPDATE SET is_active = excluded.is_active
      `).bind(id, active ? 1 : 0).run();
    }

    return NextResponse.json({ success: true });
  } catch (error: any) {
    console.error('Error actualizando estado de receta:', error);
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
