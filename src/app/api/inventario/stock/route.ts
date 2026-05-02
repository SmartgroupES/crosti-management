import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    // 1. Get Top 10 Ingredients with advanced metrics
    const materials = await DB.prepare(`
      SELECT 
        id, 
        name, 
        current_stock, 
        min_stock_alert as security_stock,
        unit,
        category,
        date(sale_date, '+5 days') as next_delivery -- Simulated delivery date
      FROM raw_materials
      CROSS JOIN (SELECT MAX(sale_date) as sale_date FROM sales) -- Use last sale date as reference
      ORDER BY current_stock ASC
      LIMIT 10
    `).all();

    // 2. Intelligent Shopping List Logic (based on 3-month usage)
    // We'll simulate usage based on sales if we had the relationship, 
    // but for now we'll use the stock level < 15% rule.
    const shoppingList = materials.results.map((m: any) => {
      const stockPercent = (m.current_stock / (m.security_stock * 5)) * 100; // Simulated capacity
      const isCritical = m.current_stock < m.security_stock || (m.name.toLowerCase().includes('harina') && stockPercent < 15) || (m.name.toLowerCase().includes('chocolate') && stockPercent < 15);
      
      return {
        ...m,
        stockPercent,
        isCritical,
        recommendedOrder: isCritical ? Math.round(m.security_stock * 3) : 0
      };
    });

    return NextResponse.json({
      stock: shoppingList,
      alerts: shoppingList.filter((i: any) => i.isCritical)
    });

  } catch (e: any) {
    console.error("Stock API Error:", e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
