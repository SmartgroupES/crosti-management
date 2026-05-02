import { NextRequest, NextResponse } from 'next/server';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function GET(req: NextRequest, context: any) {
  const { env } = context;
  const key = env.GOOGLE_AI_API_KEY;
  
  if (!key) {
    return NextResponse.json({ 
      status: "ERROR", 
      message: "La variable GOOGLE_AI_API_KEY no existe en el entorno." 
    });
  }

  return NextResponse.json({ 
    status: "OK", 
    message: "La llave está configurada y visible.",
    prefix: key.substring(0, 7) + "...",
    length: key.length
  });
}
