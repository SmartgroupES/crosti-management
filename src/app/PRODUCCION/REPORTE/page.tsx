'use client';

import React from 'react';
import Link from 'next/link';
import { Printer, X } from 'lucide-react';

export default function ProduccionReportePage() {
  const sections = [
    {
      name: 'BOLLERIA',
      products: [
        { name: 'Croissant', prod: 17 },
        { name: 'Pan de chocolate', prod: 10 },
        { name: 'Mini Croissant', prod: 7 },
        { name: 'Mini Pan Chocolate', prod: 17 },
        { name: 'Caracol', prod: 5 },
        { name: 'Brioche Nature pequeña', prod: 1 },
        { name: 'Flat Croissant Pistacho', prod: 2 },
        { name: 'Flat Croissant Lotus', prod: 2 },
        { name: 'Flat Croissant Oreo', prod: 2 },
        { name: 'Crookie', prod: 2 },
      ],
      subtotal: 65
    },
    {
      name: 'SALADO',
      products: [
        { name: 'Mini bocadillo jamón ibérico', prod: 8 },
        { name: 'Mini bocadillo pavo', prod: 6 },
        { name: 'Mini bocadillo jamón y queso', prod: 4 },
        { name: 'Mini Bocadillo de Chorizo', prod: 3 },
        { name: 'Croissant jamón y queso', prod: 7 },
      ],
      subtotal: 51
    }
  ];

  return (
    <div style={{ backgroundColor: '#F3F4F6', minHeight: '100vh', padding: '20px' }}>
      {/* Tool Bar */}
      <div style={{ maxWidth: '1000px', margin: '0 auto 20px auto', display: 'flex', justifyContent: 'center', gap: '10px' }}>
        <button onClick={() => window.print()} style={{ backgroundColor: '#1A1A1A', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '8px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px', cursor: 'pointer' }}>
          <Printer size={16} /> Imprimir / Guardar como PDF
        </button>
        <Link href="/PRODUCCION" style={{ backgroundColor: '#9CA3AF', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '8px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px', textDecoration: 'none' }}>
          <X size={16} /> Cerrar
        </Link>
      </div>

      {/* Sheet */}
      <div style={{ maxWidth: '1000px', margin: '0 auto', backgroundColor: 'white', boxShadow: '0 4px 6px -1px rgba(0, 0, 0, 0.1)', padding: '0' }}>
        {/* Sheet Header */}
        <div style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '15px 30px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '15px' }}>
            <img src="/logo-crosti.jpg" alt="Crosti Logo" style={{ height: '30px', borderRadius: '4px' }} />
            <h1 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>ALCALÁ</h1>
          </div>
          <div style={{ backgroundColor: '#801515', padding: '4px 12px', borderRadius: '4px', fontSize: '12px', fontWeight: 'bold' }}>LUNES 27/04</div>
        </div>

        <div style={{ backgroundColor: '#801515', color: 'white', padding: '8px 30px', textAlign: 'center', fontSize: '12px', fontWeight: 'bold' }}>
          Producción Lunes 27 de abril — S18
        </div>

        {/* Table Content */}
        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '10px' }}>
          <thead>
            <tr style={{ textAlign: 'left', backgroundColor: '#FAF9F6' }}>
              <th style={{ padding: '12px 30px', width: '40%' }}>PRODUCTO</th>
              <th style={{ padding: '12px', textAlign: 'center', backgroundColor: '#F0FDF4', color: '#166534', width: '20%' }}>PRODUCCIÓN<br/><span style={{ fontSize: '8px' }}>LUNES 27/04</span></th>
              <th style={{ padding: '12px', textAlign: 'center', backgroundColor: '#FFFBEB', color: '#801515', width: '20%' }}>INVENTARIO AL CIERRE<br/><span style={{ fontSize: '8px' }}>LUNES 27/04</span></th>
              <th style={{ padding: '12px', textAlign: 'center', width: '20%' }}>NOTAS</th>
            </tr>
          </thead>
          <tbody>
            {sections.map((section, sIdx) => (
              <React.Fragment key={sIdx}>
                <tr style={{ backgroundColor: '#F3F4F6', fontWeight: 'bold' }}>
                  <td colSpan={4} style={{ padding: '8px 30px' }}>{section.name}</td>
                </tr>
                {section.products.map((p, pIdx) => (
                  <tr key={pIdx} style={{ borderBottom: '1px solid #E5E7EB' }}>
                    <td style={{ padding: '10px 30px' }}>{p.name}</td>
                    <td style={{ padding: '10px', textAlign: 'center', fontWeight: 'bold' }}>{p.prod}</td>
                    <td style={{ padding: '10px', borderRight: '1px solid #E5E7EB', borderLeft: '1px solid #E5E7EB' }}></td>
                    <td style={{ padding: '10px' }}></td>
                  </tr>
                ))}
                <tr style={{ backgroundColor: '#F9FAFB', fontWeight: 'bold' }}>
                  <td style={{ padding: '10px 30px' }}>Subtotal {section.name}</td>
                  <td style={{ padding: '10px', textAlign: 'center' }}>{section.subtotal}</td>
                  <td style={{ padding: '10px' }}></td>
                  <td style={{ padding: '10px' }}></td>
                </tr>
              </React.Fragment>
            ))}
          </tbody>
        </table>
      </div>
      
      <style jsx global>{`
        @media print {
          body * { visibility: hidden; }
          .printable, .printable * { visibility: visible; }
          .printable { position: absolute; left: 0; top: 0; width: 100%; }
          button, a { display: none !important; }
        }
      `}</style>
    </div>
  );
}
