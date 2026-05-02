import { NextRequest, NextResponse } from 'next/server';
import * as XLSX from 'xlsx';
import { jsPDF } from 'jspdf';
import 'jspdf-autotable';

// Definir tipos para jsPDF con autotable
interface jsPDFWithAutoTable extends jsPDF {
  autoTable: (options: any) => jsPDF;
}

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest, context: any) {
  try {
    const { format, data, type, location } = await req.json();

    if (!data || !Array.isArray(data)) {
      return NextResponse.json({ error: 'Invalid data provided' }, { status: 400 });
    }

    const date = new Date().toISOString().split('T')[0];
    const locName = location || 'General';
    const baseFilename = `${type || 'Reporte'}_Crosti_${locName}_${date}`;

    if (format === 'xlsx') {
      const worksheet = XLSX.utils.json_to_sheet(data);
      const workbook = XLSX.utils.book_new();
      XLSX.utils.book_append_sheet(workbook, worksheet, 'Data');
      
      const buffer = XLSX.write(workbook, { type: 'buffer', bookType: 'xlsx' });
      
      return new NextResponse(buffer, {
        headers: {
          'Content-Type': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
          'Content-Disposition': `attachment; filename="${baseFilename}.xlsx"`,
        },
      });
    }

    if (format === 'pdf') {
      const doc = new jsPDF() as jsPDFWithAutoTable;
      
      // Header
      doc.setFontSize(20);
      doc.setTextColor(128, 21, 21); // Crosti Burgundy
      doc.text(`Crosti Hub - ${type || 'Reporte'}`, 14, 22);
      
      doc.setFontSize(10);
      doc.setTextColor(100);
      doc.text(`Local: ${locName} | Fecha: ${date}`, 14, 30);
      doc.text('Generado por BakeOS Management Suite', 14, 35);

      // Table
      const headers = Object.keys(data[0] || {});
      const rows = data.map((item: any) => Object.values(item));

      doc.autoTable({
        head: [headers],
        body: rows,
        startY: 45,
        styles: { fontSize: 8, cellPadding: 3 },
        headStyles: { fillStyle: 'f', fillColor: [128, 21, 21], textColor: [255, 255, 255] },
        alternateRowStyles: { fillColor: [245, 245, 245] },
      });

      const pdfBuffer = doc.output('arraybuffer');

      return new NextResponse(pdfBuffer, {
        headers: {
          'Content-Type': 'application/pdf',
          'Content-Disposition': `attachment; filename="${baseFilename}.pdf"`,
        },
      });
    }

    return NextResponse.json({ error: 'Unsupported format' }, { status: 400 });

  } catch (error: any) {
    console.error('Export Error:', error);
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
