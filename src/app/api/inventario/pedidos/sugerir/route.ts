import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    // 1. Get current stock and supplier info
    const { results: materials } = await DB.prepare(`
      SELECT 
        rm.id, 
        rm.name, 
        rm.current_stock, 
        rm.unit_measure, 
        rm.min_stock_alert, 
        rm.average_cost_per_unit,
        rm.preferred_supplier_id,
        s.name as supplier_name
      FROM raw_materials rm
      LEFT JOIN suppliers s ON rm.preferred_supplier_id = s.id
    `).all();

    // 2. Get requirements for next 7 days from approved plans
    const today = new Date().toISOString().split('T')[0];
    const nextWeek = new Date();
    nextWeek.setDate(nextWeek.getDate() + 7);
    const nextWeekStr = nextWeek.toISOString().split('T')[0];

    const { results: plans } = await DB.prepare(`
      SELECT pp.product_id, pp.approved_quantity, r.material_id, r.quantity_needed
      FROM production_plans pp
      JOIN recipes r ON pp.product_id = r.product_id
      WHERE pp.plan_date BETWEEN ? AND ? AND pp.status = 'approved'
    `).bind(today, nextWeekStr).all();

    // 3. Aggregate requirements
    const requirements: Record<number, number> = {};
    plans.forEach((p: any) => {
      requirements[p.material_id] = (requirements[p.material_id] || 0) + (p.approved_quantity * p.quantity_needed);
    });

    // 4. Calculate gaps and group by supplier
    const suggestedOrders: Record<number, any> = {};

    materials.forEach((m: any) => {
      const neededForProduction = requirements[m.id] || 0;
      const totalNeeded = neededForProduction + (m.min_stock_alert || 0);
      const gap = totalNeeded - m.current_stock;

      if (gap > 0) {
        const supplierId = m.preferred_supplier_id || 0; // 0 for "No assigned supplier"
        if (!suggestedOrders[supplierId]) {
          suggestedOrders[supplierId] = {
            supplierId,
            supplierName: m.supplier_name || "Sin proveedor asignado",
            items: []
          };
        }

        suggestedOrders[supplierId].items.push({
          materialId: m.id,
          name: m.name,
          currentStock: m.current_stock,
          neededForProduction,
          minStockSafety: m.min_stock_alert,
          suggestedQty: Math.ceil(gap * 1.1), // 10% safety margin
          unit: m.unit_measure,
          estimatedCost: m.average_cost_per_unit
        });
      }
    });

    return NextResponse.json(Object.values(suggestedOrders));
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
