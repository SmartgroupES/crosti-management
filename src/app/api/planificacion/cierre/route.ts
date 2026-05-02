import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  
  if (!DB) return NextResponse.json({ error: "DB not found" }, { status: 500 });

  try {
    const { inventory, location } = await req.json();
    const date = new Date().toISOString().split('T')[0];

    // Fetch all products to map names to IDs
    const { results: products } = await DB.prepare("SELECT id, name FROM products").all();
    const productMap = new Map();
    products.forEach((p: any) => {
      productMap.set(p.name.toLowerCase(), p.id);
    });

    const statements = [];

    for (const item of inventory) {
      // Resolve ID: if it's not a number, try to find it by name
      let productId = parseInt(item.id);
      
      if (isNaN(productId)) {
        // Try exact match (case insensitive)
        productId = productMap.get(item.name?.toLowerCase());
        
        // Fallback: search by name in the map if item.id was the name
        if (!productId && item.id) {
          productId = productMap.get(item.id.toLowerCase());
        }

        // Second fallback: simple plural/singular matching
        if (!productId && item.name) {
          const name = item.name.toLowerCase();
          if (name.endsWith('s')) {
            productId = productMap.get(name.slice(0, -1));
          } else {
            productId = productMap.get(name + 's');
          }
        }
      }

      if (!productId) {
        console.warn(`Product not found in DB: ${item.name || item.id}. Skipping to avoid FK error.`);
        continue;
      }

      statements.push(
        DB.prepare(`
          INSERT INTO daily_operations (date, product_id, location, closing_stock, waste_units) 
          VALUES (?, ?, ?, ?, ?)
          ON CONFLICT(date, product_id, location) DO UPDATE SET 
            closing_stock = excluded.closing_stock,
            waste_units = excluded.waste_units
        `).bind(date, productId, location || 'General', item.closing, item.waste)
      );
    }

    if (statements.length > 0) {
      await DB.batch(statements);
    }

    return NextResponse.json({ success: true, processed: statements.length });
  } catch (e: any) {
    console.error(e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
