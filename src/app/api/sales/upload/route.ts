import { NextRequest, NextResponse } from 'next/server';
import * as XLSX from 'xlsx';

export const runtime = 'edge';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  const formData = await req.formData();
  const file = formData.get('file') as File;

  if (!file) return NextResponse.json({ error: "No hay archivo" }, { status: 400 });

  try {
    const buffer = await file.arrayBuffer();
    const workbook = XLSX.read(buffer);
    const data: any[] = XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]]);

    const statements = [];
    for (const row of data) {
      statements.push(
        DB.prepare("INSERT INTO sales (total_amount, sale_date, ticket_number) VALUES (?, ?, ?)")
          .bind(row.precio_total, row.fecha, `EXCEL-${Date.now()}`)
      );
    }

    await DB.batch(statements);
    return NextResponse.json({ success: true, count: data.length });
  } catch (e: any) {
    return NextResponse.json({ error: e.message }, { status: 500 });
  }
}
