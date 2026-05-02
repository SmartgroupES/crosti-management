'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { Layout, TrendingUp, Map, Move, Info } from 'lucide-react';

export default function LayoutMerchandisingPage() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch('/api/vision/layout')
      .then(res => res.json())
      .then(d => {
        setData(d);
        setLoading(false);
      })
      .catch(err => {
        console.error(err);
        setLoading(false);
      });
  }, []);

  const zones = data?.zones || [
    { id: 'Z1', name: 'Nivel Ojos (Central)', traffic: 'ALTO', sales: '-', color: '#EF4444', product: 'Pendiente' },
    { id: 'Z2', name: 'Lado Derecho', traffic: 'MEDIO', sales: '-', color: '#801515', product: 'Pendiente' },
    { id: 'Z3', name: 'Lado Izquierdo', traffic: 'MEDIO', sales: '-', color: '#3B82F6', product: 'Pendiente' },
    { id: 'Z4', name: 'Caja / Impulso', traffic: 'MUY ALTO', sales: '-', color: '#EF4444', product: 'Pendiente' },
  ];

  const suggestions = data?.suggestions || [];

  return (
    <div style={{ backgroundColor: '#F1F5F9', minHeight: '100vh', fontFamily: 'Inter, system-ui, sans-serif', color: '#0F172A' }}>
      {/* Header */}
      <header style={{ backgroundColor: '#1E293B', color: 'white', padding: '20px 40px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
          <Layout size={24} color="#801515" />
          <div>
            <h1 style={{ fontSize: '18px', fontWeight: '800', margin: 0 }}>Layout & Merchandising</h1>
            <p style={{ fontSize: '12px', color: '#94A3B8', margin: 0 }}>BakeOS Heatmap Analysis</p>
          </div>
        </div>
        <Link href="/" style={{ fontSize: '13px', color: '#94A3B8', textDecoration: 'none', fontWeight: '600' }}>← Cerrar</Link>
      </header>

      <main style={{ padding: '40px', maxWidth: '1200px', margin: '0 auto' }}>
        
        {loading ? (
          <div style={{ padding: '100px', textAlign: 'center', color: '#64748B' }}>Calculando mapa de calor con IA...</div>
        ) : (
          <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: '30px' }}>
            
            {/* Virtual Vitrine Heatmap */}
            <div style={{ backgroundColor: 'white', borderRadius: '24px', padding: '30px', border: '1px solid #E2E8F0' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
                <h2 style={{ fontSize: '20px', fontWeight: '800', display: 'flex', alignItems: 'center', gap: '10px' }}>
                  <Map size={20} color="#801515" /> Mapa de Calor de Vitrina
                </h2>
                <span style={{ fontSize: '12px', color: '#64748B' }}>Basado en rendimiento real de ventas</span>
              </div>

              {/* Mock Vitrine Grid */}
              <div style={{ 
                display: 'grid', 
                gridTemplateColumns: 'repeat(2, 1fr)', 
                gridTemplateRows: 'repeat(2, 200px)', 
                gap: '20px',
                backgroundColor: '#F8FAFC',
                padding: '20px',
                borderRadius: '16px',
                border: '2px solid #E2E8F0'
              }}>
                {zones.map((zone: any, i: number) => (
                  <div key={i} style={{ 
                    backgroundColor: 'white', 
                    borderRadius: '16px', 
                    border: `2px solid ${zone.color || '#E2E8F0'}`,
                    padding: '20px',
                    display: 'flex',
                    flexDirection: 'column',
                    justifyContent: 'space-between',
                    position: 'relative',
                    overflow: 'hidden',
                    boxShadow: '0 4px 6px -1px rgba(0, 0, 0, 0.05)'
                  }}>
                    <div style={{ position: 'absolute', top: 0, right: 0, backgroundColor: zone.color || '#64748B', color: 'white', fontSize: '10px', fontWeight: 'bold', padding: '4px 8px', borderRadius: '0 0 0 12px' }}>
                      ZONA {zone.id}
                    </div>
                    <div>
                      <h3 style={{ fontSize: '15px', fontWeight: '800', margin: 0, color: zone.color || '#0F172A' }}>{zone.product}</h3>
                      <p style={{ fontSize: '12px', color: '#64748B', margin: '4px 0 0 0' }}>{zone.name || 'Ubicación'}</p>
                    </div>
                    <div style={{ fontSize: '24px', fontWeight: '900', color: zone.color || '#0F172A' }}>
                      {zone.sales_impact || '0%'}
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* AI Suggestions */}
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
              <div style={{ backgroundColor: '#0F172A', color: 'white', borderRadius: '24px', padding: '24px' }}>
                <h2 style={{ fontSize: '18px', fontWeight: '800', marginBottom: '20px', display: 'flex', alignItems: 'center', gap: '10px' }}>
                  <TrendingUp size={20} color="#801515" /> IA Insights
                </h2>
                
                {suggestions.length > 0 ? suggestions.map((s: any, i: number) => (
                  <div key={i} style={{ marginBottom: '20px', padding: '15px', backgroundColor: 'rgba(255,255,255,0.05)', borderRadius: '16px', border: '1px solid rgba(255,255,255,0.1)' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px', marginBottom: '10px' }}>
                      <Move size={14} color="#801515" />
                      <span style={{ fontSize: '12px', fontWeight: 'bold', color: '#801515' }}>REUBICACIÓN SUGERIDA</span>
                    </div>
                    <h3 style={{ fontSize: '15px', fontWeight: '700', margin: '0 0 8px 0' }}>{s.product}</h3>
                    <p style={{ fontSize: '12px', color: '#94A3B8', margin: '0 0 12px 0' }}>Mover de <strong>{s.from}</strong> a <strong>{s.to}</strong></p>
                    <div style={{ backgroundColor: 'rgba(249, 115, 22, 0.1)', padding: '10px', borderRadius: '8px', fontSize: '11px', color: '#FDBA74' }}>
                      {s.reason}
                    </div>
                  </div>
                )) : (
                  <div style={{ padding: '20px', textAlign: 'center', color: '#94A3B8', fontSize: '13px' }}>No hay sugerencias en este momento.</div>
                )}

                <button style={{ width: '100%', backgroundColor: '#801515', color: 'white', border: 'none', padding: '14px', borderRadius: '12px', fontSize: '14px', fontWeight: 'bold', cursor: 'pointer' }}>
                  Aplicar Cambios de Layout
                </button>
              </div>

              <div style={{ backgroundColor: '#DCFCE7', padding: '20px', borderRadius: '24px', border: '1px solid #BBF7D0' }}>
                <div style={{ display: 'flex', gap: '12px' }}>
                  <Info size={20} color="#166534" />
                  <div>
                    <p style={{ margin: 0, fontSize: '13px', fontWeight: 'bold', color: '#166534' }}>A/B Testing Activo</p>
                    <p style={{ margin: '4px 0 0 0', fontSize: '12px', color: '#166534', lineHeight: '1.4' }}>
                      BakeOS está analizando el impacto de las nuevas posiciones. Resultados finales en 48h.
                    </p>
                  </div>
                </div>
              </div>
            </div>

          </div>
        )}

      </main>
    </div>
  );
}
