import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  const GOOGLE_AI_API_KEY = env.GOOGLE_AI_API_KEY;

  if (!DB || !GOOGLE_AI_API_KEY) {
    return NextResponse.json({ error: "Missing configuration" }, { status: 500 });
  }

  try {
    // 1. Fetch sales performance data
    const { results: performance } = await DB.prepare(`
      SELECT p.id, p.name, p.v_index, COUNT(s.id) as sales_count 
      FROM products p 
      LEFT JOIN sales s ON p.name = s.product_name 
      WHERE p.is_active = 1
      GROUP BY p.id 
      ORDER BY sales_count DESC
    `).all();

    // 2. Define Zones (Virtual Layout)
    const zones = [
      { id: 'Z1', name: 'Nivel Ojos (Central)', traffic: 'ALTO', cap: 3 },
      { id: 'Z2', name: 'Lado Derecho', traffic: 'MEDIO', cap: 3 },
      { id: 'Z3', name: 'Lado Izquierdo', traffic: 'MEDIO', cap: 3 },
      { id: 'Z4', name: 'Caja / Impulso', traffic: 'MUY ALTO', cap: 2 },
    ];

    // 3. Ask Gemini for Merchandising Insights
    const prompt = `Actúa como un experto en Retail Merchandising para panaderías.
    Tengo estos productos con sus ventas recientes (últimos 30 días):
    ${performance.map((p: any) => `- ${p.name}: ${p.sales_count} ventas (v_index actual: ${p.v_index})`).join('\n')}

    Tengo estas zonas disponibles en mi vitrina:
    ${zones.map(z => `- ${z.id}: ${z.name} (${z.traffic} tráfico)`).join('\n')}

    INSTRUCCIONES:
    1. Sugiere qué producto poner en qué zona para maximizar ventas.
    2. Los productos con más ventas deberían estar en zonas de alto tráfico o nivel de ojos.
    3. Si un producto tiene ventas medias pero es de alto margen (asume las cookies especiales), sugierelo para la Caja (Impulso).
    
    ESTRUCTURA DE SALIDA (JSON):
    {
      "zones": [
        { "id": "Z1", "product": "Nombre", "sales_impact": "+15%", "color": "#EF4444" }
      ],
      "suggestions": [
        { "product": "Nombre", "from": "Zona A", "to": "Zona B", "reason": "Motivo técnico" }
      ]
    }
    Devuelve SOLO el JSON.`;

    const apiUrl = `https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key=${GOOGLE_AI_API_KEY.trim()}`;
    
    const response = await fetch(apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        contents: [{
          parts: [{ text: prompt }]
        }]
      })
    });

    const result = await response.json();
    const text = result.candidates?.[0]?.content?.parts?.[0]?.text || "";
    const start = text.indexOf('{');
    const end = text.lastIndexOf('}') + 1;
    if (start === -1 || end === 0) {
      return NextResponse.json({ error: "AI Insight failed", raw: text }, { status: 500 });
    }
    
    const analysis = JSON.parse(text.substring(start, end));

    return NextResponse.json({
      performance,
      zones: analysis.zones,
      suggestions: analysis.suggestions
    });

  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
