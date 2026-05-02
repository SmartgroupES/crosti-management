import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;

  if (!DB) return NextResponse.json({ error: "DB missing" }, { status: 500 });

  try {
    // 1. Fetch products with shelf life info
    // 2. Fetch latest vision scans
    // Logic: Identify products that have been in the vitrine longer than their shelf_life_hours
    const { results: products } = await DB.prepare(`
      SELECT id, name, shelf_life_hours 
      FROM products 
      WHERE shelf_life_hours IS NOT NULL AND is_active = 1
    `).all();

    const alerts = products.map((p: any) => {
        // Simulation: For now, we'll return a mock "Freshness" status
        // In a real scenario, we'd query vision_logs for the first timestamp of this 'batch'
        const hoursLeft = Math.floor(Math.random() * (p.shelf_life_hours || 24));
        const percentage = Math.round((hoursLeft / (p.shelf_life_hours || 24)) * 100);
        
        return {
            id: p.id,
            name: p.name,
            hours_left: hoursLeft,
            freshness_percentage: percentage,
            status: percentage < 20 ? 'CRITICAL' : percentage < 50 ? 'WARNING' : 'OK'
        };
    });

    return NextResponse.json(alerts);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
