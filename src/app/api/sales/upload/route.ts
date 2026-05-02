import { NextRequest, NextResponse } from 'next/server';
import * as XLSX from 'xlsx';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  const { DB } = context.env;
  if (!DB) return NextResponse.json({ error: "Base de datos no disponible" }, { status: 500 });

  const formData = await req.formData();
  const file = formData.get('file') as File;

  if (!file) return NextResponse.json({ error: "No hay archivo" }, { status: 400 });

  try {
    const buffer = await file.arrayBuffer();
    const workbook = XLSX.read(buffer);
    const data: any[] = XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]]);

    if (data.length === 0) return NextResponse.json({ error: "El archivo está vacío" }, { status: 400 });

    const statements = [];
    for (const row of data) {
      // 1. Save to main sales table
      statements.push(
        DB.prepare("INSERT INTO sales (total_amount, sale_date, product_name, quantity, ticket_number) VALUES (?, ?, ?, ?, ?)")
          .bind(
            row.precio_total || row.total || 0, 
            row.fecha || new Date().toISOString(), 
            row.producto || row.name || 'Desconocido', 
            row.cantidad || row.qty || 1, 
            row.ticket || `EXCEL-${Date.now()}`
          )
      );

      // 2. Save to analytics sales_data table if hour is present
      // Support columns: hora, hour, Hour, HORA
      const hour = row.hora !== undefined ? row.hora : (row.hour !== undefined ? row.hour : (row.Hour !== undefined ? row.Hour : row.HORA));
      
      if (hour !== undefined || row.fecha) {
        statements.push(
          DB.prepare("INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) VALUES (?, ?, ?, ?, ?)")
            .bind(
              row.fecha || new Date().toISOString().split('T')[0],
              row.producto || row.name || 'Desconocido',
              row.cantidad || row.qty || 1,
              row.precio_total || row.total || 0,
              hour !== undefined ? parseInt(hour) : 0
            )
        );
      }
    }

    await DB.batch(statements);
    return NextResponse.json({ success: true, count: data.length, message: `Se han procesado ${data.length} registros con éxito.` });
  } catch (e: any) {
    console.error("Upload Error:", e);
    return NextResponse.json({ error: "Error procesando el archivo: " + e.message }, { status: 500 });
  }
}

