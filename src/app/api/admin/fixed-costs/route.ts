import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    // 1. Get Fixed Costs
    const { results: fixedCosts } = await DB.prepare("SELECT * FROM fixed_costs").all();

    // 2. Get Real Production Volume (Last 30 days)
    const { results: productionData } = await DB.prepare(`
      SELECT SUM(production_actual) as total_units 
      FROM daily_operations 
      WHERE date >= date('now', '-30 days')
    `).all();

    const totalUnits = productionData[0]?.total_units || 0;

    return NextResponse.json({
      fixedCosts,
      realMonthlyVolume: totalUnits,
      avgDailyVolume: totalUnits / 30
    });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { costs } = await req.json(); // Array of { id, amount }
    
    const statements = costs.map((c: any) => 
      DB.prepare("UPDATE fixed_costs SET amount = ? WHERE id = ?").bind(c.amount, c.id)
    );

    await DB.batch(statements);
    return NextResponse.json({ success: true });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
