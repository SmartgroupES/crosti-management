import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

async function fetchWithRetry(url: string, options: any, maxRetries = 2, initialDelay = 1500) {
  let retryCount = 0;
  while (retryCount <= maxRetries) {
    try {
      const response = await fetch(url, options);
      if (response.ok) return response;
      if (response.status === 503 || response.status === 429 || response.status === 500) {
        if (retryCount === maxRetries) return response;
        const delay = initialDelay * Math.pow(2, retryCount);
        await new Promise(resolve => setTimeout(resolve, delay));
        retryCount++;
      } else {
        return response;
      }
    } catch (error) {
      if (retryCount === maxRetries) throw error;
      const delay = initialDelay * Math.pow(2, retryCount);
      await new Promise(resolve => setTimeout(resolve, delay));
      retryCount++;
    }
  }
  throw new Error("Max retries reached");
}

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const GOOGLE_AI_API_KEY = env.GOOGLE_AI_API_KEY;
  const DB = env.DB;
  
  if (!GOOGLE_AI_API_KEY) {
    return NextResponse.json({ error: "API Key missing" }, { status: 500 });
  }

  try {
    const formData = await req.formData();
    const file = formData.get("file") as File;
    const productType = formData.get("productType") || "COOKIES";
    const location = formData.get("location") || "RETIRO";
    
    if (!file) {
      return NextResponse.json({ error: "No image provided" }, { status: 400 });
    }

    const arrayBuffer = await file.arrayBuffer();
    const base64Data = Buffer.from(arrayBuffer).toString('base64');

    const prompt = `Analiza esta imagen de productos de panadería (Crosti Cookies). 
    Tipo de Producto: ${productType}.
    
    CRITERIOS BAKEOS:
    1. Si es COOKIE: Valida diámetro (objetivo 10cm), distribución de toppings y punto Maillard (tueste).
    2. Si es ENSALADA: Detección de oxidación (vibrancia verde) y turgencia.
    3. Si es SALADO: Punto de tueste y simetría.
    
    ESTRUCTURA DE SALIDA (JSON):
    {
      "score": 0.0, // 1-5
      "maillard": 0, // 1-5
      "diameter": "0.0cm",
      "status": "GOLD STANDARD|ACCEPTABLE|REJECT",
      "observations": "Breve descripción de hallazgos"
    }

    Devuelve SOLO el JSON.`;

    const apiUrl = `https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key=${GOOGLE_AI_API_KEY.trim()}`;
    
    const response = await fetchWithRetry(apiUrl, {
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

    if (!response.ok) {
      return NextResponse.json({ error: "AI Analysis failed" }, { status: response.status });
    }

    const result = await response.json();
    const text = result.candidates?.[0]?.content?.parts?.[0]?.text || "";
    const start = text.indexOf('{');
    const end = text.lastIndexOf('}') + 1;
    if (start === -1 || end === 0) {
      return NextResponse.json({ error: "Invalid AI response format" }, { status: 500 });
    }
    
    const analysis = JSON.parse(text.substring(start, end));

    // Save to D1
    if (DB) {
      await DB.prepare(`
        INSERT INTO vision_logs (location, analysis_json, quality_score)
        VALUES (?, ?, ?)
      `).bind(location, JSON.stringify(analysis), Math.round(analysis.score)).run();
    }

    return NextResponse.json(analysis);

  } catch (e: any) {
    console.error("Quality Vision Error:", e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
