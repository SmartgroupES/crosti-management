'use client';

import React from 'react';
import { Trash2, TrendingUp, MapPin, Calendar, Sparkles, FileText } from 'lucide-react';

export default function MermaPage() {
  const kpis = [
    { label: 'MERMA TOTAL 2026', value: '0 €', subvalue: 'Esperando reportes', icon: <Trash2 size={24} color="#EF4444" /> },
    { label: '% MERMA / VENTA', value: '0 %', subvalue: 'Promedio ponderado', icon: <TrendingUp size={24} color="#666" /> },
    { label: 'TIENDA + MERMA', value: '-', subvalue: 'N/A', icon: <MapPin size={24} color="#EF4444" /> },
    { label: 'TIENDA - MERMA', value: '-', subvalue: 'N/A', icon: <MapPin size={24} color="#10B981" /> },
    { label: 'DÍA + MERMA', value: '-', subvalue: 'N/A', icon: <Calendar size={24} color="#666" /> },
  ];

  const stores = [
    'ALCALÁ', 'BERNABÉU', 'FERNANDO VI', 'JORGE JUAN', 'PICASSO', 'PRINCESA', 'QUEVEDO', 'RETIRO', 'VELÁZQUEZ', 'ZURBANO'
  ];

  // Random data generation for the heatmap
  const getCellColor = (val: number) => {
    if (val > 600) return '#FEE2E2'; // Reddish
    if (val > 400) return '#FEF3C7'; // Yellowish
    return '#F0FDF4'; // Greenish
  };

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
      {/* KPI Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '20px' }}>
        {kpis.map((kpi, idx) => (
          <div key={idx} style={{ backgroundColor: 'white', padding: '24px', borderRadius: '16px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '12px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '0.5px' }}>{kpi.label}</div>
              {kpi.icon}
            </div>
            <div style={{ fontSize: '24px', fontWeight: '900', color: kpi.label.includes('+') ? '#EF4444' : kpi.label.includes('-') ? '#10B981' : '#1A1A1A', marginBottom: '4px' }}>{kpi.value}</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>{kpi.subvalue}</div>
          </div>
        ))}
      </div>

      {/* Heatmap Section */}
      <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '20px', border: '1px solid #E5E7EB', overflowX: 'auto' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '20px' }}>
           <div style={{ backgroundColor: '#FEF3C7', padding: '6px', borderRadius: '6px' }}><Trash2 size={16} color="#D97706" /></div>
           <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Seguimiento Merma Acumulada (€)</h3>
        </div>

        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '12px' }}>
          <thead>
            <tr style={{ textAlign: 'left', borderBottom: '2px solid #F3F4F6' }}>
              <th style={{ padding: '12px 8px', color: '#6B7280' }}>Tienda</th>
              {[...Array(15)].map((_, i) => (
                <th key={i} style={{ padding: '12px 8px', color: '#6B7280', textAlign: 'center' }}>S{i + 1}</th>
              ))}
              <th style={{ padding: '12px 8px', color: 'white', backgroundColor: '#801515', textAlign: 'center', borderRadius: '4px 4px 0 0' }}>Total</th>
            </tr>
          </thead>
          <tbody>
            {stores.map((store, sIdx) => (
              <tr key={sIdx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                <td style={{ padding: '10px 8px', fontWeight: 'bold', fontSize: '11px' }}>{store}</td>
                {[...Array(15)].map((_, i) => {
                  const val = Math.floor(Math.random() * 500) + 150;
                  return (
                    <td key={i} style={{ padding: '10px 4px', textAlign: 'center', backgroundColor: getCellColor(val), borderRadius: '4px' }}>
                      {val} €
                    </td>
                  );
                })}
                <td style={{ padding: '10px 8px', textAlign: 'center', fontWeight: 'bold', backgroundColor: '#801515', color: 'white' }}>
                  {Math.floor(Math.random() * 5000) + 4000} €
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Bottom Actions */}
      <div style={{ display: 'flex', justifyContent: 'flex-end', gap: '16px' }}>
        <button style={{ 
          backgroundColor: '#1A1A1A', 
          color: 'white', 
          border: 'none', 
          padding: '12px 24px', 
          borderRadius: '12px', 
          fontSize: '13px', 
          fontWeight: 'bold', 
          display: 'flex', 
          alignItems: 'center', 
          gap: '8px',
          cursor: 'pointer'
        }}>
          <Sparkles size={16} color="#C084FC" /> Motor Predictivo
        </button>
        <button style={{ 
          backgroundColor: '#801515', 
          color: 'white', 
          border: 'none', 
          padding: '12px 24px', 
          borderRadius: '12px', 
          fontSize: '13px', 
          fontWeight: 'bold', 
          display: 'flex', 
          alignItems: 'center', 
          gap: '8px',
          cursor: 'pointer'
        }}>
          <FileText size={16} /> Informe Detallado de Merma
        </button>
      </div>
    </div>
  );
}
