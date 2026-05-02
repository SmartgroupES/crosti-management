import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const location = req.nextUrl.searchParams.get('location');
    const targetDateStr = req.nextUrl.searchParams.get('date');
    
    // Default to tomorrow if no date provided
    const targetDate = targetDateStr ? new Date(targetDateStr) : new Date();
    if (!targetDateStr) targetDate.setDate(targetDate.getDate() + 1);
    
    const targetDateISO = targetDate.toISOString().split('T')[0];
    const dayOfWeek = targetDate.getDay();

    // 1. Get closing stock (proxy for current state)
    const { results: closingStock } = await DB.prepare(`
      SELECT product_id, closing_stock FROM daily_operations ORDER BY date DESC LIMIT 50
    `).all();
    
    // 2. Get Historical Sales for this day of week
    const { results: historicalSales } = await DB.prepare(`
      SELECT 
        product_name,
        AVG(quantity) as avg_sales,
        GROUP_CONCAT(quantity) as raw_quantities
      FROM sales 
      WHERE strftime('%w', sale_date) = ?
      GROUP BY product_name
    `).bind(dayOfWeek.toString()).all();

    // 3. Get Catering Needs for the target date (BakeOS Phase 4)
    let cateringNeeds: any[] = [];
    try {
      const { results } = await DB.prepare(`
        SELECT ci.product_id, SUM(ci.quantity) as total_catering
        FROM catering_items ci
        JOIN catering_orders co ON ci.order_id = co.id
        WHERE co.delivery_date = ? AND co.status != 'cancelled'
        GROUP BY ci.product_id
      `).bind(targetDateISO).all();
      cateringNeeds = results;
    } catch (e) {
      console.warn("Catering tables not found or query failed, skipping catering needs:", e);
    }

    const { results: products } = await DB.prepare("SELECT id, name FROM products WHERE is_active = 1").all();

    const Z_FACTOR = 1.28;

    const predictions = products.map((p: any) => {
      const hist = historicalSales.find((h: any) => h.product_name === p.name);
      const stock = closingStock.find((s: any) => s.product_id === p.id);
      const catering = cateringNeeds.find((c: any) => c.product_id === p.id);
      
      const currentStock = stock?.closing_stock || 0;
      const cateringQuantity = catering?.total_catering || 0;
      let suggested = 0;

      if (hist) {
        const avg = hist.avg_sales || 0;
        const raw = (hist.raw_quantities as string).split(',').map(Number);
        const n = raw.length;
        const mean = raw.reduce((a, b) => a + b, 0) / n;
        const stdDev = Math.sqrt(raw.reduce((a, b) => a + Math.pow(b - mean, 2), 0) / n);
        
        const safetyStock = Z_FACTOR * stdDev;
        const predictedSales = avg + safetyStock;
        
        // Total = Predicted Sales + Catering - Current Stock
        suggested = Math.ceil(predictedSales + cateringQuantity - currentStock);
      } else {
        suggested = 50 + cateringQuantity - currentStock;
      }

      return {
        id: p.id,
        name: p.name,
        avg_historical: hist?.avg_sales || 0,
        catering_needs: cateringQuantity,
        current_stock: currentStock,
        suggested_production: Math.max(0, suggested),
        reason: cateringQuantity > 0 
          ? `Incluye ${cateringQuantity} unidades de pedidos de Catering.` 
          : "Basado en predicción de ventas históricas."
      };
    });

    return NextResponse.json({
      date: targetDateISO,
      dayName: targetDate.toLocaleDateString('es-ES', { weekday: 'long' }),
      location: location || "Todas las sedes",
      predictions
    });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
