import { GoogleGenerativeAI } from "@google/generative-ai";
import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

async function withRetry<T>(fn: () => Promise<T>, maxRetries = 2, initialDelay = 1500): Promise<T> {
  let retryCount = 0;
  while (retryCount <= maxRetries) {
    try {
      return await fn();
    } catch (error: any) {
      const isRetryable = error.message?.includes('503') || error.message?.includes('429') || error.message?.includes('500');
      if (retryCount === maxRetries || !isRetryable) throw error;
      
      const delay = initialDelay * Math.pow(2, retryCount);
      console.log(`Retrying AI Vision after ${delay}ms... (Attempt ${retryCount + 1})`);
      await new Promise(resolve => setTimeout(resolve, delay));
      retryCount++;
    }
  }
  throw new Error("Max retries reached");
}

export async function POST(req: NextRequest, context: any) {
  const { GOOGLE_AI_API_KEY } = context.env;
  
  if (!GOOGLE_AI_API_KEY) {
    return NextResponse.json({ error: "Google AI API Key not found in environment" }, { status: 500 });
  }

  const genAI = new GoogleGenerativeAI(GOOGLE_AI_API_KEY);
  const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

  try {
    const formData = await req.formData();
    const file = formData.get("file") as File;
    
    if (!file) {
      return NextResponse.json({ error: "No image file provided" }, { status: 400 });
    }

    const arrayBuffer = await file.arrayBuffer();
    const base64Data = btoa(
      new Uint8Array(arrayBuffer).reduce((data, byte) => data + String.fromCharCode(byte), "")
    );

    const prompt = `Analyze this purchase invoice/receipt. Extract the following information:
    1. Supplier name (best match)
    2. Date of invoice (YYYY-MM-DD)
    3. Total amount paid
    4. List of items purchased, for each item:
       - Name of the material/product
       - Quantity
       - Total cost for that item
    
    Return ONLY a JSON object with this structure:
    {
      "supplier": "Name",
      "date": "YYYY-MM-DD",
      "total": 0.00,
      "items": [
        {"name": "Item Name", "quantity": 0.00, "cost": 0.00}
      ]
    }
    Important: If you see multiple items, list them all. Use Spanish for item names if possible.`;

    const result = await withRetry(() => model.generateContent([
      prompt,
      {
        inlineData: {
          data: base64Data,
          mimeType: file.type,
        },
      },
    ]));

    const text = result.response.text();
    const startObj = text.indexOf('{');
    const startArr = text.indexOf('[');
    const start = (startObj !== -1 && startArr !== -1) ? Math.min(startObj, startArr) : (startObj !== -1 ? startObj : startArr);
    
    const endObj = text.lastIndexOf('}') + 1;
    const endArr = text.lastIndexOf(']') + 1;
    const end = Math.max(endObj, endArr);

    if (start === -1 || end === 0) {
      return NextResponse.json({ error: "Could not parse AI response", raw: text }, { status: 500 });
    }
    
    const json = JSON.parse(text.substring(start, end));
    return NextResponse.json(json);

  } catch (e: any) {
    console.error("AI Vision Invoice Error:", e);
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}

