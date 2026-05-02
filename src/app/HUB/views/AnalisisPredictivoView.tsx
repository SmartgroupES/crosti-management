'use client';

import React, { useState, useEffect } from 'react';
import { 
  BarChart3, 
  Target, 
  ArrowUpRight, 
  ArrowDownRight,
  RefreshCw,
  Zap
} from 'lucide-react';

export default function AnalisisPredictivoView() {
  const [loading, setLoading] = useState(true);
  const [data, setData] = useState<any>(null);

  useEffect(() => {
    // Simulamos carga de análisis basado en los nuevos datasets
    setTimeout(() => {
      setData({
        compliance: 94.2,
        projectedSales: 45200,
        breakEvenDays: 18,
        efficiencyScore: 88,
        trends: [
          { label: 'PRODUCCIÓN VS REAL', status: 'optimal', diff: '+2.1%' },
          { label: 'MERMA CONTROLADA', status: 'warning', diff: '+0.5%' },
          { label: 'MARGEN DE CONTRIBUCIÓN', status: 'optimal', diff: '+4.3%' }
        ]
      });
      setLoading(false);
    }, 1500);
  }, []);

  if (loading) return (
    <div style={{ padding: '100px', textAlign: 'center' }}>
      <RefreshCw size={48} color="#801515" className="animate-spin" style={{ marginBottom: '20px' }} />
      <div style={{ fontWeight: '800', color: '#9CA3AF' }}>CALCULANDO MÉTRICAS DE INTELIGENCIA...</div>
    </div>
  );

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
      {/* 1. Main Insight Card */}
      <div style={{ 
        backgroundColor: '#1A1A1A', color: 'white', padding: '24px', borderRadius: '24px',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        boxShadow: '0 10px 20px rgba(0,0,0,0.05)'
      }}>
        <div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#801515', marginBottom: '8px' }}>
            <Zap size={16} fill="#801515" />
            <span style={{ fontSize: '11px', fontWeight: '900', letterSpacing: '1px' }}>RESUMEN PREDICTIVO</span>
          </div>
          <h2 style={{ fontSize: '14px', fontWeight: '900', marginBottom: '4px' }}>ESTADO DE LA OPERACIÓN: <span style={{ color: '#10B981' }}>ÓPTIMO</span></h2>
          <p style={{ color: 'rgba(255,255,255,0.6)', fontSize: '12px', fontWeight: '600' }}>
            CUMPLIMIENTO DEL PLAN: **{data.compliance}%**
          </p>
        </div>
        <div style={{ textAlign: 'right' }}>
           <div style={{ fontSize: '32px', fontWeight: '900', color: '#801515' }}>{data.efficiencyScore}<span style={{ fontSize: '14px', color: 'white' }}>/100</span></div>
           <div style={{ fontSize: '9px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '1px' }}>ÍNDICE DE EFICIENCIA</div>
        </div>
      </div>

      {/* 2. Grid of metrics */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '16px' }}>
        {data.trends.map((trend: any, idx: number) => (
          <div key={idx} style={{ backgroundColor: 'white', padding: '20px', borderRadius: '24px', border: '1px solid #E5E7EB' }}>
            <div style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF', marginBottom: '12px' }}>{trend.label}</div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
              <div style={{ fontSize: '18px', fontWeight: '900' }}>{trend.diff}</div>
              {trend.status === 'optimal' ? (
                <div style={{ backgroundColor: '#DCFCE7', color: '#166534', padding: '3px 6px', borderRadius: '6px', display: 'flex', alignItems: 'center' }}>
                  <ArrowUpRight size={12} />
                </div>
              ) : (
                <div style={{ backgroundColor: '#FEF3C7', color: '#92400E', padding: '3px 6px', borderRadius: '6px', display: 'flex', alignItems: 'center' }}>
                  <ArrowDownRight size={12} />
                </div>
              )}
            </div>
          </div>
        ))}
      </div>

      {/* 3. Break Even Analysis */}
      <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '24px', border: '1px solid #E5E7EB' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
          <div>
            <h3 style={{ fontSize: '14px', fontWeight: '900' }}>PUNTO DE EQUILIBRIO ESTIMADO</h3>
            <p style={{ color: '#9CA3AF', fontSize: '11px', fontWeight: '600', marginTop: '2px' }}>Días necesarios para cubrir costos.</p>
          </div>
          <Target size={24} color="#801515" />
        </div>
        
        <div style={{ display: 'flex', alignItems: 'flex-end', gap: '4px' }}>
          {Array.from({ length: 30 }).map((_, i) => (
            <div key={i} style={{ 
              flex: 1, 
              height: `${20 + Math.random() * 60}px`, 
              backgroundColor: i < data.breakEvenDays ? '#801515' : '#F3F4F6',
              borderRadius: '4px'
            }} />
          ))}
        </div>
        <div style={{ display: 'flex', justifyContent: 'space-between', marginTop: '20px' }}>
          <div style={{ fontSize: '13px', fontWeight: '900' }}>DÍA 1</div>
          <div style={{ fontSize: '13px', fontWeight: '900', color: '#801515' }}>DÍA {data.breakEvenDays} (BREAK-EVEN)</div>
          <div style={{ fontSize: '13px', fontWeight: '900', color: '#9CA3AF' }}>DÍA 30</div>
        </div>
      </div>
    </div>
  );
}
