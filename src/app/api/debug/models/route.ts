import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const key = env.GOOGLE_AI_API_KEY;
  
  if (!key) return NextResponse.json({ error: "No key" });

  try {
    const res = await fetch(`https://generativelanguage.googleapis.com/v1/models?key=${key}`);
    const data = await res.json();
    return NextResponse.json(data);
  } catch (e: any) {
    return NextResponse.json({ error: e.message });
  }
}
