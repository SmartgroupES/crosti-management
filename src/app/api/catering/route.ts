import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;

  if (!DB) return NextResponse.json({ error: "DB missing" }, { status: 500 });

  try {
    const { results } = await DB.prepare(`
      SELECT co.*, GROUP_CONCAT(p.name || ' (' || ci.quantity || ')', ', ') as items
      FROM catering_orders co
      LEFT JOIN catering_items ci ON co.id = ci.order_id
      LEFT JOIN products p ON ci.product_id = p.id
      GROUP BY co.id
      ORDER BY co.delivery_date ASC
    `).all();

    return NextResponse.json(results);
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;

  try {
    const body = await req.json();
    const { customer_name, delivery_date, delivery_time, items } = body;

    const { meta } = await DB.prepare(`
      INSERT INTO catering_orders (customer_name, delivery_date, delivery_time)
      VALUES (?, ?, ?)
    `).bind(customer_name, delivery_date, delivery_time).run();

    const orderId = meta.last_row_id;

    // Trigger Notification (BakeOS Phase 4)
    await DB.prepare(`
      INSERT INTO notifications (title, message, type)
      VALUES (?, ?, ?)
    `).bind(
      "Nuevo Pedido de Catering",
      `Se ha recibido un pedido de ${customer_name} para el ${delivery_date}.`,
      "info"
    ).run();

    if (items && items.length > 0) {
      const itemInserts = items.map((item: any) => 
        DB.prepare("INSERT INTO catering_items (order_id, product_id, quantity) VALUES (?, ?, ?)")
          .bind(orderId, item.product_id, item.quantity)
          .run()
      );
      await Promise.all(itemInserts);
    }

    return NextResponse.json({ success: true, orderId });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
