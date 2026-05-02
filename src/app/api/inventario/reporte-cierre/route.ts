import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  const location = req.nextUrl.searchParams.get('location');
  const date = req.nextUrl.searchParams.get('date') || new Date().toISOString().split('T')[0];

  try {
    let query = `
      SELECT 
        p.id,
        p.name,
        p.price,
        do.production_planned,
        do.closing_stock,
        do.waste_units,
        (do.production_planned - do.closing_stock - do.waste_units) as calculated_sales
      FROM products p
      LEFT JOIN daily_operations do ON p.id = do.product_id AND do.date = ?
    `;
    const params: any[] = [date];

    if (location) {
      query += ` AND do.location = ?`;
      params.push(location);
    }

    const { results: report } = await DB.prepare(query).bind(...params).all();

    const summary = report.reduce((acc: any, curr: any) => {
      acc.totalSales += (curr.calculated_sales || 0) * (curr.price || 0);
      acc.totalWaste += (curr.waste_units || 0);
      acc.unitsSold += (curr.calculated_sales || 0);
      return acc;
    }, { totalSales: 0, totalWaste: 0, unitsSold: 0 });

    return NextResponse.json({
      date,
      location: location || "General",
      results: report,
      summary
    });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
