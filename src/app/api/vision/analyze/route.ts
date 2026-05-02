import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

async function fetchWithRetry(url: string, options: any, maxRetries = 2, initialDelay = 1500) {
  let retryCount = 0;
  while (retryCount <= maxRetries) {
    try {
      const response = await fetch(url, options);
      if (response.ok) return response;
      
      // Retry on 503 (Service Unavailable), 429 (Too Many Requests), or 500 (Internal Server Error from Google)
      if (response.status === 503 || response.status === 429 || response.status === 500) {
        if (retryCount === maxRetries) return response;
        const delay = initialDelay * Math.pow(2, retryCount);
        console.log(`Retrying Google AI after ${delay}ms... (Attempt ${retryCount + 1})`);
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
  
  if (!GOOGLE_AI_API_KEY) {
    return NextResponse.json({ error: "Llave de API no configurada en el servidor" }, { status: 500 });
  }

  try {
    const formData = await req.formData();
    const file = formData.get("file") as File;
    
    if (!file) {
      return NextResponse.json({ error: "No se ha subido ninguna imagen" }, { status: 400 });
    }

    const arrayBuffer = await file.arrayBuffer();
    const base64Data = Buffer.from(arrayBuffer).toString('base64');

    // Fetch valid products from DB to help AI identify them correctly
    let productList = "";
    try {
      const { results } = await env.DB.prepare("SELECT name FROM products WHERE is_active = 1").all();
      productList = results.map((p: any) => p.name).join(", ");
    } catch (e) {
      console.error("Error fetching product list for vision:", e);
    }

    const prompt = `Analiza estas imágenes de la vitrina de Crosti. 
    Usa OCR para leer las etiquetas de precios y nombres. 
    
    PRODUCTOS VÁLIDOS EN SISTEMA:
    ${productList || "No hay lista disponible, usa los nombres que leas"}

    ESTRUCTURA DE SALIDA (JSON ARRAY):
    [{
      "producto": "Nombre del producto (DEBE coincidir con la lista de PRODUCTOS VÁLIDOS si es posible)",
      "categoria": "Bollería|Pastelería|Salados",
      "presentacion": "ej: 3 unidades",
      "precio_unitario": 0.00,
      "precio_pack": 0.00,
      "cantidad_estimada_vitrina": 0,
      "costo_total_vitrina": 0.00
    }]

    INSTRUCCIONES:
    1. Lee los nombres y precios directamente de las etiquetas visibles.
    2. SI EL NOMBRE SE PARECE A UNO DE LA LISTA "PRODUCTOS VÁLIDOS", USA EL NOMBRE EXACTO DE LA LISTA.
    3. Cuenta visualmente cuántas unidades hay de cada uno.
    4. Calcula el costo_total_vitrina como (cantidad_estimada_vitrina * precio_unitario).
    5. Devuelve SOLO el array JSON, sin texto extra.`;

    const models = ["gemini-2.5-flash", "gemini-1.5-flash", "gemini-pro-vision"];
    let lastError = "";
    let response: Response | null = null;

    for (const modelName of models) {
      const apiUrl = `https://generativelanguage.googleapis.com/v1/models/${modelName}:generateContent?key=${GOOGLE_AI_API_KEY.trim()}`;
      
      try {
        response = await fetchWithRetry(apiUrl, {
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

        if (response.ok) break;
        
        lastError = await response.text();
        console.warn(`Model ${modelName} failed:`, lastError);
      } catch (e: any) {
        lastError = e.message;
        console.error(`Error with model ${modelName}:`, e);
      }
    }

    if (!response || !response.ok) {
      return NextResponse.json({ 
        error: "Google AI no disponible tras múltiples intentos", 
        raw: lastError,
        status: response?.status || 500
      }, { status: response?.status || 503 });
    }

    const result = await response.json();
    const text = result.candidates?.[0]?.content?.parts?.[0]?.text || "";
    
    const start = text.indexOf('[');
    const end = text.lastIndexOf(']') + 1;
    if (start === -1 || end === 0) {
      return NextResponse.json({ error: "Formato de respuesta no válido", raw: text }, { status: 500 });
    }
    
    const jsonStr = text.substring(start, end);
    return NextResponse.json(JSON.parse(jsonStr));

  } catch (e: any) {
    console.error("Vision Error:", e);
    return NextResponse.json({ error: "Fallo crítico en el servidor: " + e.message }, { status: 500 });
  }
}

