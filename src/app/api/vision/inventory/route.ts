import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const GOOGLE_AI_API_KEY = env.GOOGLE_AI_API_KEY;
  const DB = env.DB;
  
  if (!GOOGLE_AI_API_KEY || !DB) {
    return NextResponse.json({ error: "Server configuration missing" }, { status: 500 });
  }

  try {
    const formData = await req.formData();
    const file = formData.get("file") as File;
    const location = formData.get("location") || "RETIRO";
    
    if (!file) {
      return NextResponse.json({ error: "No image provided" }, { status: 400 });
    }

    // Fetch existing products for the AI to use as reference
    const { results: products } = await DB.prepare("SELECT id, name FROM products WHERE is_active = 1").all();
    const productListStr = products.map((p: any) => `- ID ${p.id}: ${p.name}`).join("\n");

    const arrayBuffer = await file.arrayBuffer();
    const base64Data = Buffer.from(arrayBuffer).toString('base64');

    const prompt = `Analiza esta imagen de la vitrina de Crosti Cookies.
    Identifica los productos presentes y cuenta cuántas unidades hay de cada uno.
    
    PRODUCTOS VÁLIDOS EN BASE DE DATOS:
    ${productListStr}

    ESTRUCTURA DE SALIDA (JSON ARRAY):
    [{
      "product_id": 0,
      "name": "Nombre detectado",
      "quantity": 0,
      "confidence": 0.0 // 0-1
    }]

    INSTRUCCIONES:
    1. Si el producto no está en la lista de arriba, ignóralo.
    2. Cuenta con precisión quirúrgica.
    3. Devuelve SOLO el JSON array.`;

    const apiUrl = `https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key=${GOOGLE_AI_API_KEY.trim()}`;
    
    const response = await fetch(apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        contents: [{
          parts: [
            { text: prompt },
            { inlineData: { mimeType: "image/jpeg", data: base64Data } }
          ]
        }]
      })
    });

    const result = await response.json();
    const text = result.candidates?.[0]?.content?.parts?.[0]?.text || "";
    const start = text.indexOf('[');
    const end = text.lastIndexOf(']') + 1;
    if (start === -1 || end === 0) {
      return NextResponse.json({ error: "AI mapping failed", raw: text }, { status: 500 });
    }
    
    const detectedStock = JSON.parse(text.substring(start, end));

    // Update D1
    const updates = detectedStock.map((item: any) => {
      return DB.prepare("UPDATE products SET stock_available = ? WHERE id = ?")
        .bind(item.quantity, item.product_id)
        .run();
    });

    await Promise.all(updates);

    // Log the sync
    await DB.prepare(`
      INSERT INTO vision_logs (location, analysis_json, quality_score, merchandising_score)
      VALUES (?, ?, ?, ?)
    `).bind(location, JSON.stringify(detectedStock), 5, 0.9).run();

    return NextResponse.json({ 
      success: true, 
      updated: detectedStock 
    });

  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
