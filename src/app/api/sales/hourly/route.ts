import { NextRequest, NextResponse } from 'next/server';
import { getRequestContext } from '@cloudflare/next-on-pages';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(request: NextRequest) {
  try {
    const context = getRequestContext() as any;
    const DB = context.env.DB;

    let heatmapDataResults, hourlySalesResults, todayResult, weekResult, monthResult, latestResult;
    let topProductsResults, bottomProductsResults, salesByFamilyResults, monthlyYearlyStatsResults;
    let weeklyStats2026Results, monthlyStatsResults;

    try {
      const heatmapData = await DB.prepare(`
        SELECT 
          strftime('%W', sale_date) as week,
          strftime('%w', sale_date) as day,
          strftime('%H', sale_date) as hour,
          COUNT(*) as quantity,
          SUM(total_amount) as total
        FROM sales
        WHERE sale_date >= date('now', '-30 days')
        GROUP BY week, day, hour
        ORDER BY week DESC, day ASC, hour ASC
      `).all();
      heatmapDataResults = heatmapData.results || [];
    } catch (e: any) { console.error('Heatmap Error:', e); heatmapDataResults = []; }

    try {
      const hourlySales = await DB.prepare(`
        SELECT 
          strftime('%H:00', sale_date) as hour,
          SUM(total_amount) as total
        FROM sales
        WHERE sale_date >= date('now', '-1 day')
        GROUP BY hour
        ORDER BY hour ASC
      `).all();
      hourlySalesResults = hourlySales.results || [];
    } catch (e: any) { console.error('Hourly Error:', e); hourlySalesResults = []; }

    todayResult = await DB.prepare(`SELECT SUM(total_amount) as total FROM sales WHERE date(sale_date) = date('now')`).first();
    weekResult = await DB.prepare(`SELECT SUM(total_amount) as total FROM sales WHERE sale_date >= date('now', '-7 days')`).first();
    monthResult = await DB.prepare(`SELECT SUM(total_amount) as total FROM sales WHERE sale_date >= date('now', 'start of month')`).first();
    latestResult = await DB.prepare(`SELECT SUM(total_amount) as total FROM sales WHERE date(sale_date) = (SELECT MAX(date(sale_date)) FROM sales)`).first();

    try {
      const topProducts = await DB.prepare(`
        SELECT 
          product_name,
          SUM(quantity) as quantity,
          SUM(total_amount) as total
        FROM sales
        WHERE strftime('%Y', sale_date) = '2026'
        GROUP BY product_name
        ORDER BY quantity DESC
        LIMIT 10
      `).all();
      topProductsResults = topProducts.results || [];
    } catch (e: any) { console.error('TopProducts Error:', e); topProductsResults = []; }

    try {
      const bottomProducts = await DB.prepare(`
        SELECT 
          product_name,
          SUM(quantity) as quantity,
          SUM(total_amount) as total
        FROM sales
        WHERE strftime('%Y', sale_date) = '2026'
        GROUP BY product_name
        HAVING quantity > 0
        ORDER BY quantity ASC
        LIMIT 10
      `).all();
      bottomProductsResults = bottomProducts.results || [];
    } catch (e: any) { console.error('BottomProducts Error:', e); bottomProductsResults = []; }

    try {
      const salesByFamily = await DB.prepare(`
        SELECT 
          COALESCE(f.name, 'Sin Categoría') as name,
          SUM(s.total_amount) as value
        FROM sales s
        LEFT JOIN products p ON s.product_name = p.name
        LEFT JOIN product_families f ON p.family_id = f.id
        WHERE strftime('%Y', s.sale_date) = '2026'
        GROUP BY 1
        ORDER BY value DESC
      `).all();
      salesByFamilyResults = salesByFamily.results || [];
    } catch (e: any) { console.error('SalesByFamily Error:', e); salesByFamilyResults = []; }

    try {
      const monthlyYearlyStats = await DB.prepare(`
        SELECT 
          strftime('%Y', sale_date) as year,
          strftime('%m', sale_date) as month,
          SUM(total_amount) as sales
        FROM sales
        GROUP BY year, month
        ORDER BY year DESC, month ASC
      `).all();
      monthlyYearlyStatsResults = monthlyYearlyStats.results || [];
    } catch (e: any) { console.error('MonthlyYearly Error:', e); monthlyYearlyStatsResults = []; }

    try {
      const weeklyStats2026 = await DB.prepare(`
        SELECT 
          strftime('%W', sale_date) as week,
          SUM(total_amount) as sales
        FROM sales
        WHERE strftime('%Y', sale_date) = '2026'
        GROUP BY week
        ORDER BY week ASC
      `).all();
      weeklyStats2026Results = weeklyStats2026.results || [];
    } catch (e: any) { console.error('WeeklyStats Error:', e); weeklyStats2026Results = []; }

    try {
      const monthlyStats = await DB.prepare(`
        SELECT 
          strftime('%Y-%m', sale_date) as month,
          SUM(total_amount) as sales
        FROM sales
        GROUP BY month
        ORDER BY month DESC
        LIMIT 12
      `).all();
      monthlyStatsResults = monthlyStats.results || [];
    } catch (e: any) { console.error('MonthlyStats Error:', e); monthlyStatsResults = []; }

    return NextResponse.json({
      heatmapData: heatmapDataResults,
      hourlySales: hourlySalesResults,
      todaySales: { total: (todayResult?.total || latestResult?.total || 0) },
      weekSales: { total: (weekResult?.total || 0) },
      monthSales: { total: (monthResult?.total || 0) },
      monthlyStats: (monthlyStatsResults || []).reverse(),
      monthlyYearlyStats: monthlyYearlyStatsResults,
      weeklyStats2026: weeklyStats2026Results,
      topProducts: topProductsResults,
      bottomProducts: bottomProductsResults,
      salesByFamily: salesByFamilyResults
    });
  } catch (error: any) {
    console.error('Sales API Fatal Error:', error);
    return NextResponse.json({ error: error.message, todaySales: { total: 0 } }, { status: 500 });
  }
}
