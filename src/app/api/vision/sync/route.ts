import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;

  if (!DB) {
    return NextResponse.json({ error: "Database not found" }, { status: 500 });
  }

  try {
    // 1. Fetch current stock for all active products
    const { results: products } = await DB.prepare(`
      SELECT id, name, stock_available 
      FROM products 
      WHERE is_active = 1
    `).all();

    // 2. Simulate API Calls to Platforms
    // In a real scenario, this would loop through Glovo, Uber, etc.
    const platforms = ["Glovo", "Uber Eats", "Just Eat"];
    const syncReport = platforms.map(platform => ({
      platform,
      status: "SUCCESS",
      items_synced: products.length,
      timestamp: new Date().toISOString()
    }));

    // 3. Logic: If stock < 3, flag as "Low Stock" in sync
    const lowStockItems = products.filter((p: any) => p.stock_available < 3);

    return NextResponse.json({
      success: true,
      report: syncReport,
      stock_snapshot: products,
      alerts: lowStockItems.map((p: any) => `Low stock for ${p.name}: Syncing as 'Paused' if needed.`)
    });

  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
