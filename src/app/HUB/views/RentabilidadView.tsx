'use client';

import React, { useState, useEffect } from 'react';
import { 
  TrendingUp, 
  DollarSign, 
  PieChart, 
  AlertTriangle,
  ArrowRight
} from 'lucide-react';

export default function RentabilidadView() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch('/api/analysis/profitability')
      .then(res => res.json())
      .then(json => {
        setData(json);
        setLoading(false);
      })
      .catch(e => console.error(e));
  }, []);

  if (loading) return <div style={{ padding: '60px', textAlign: 'center', fontWeight: '800', color: '#9CA3AF' }}>CALCULANDO RENTABILIDAD EN TIEMPO REAL...</div>;

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
      {/* 1. Profit Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '16px' }}>
         <div style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '24px', borderRadius: '24px' }}>
            <div style={{ fontSize: '10px', fontWeight: '900', opacity: 0.6, marginBottom: '6px', letterSpacing: '1.5px' }}>BENEFICIO NETO PROYECTADO</div>
            <div style={{ fontSize: '28px', fontWeight: '900' }}>{data?.summary?.netProfit?.toLocaleString()}€</div>
            <div style={{ fontSize: '11px', color: '#10B981', fontWeight: '800', marginTop: '6px' }}>PUNTO DE EQUILIBRIO: {data?.summary?.breakEven?.toLocaleString()}€</div>
         </div>
         <div style={{ backgroundColor: '#F0FDF4', border: '1px solid #BBF7D0', padding: '24px', borderRadius: '24px' }}>
            <div style={{ fontSize: '10px', fontWeight: '900', color: '#166534', marginBottom: '6px', letterSpacing: '1.5px' }}>CONTRIBUCIÓN BRUTA</div>
            <div style={{ fontSize: '28px', fontWeight: '900', color: '#166534' }}>{data?.summary?.totalContribution?.toLocaleString()}€</div>
            <div style={{ fontSize: '11px', color: '#166534', opacity: 0.7, fontWeight: '700', marginTop: '6px' }}>MARGEN TOTAL SOBRE VENTAS</div>
         </div>
         <div style={{ backgroundColor: '#FFF7ED', border: '1px solid #FFEDD5', padding: '24px', borderRadius: '24px' }}>
            <div style={{ fontSize: '10px', fontWeight: '900', color: '#9A3412', marginBottom: '6px', letterSpacing: '1.5px' }}>GASTOS OPERATIVOS</div>
            <div style={{ fontSize: '28px', fontWeight: '900', color: '#9A3412' }}>{data?.summary?.totalFixed?.toLocaleString()}€</div>
            <div style={{ fontSize: '11px', color: '#9A3412', opacity: 0.7, fontWeight: '700', marginTop: '6px' }}>ALQUILER, LUZ Y PERSONAL</div>
         </div>
      </div>

      {/* 2. Product Ranking */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
         <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between' }}>
            <h3 style={{ fontSize: '14px', fontWeight: '900' }}>RANKING DE PRODUCTOS POR RENTABILIDAD</h3>
            <div style={{ fontSize: '9px', fontWeight: '900', color: '#10B981', backgroundColor: '#DCFCE7', padding: '3px 8px', borderRadius: '8px' }}>ANÁLISIS IA ACTIVO</div>
         </div>
         <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
               <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                  <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>PRODUCTO</th>
                  <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>MARGEN %</th>
                  <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>COSTO</th>
                  <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right' }}>BENEFICIO</th>
               </tr>
            </thead>
            <tbody>
               {data?.products?.map((p: any, idx: number) => (
                  <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                     <td style={{ padding: '24px 32px' }}>
                        <div style={{ fontSize: '14px', fontWeight: '900', color: '#2D2926' }}>{p.name.toUpperCase()}</div>
                        <div style={{ fontSize: '10px', color: '#9CA3AF', fontWeight: '700' }}>UNIDADES VENDIDAS: {p.units}</div>
                     </td>
                     <td style={{ padding: '24px 32px', textAlign: 'center' }}>
                        <div style={{ 
                           display: 'inline-block', padding: '4px 12px', borderRadius: '8px',
                           backgroundColor: p.marginPercent > 60 ? '#DCFCE7' : '#FEF3C7',
                           color: p.marginPercent > 60 ? '#166534' : '#92400E',
                           fontSize: '12px', fontWeight: '900'
                        }}>
                           {p.marginPercent.toFixed(1)}%
                        </div>
                     </td>
                     <td style={{ padding: '24px 32px', textAlign: 'center', fontSize: '14px', fontWeight: '700' }}>{p.unitCost.toFixed(2)}€</td>
                     <td style={{ padding: '24px 32px', textAlign: 'right', fontSize: '15px', fontWeight: '900', color: '#1A1A1A' }}>
                        {p.totalContribution.toLocaleString()}€
                     </td>
                  </tr>
               ))}
            </tbody>
         </table>
      </div>
    </div>
  );
}
