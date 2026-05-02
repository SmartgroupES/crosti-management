import { NextRequest, NextResponse } from "next/server";
import { GoogleGenerativeAI } from "@google/generative-ai";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function POST(req: NextRequest, context: any) {
  const { env } = context;
  const DB = env.DB;
  const genAI = new GoogleGenerativeAI(env.GOOGLE_AI_API_KEY);

  try {
    const { orderId, image } = await req.json();

    // 1. Get Order Items and their Standards
    const { results: items } = await DB.prepare(`
      SELECT p.name, qs.* 
      FROM catering_items ci
      JOIN products p ON ci.product_id = p.id
      LEFT JOIN quality_standards qs ON p.id = qs.product_id
      WHERE ci.order_id = ?
    `).bind(orderId).all();

    if (items.length === 0) return NextResponse.json({ error: "Order not found" }, { status: 404 });

    // 2. Call Gemini for Visual Validation
    const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });
    const prompt = `
      Eres el Inspector de Calidad de BakeOS. 
      Estás validando una CAJA DE CATERING final para el pedido #${orderId}.
      Los productos esperados son: ${items.map((i: any) => i.name).join(", ")}.
      
      Estándares de Calidad:
      ${items.map((i: any) => `- ${i.name}: Diámetro ${i.min_diameter}-${i.max_diameter}cm, Maillard ${i.maillard_target}/5.`).join("\n")}

      Analiza la imagen y determina:
      1. ¿Están todos los productos presentes?
      2. ¿Cumplen con el estándar visual (tueste, tamaño percibido, toppings)?
      3. Calificación final de la caja (1-5).

      Responde en JSON: { 
        "valid": boolean, 
        "score": number, 
        "observations": string,
        "recovery_path": "store_discount" | "tgtg" | "waste",
        "recovery_reason": string 
      }
      Reglas de recuperación:
      - Si score es 3, sugerir "store_discount" (Crunchy Special).
      - Si score es 2, sugerir "tgtg" (TooGoodToGo).
      - Si score es 1, sugerir "waste" (Descarte total).
    `;

    const result = await model.generateContent([
      prompt,
      {
        inlineData: {
          data: image.split(",")[1] || image,
          mimeType: "image/jpeg",
        },
      },
    ]);

    const responseText = result.response.text();
    const cleanJson = responseText.replace(/```json|```/g, "").trim();
    const analysis = JSON.parse(cleanJson);

    // 3. Update Order and Recovery Logic (BakeOS Waste Management)
    if (analysis.valid) {
      await DB.prepare(`
        UPDATE catering_orders 
        SET status = 'ready_to_dispatch', 
            validated_at = CURRENT_TIMESTAMP 
        WHERE id = ?
      `).bind(orderId).run();
    } else {
        // Log Recovery Action
        await DB.prepare(`
          INSERT INTO notifications (title, message, type)
          VALUES (?, ?, ?)
        `).bind(
          "Recuperación de Producto: " + analysis.recovery_path,
          `El pedido #${orderId} fue rechazado. Acción sugerida: ${analysis.recovery_reason}`,
          "warning"
        ).run();
    }

    // Log to vision_logs with recovery info
    await DB.prepare(`
      INSERT INTO vision_logs (analysis_json, quality_score, location)
      VALUES (?, ?, 'Catering Validation')
    `).bind(JSON.stringify(analysis), analysis.score).run();

    return NextResponse.json({ 
      success: true, 
      analysis, 
      status: analysis.valid ? 'ready_to_dispatch' : 'rejected' 
    });

  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
