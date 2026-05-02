import { NextRequest, NextResponse } from "next/server";
import { GoogleGenerativeAI } from "@google/generative-ai";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  const genAI = new GoogleGenerativeAI(env.GOOGLE_AI_API_KEY);

  try {
    const { productName, category, images } = await req.json(); // images: array of base64

    // 1. Call Gemini to "Learn" the Standard
    const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });
    const prompt = `
      Eres el Ingeniero de Onboarding de BakeOS. 
      Un nuevo cliente está configurando su estándar de calidad para el producto: "${productName}" (Categoría: ${category}).
      
      He adjuntado fotos de lo que el cliente considera su "GOLD STANDARD" (el producto perfecto).
      
      Analiza las fotos y extrae los parámetros técnicos para el control de calidad automático:
      1. Diámetro promedio (o tamaño relativo en cm si puedes estimar, sino usa una escala 1-10).
      2. Nivel de Maillard (Tueste) objetivo en escala 1-5.
      3. Densidad de toppings/acabado (0-100%).
      4. Una descripción breve de qué define la perfección para este producto.

      Responde en JSON: { 
        "min_diameter": number, 
        "max_diameter": number, 
        "maillard_target": number, 
        "topping_density": number,
        "description": string 
      }
    `;

    // Send the first few images to learn
    const imageParts = images.slice(0, 3).map((img: string) => ({
      inlineData: {
        data: img.split(",")[1] || img,
        mimeType: "image/jpeg",
      },
    }));

    const result = await model.generateContent([prompt, ...imageParts]);
    const responseText = result.response.text();
    const cleanJson = responseText.replace(/```json|```/g, "").trim();
    const standards = JSON.parse(cleanJson);

    // 2. Create Product and Standards in DB
    // First, find or create the family
    let { results: families } = await DB.prepare("SELECT id FROM product_families WHERE name = ?").bind(category).all();
    let familyId = families[0]?.id;
    
    if (!familyId) {
        const meta = await DB.prepare("INSERT INTO product_families (name) VALUES (?)").bind(category).run();
        familyId = (meta as any).last_row_id;
    }

    // Create the product
    const prodMeta = await DB.prepare("INSERT INTO products (name, family_id, sale_price) VALUES (?, ?, 0)").bind(productName, familyId).run();
    const productId = (prodMeta as any).last_row_id;

    // Save standards
    await DB.prepare(`
      INSERT INTO quality_standards (product_id, min_diameter, max_diameter, maillard_target, topping_density)
      VALUES (?, ?, ?, ?, ?)
    `).bind(
      productId, 
      standards.min_diameter, 
      standards.max_diameter, 
      standards.maillard_target, 
      standards.topping_density
    ).run();

    return NextResponse.json({ 
      success: true, 
      productId, 
      standards,
      message: `BakeOS ha aprendido el estándar de ${productName} con éxito.`
    });

  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
