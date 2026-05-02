'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { ChevronDown, Download, BarChart3, Printer, CheckCircle2 } from 'lucide-react';

export default function ProduccionPage() {
  const [selectedStore, setSelectedStore] = useState('ALCALÁ');
  const [activeCategory, setActiveCategory] = useState('BOLLERIA');

  const stores = [
    'TODOS CONSOLIDADO', 'ALCALÁ', 'RETIRO', 'BERNABÉU', 'FERNANDO VI', 'JORGE JUAN', 'PICASSO', 'PRINCESA', 'QUEVEDO', 'VELAZQUEZ', 'ZURBANO'
  ];

  const categories = ['BOLLERIA', 'SALADO', 'PAN', 'DIARIO', 'PLATOS CALIENTES'];

  const products = [
    { name: 'Croissant', l: 42, m: 30, x: 85, j: 25, v: 33, s: 34, d: 36, total: 285 },
    { name: 'Pan de chocolate', l: 16, m: 17, x: 15, j: 15, v: 14, s: 16, d: 14, total: 107 },
    { name: 'Mini Croissant', l: 12, m: 13, x: 16, j: 13, v: 10, s: 13, d: 14, total: 91 },
    { name: 'Mini Pan Chocolate', l: 20, m: 24, x: 16, j: 14, v: 14, s: 17, d: 10, total: 115 },
    { name: 'Caracol', l: 5, m: 7, x: 9, j: 7, v: 6, s: 6, d: 7, total: 47 },
  ];

  return (
    <div style={{ backgroundColor: '#1A1A1A', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '20px 40px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid #333' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
          <Link href="/">
            <img src="/logo-crosti.jpg" alt="Crosti Logo" style={{ height: '40px', borderRadius: '8px' }} />
          </Link>
          <span style={{ color: '#801515', fontSize: '12px', fontWeight: 'bold' }}>PLANIFICACIÓN DE PRODUCCIÓN</span>
        </div>
        
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
          <div style={{ backgroundColor: 'white', padding: '8px 20px', borderRadius: '8px', fontSize: '14px', display: 'flex', alignItems: 'center', gap: '12px', cursor: 'pointer' }}>
            S17 (20 de abril - 26 de abril) <ChevronDown size={16} />
          </div>
          <div style={{ color: 'white', fontSize: '12px', fontWeight: 'bold' }}>BORRADOR</div>
          <Link href="/CONSULTA/ventas" style={{ backgroundColor: '#451a03', color: '#801515', padding: '8px 16px', borderRadius: '8px', fontSize: '12px', fontWeight: 'bold', textDecoration: 'none', border: '1px solid #801515', display: 'flex', alignItems: 'center', gap: '6px' }}>
            <BarChart3 size={14} /> Consulta Pre-Planificación
          </Link>
          <button style={{ backgroundColor: '#801515', color: 'white', border: 'none', padding: '8px 16px', borderRadius: '8px', fontSize: '12px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '6px', cursor: 'pointer' }}>
            <Download size={14} /> DESCARGAR REPORTES
          </button>
          <Link href="/PRODUCCION/reporte" style={{ backgroundColor: '#166534', color: 'white', border: 'none', padding: '8px 16px', borderRadius: '8px', fontSize: '12px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '6px', textDecoration: 'none' }}>
            <CheckCircle2 size={14} /> PRODUCCIÓN LUNES 27/04
          </Link>
        </div>
      </header>

      <div style={{ display: 'flex' }}>
        {/* Sidebar */}
        <aside style={{ width: '250px', padding: '20px', borderRight: '1px solid #333' }}>
          <h4 style={{ color: '#9CA3AF', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase', marginBottom: '20px' }}>Tiendas</h4>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            {stores.map(store => (
              <button 
                key={store}
                onClick={() => setSelectedStore(store)}
                style={{
                  textAlign: 'left',
                  padding: '12px 16px',
                  borderRadius: '8px',
                  border: 'none',
                  fontSize: '11px',
                  fontWeight: 'bold',
                  cursor: 'pointer',
                  backgroundColor: selectedStore === store ? '#801515' : 'transparent',
                  color: selectedStore === store ? 'white' : '#9CA3AF',
                }}
              >
                {store}
                {store !== 'TODOS CONSOLIDADO' && <div style={{ fontSize: '9px', opacity: 0.7, fontWeight: 'normal' }}>OBRADOR</div>}
              </button>
            ))}
          </div>
        </aside>

        {/* Main Area */}
        <main style={{ flex: 1, backgroundColor: 'white', padding: '40px' }}>
          <div style={{ marginBottom: '30px' }}>
            <h2 style={{ fontSize: '24px', fontWeight: '900', margin: '0 0 4px 0' }}>{selectedStore}</h2>
            <p style={{ color: '#9CA3AF', fontSize: '12px', margin: 0 }}>OBRADOR</p>
          </div>

          <div style={{ display: 'flex', borderBottom: '1px solid #E5E7EB', marginBottom: '30px', gap: '30px' }}>
            {categories.map(cat => (
              <button
                key={cat}
                onClick={() => setActiveCategory(cat)}
                style={{
                  padding: '12px 0',
                  border: 'none',
                  backgroundColor: 'transparent',
                  fontSize: '13px',
                  fontWeight: 'bold',
                  color: activeCategory === cat ? '#801515' : '#9CA3AF',
                  borderBottom: activeCategory === cat ? '3px solid #801515' : 'none',
                  cursor: 'pointer'
                }}
              >
                {cat}
              </button>
            ))}
          </div>

          <div style={{ backgroundColor: '#F9FAFB', padding: '20px', borderRadius: '12px', border: '1px solid #E5E7EB' }}>
            <h3 style={{ fontSize: '14px', fontWeight: 'bold', marginBottom: '20px' }}>{selectedStore} PRODUCCIÓN 20 DE ABRIL AL 26 DE ABRIL 2026</h3>
            <h4 style={{ fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase', color: '#1A1A1A', marginBottom: '16px' }}>{activeCategory}</h4>

            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '11px' }}>
              <thead>
                <tr style={{ backgroundColor: '#1A1A1A', color: 'white' }}>
                  <th style={{ padding: '12px', textAlign: 'left' }}>PRODUCTO</th>
                  <th style={{ padding: '12px', backgroundColor: '#DBEAFE', color: '#1E40AF' }}>OBR. L-V</th>
                  <th style={{ padding: '12px', backgroundColor: '#FEF3C7', color: '#92400E' }}>OBR. S-D</th>
                  <th style={{ padding: '12px' }}>L</th>
                  <th style={{ padding: '12px' }}>M 📦</th>
                  <th style={{ padding: '12px' }}>X 📦</th>
                  <th style={{ padding: '12px' }}>J</th>
                  <th style={{ padding: '12px' }}>V</th>
                  <th style={{ padding: '12px' }}>S</th>
                  <th style={{ padding: '12px' }}>D</th>
                  <th style={{ padding: '12px' }}>TOTAL</th>
                </tr>
              </thead>
              <tbody>
                <tr style={{ backgroundColor: '#FAF9F6' }}>
                  <td colSpan={11} style={{ padding: '6px 12px', borderBottom: '1px solid #E5E7EB', fontSize: '10px', color: '#666', fontWeight: 'bold' }}>—— CROISSANTS ——</td>
                </tr>
                {products.map((p, idx) => (
                  <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                    <td style={{ padding: '12px' }}>{p.name}</td>
                    <td style={{ padding: '12px', textAlign: 'center', backgroundColor: '#F0F9FF', color: '#0369A1', fontWeight: 'bold' }}>{selectedStore}</td>
                    <td style={{ padding: '12px', textAlign: 'center', backgroundColor: '#FFFBEB', color: '#801515', fontWeight: 'bold' }}>{selectedStore}</td>
                    <td style={{ padding: '12px', textAlign: 'center' }}>{p.l}</td>
                    <td style={{ padding: '12px', textAlign: 'center', backgroundColor: '#F0FDF4', color: '#166534', fontWeight: 'bold' }}>{p.m}</td>
                    <td style={{ padding: '12px', textAlign: 'center', backgroundColor: '#F0FDF4', color: '#166534', fontWeight: 'bold' }}>{p.x}</td>
                    <td style={{ padding: '12px', textAlign: 'center' }}>{p.j}</td>
                    <td style={{ padding: '12px', textAlign: 'center' }}>{p.v}</td>
                    <td style={{ padding: '12px', textAlign: 'center' }}>{p.s}</td>
                    <td style={{ padding: '12px', textAlign: 'center' }}>{p.d}</td>
                    <td style={{ padding: '12px', textAlign: 'center', backgroundColor: '#F3F4F6', fontWeight: 'bold' }}>{p.total}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </main>
      </div>
    </div>
  );
}
