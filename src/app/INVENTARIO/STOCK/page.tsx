'use client';

import React, { useState, useEffect } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  Package, 
  ArrowLeft, 
  AlertTriangle,
  CheckCircle2,
  Calendar,
  Search,
  Filter,
  Loader2,
  ArrowUpRight
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function StockPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [data, setData] = useState<any>(null);

  useEffect(() => {
    fetch('/api/inventario/stock')
      .then(res => res.json())
      .then(json => {
        setData(json);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return (
      <SubPageLayout title="Control de Stock">
        <div style={{ height: '50vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
          <Loader2 className="animate-spin" size={40} color="#801515" />
          <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>Sincronizando inventario D1...</p>
        </div>
      </SubPageLayout>
    );
  }

  return (
    <SubPageLayout title="Control de Stock">
      {/* 1. Header & Filtros */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', gap: '16px' }}>
          <div style={{ position: 'relative' }}>
            <Search size={18} style={{ position: 'absolute', left: '16px', top: '50%', transform: 'translateY(-50%)', color: 'rgba(255,255,255,0.3)' }} />
            <input 
              type="text" 
              placeholder="Buscar ingrediente..." 
              style={{ backgroundColor: 'rgba(0,0,0,0.3)', border: '1px solid rgba(255,255,255,0.1)', padding: '14px 20px 14px 48px', borderRadius: '16px', color: 'white', fontSize: '14px', width: '300px' }}
            />
          </div>
          <button style={{ backgroundColor: 'rgba(255,255,255,0.05)', color: 'white', padding: '12px 20px', borderRadius: '16px', border: '1px solid rgba(255,255,255,0.1)', display: 'flex', alignItems: 'center', gap: '10px', cursor: 'pointer' }}>
            <Filter size={18} /> FILTRAR
          </button>
        </div>
      </div>

      {/* 2. Tabla Traslúcida: Top 10 Ingredientes */}
      <div style={{ backgroundColor: 'rgba(0, 0, 0, 0.4)', backdropFilter: 'blur(30px)', borderRadius: '32px', border: '1px solid rgba(255, 255, 255, 0.1)', overflow: 'hidden', boxShadow: '0 40px 80px rgba(0,0,0,0.5)' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
          <thead>
            <tr style={{ backgroundColor: 'rgba(255, 255, 255, 0.03)', borderBottom: '1px solid rgba(255, 255, 255, 0.1)' }}>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Ingrediente</th>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Categoría</th>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Stock Actual</th>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Stock Seguridad</th>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Próxima Recepción</th>
              <th style={{ padding: '24px 32px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px', textTransform: 'uppercase' }}>Estado</th>
            </tr>
          </thead>
          <tbody>
            {data?.stock.map((item: any, i: number) => (
              <tr key={item.id} style={{ borderBottom: i === data.stock.length - 1 ? 'none' : '1px solid rgba(255, 255, 255, 0.05)', transition: 'background 0.2s' }} onMouseOver={(e) => e.currentTarget.style.backgroundColor = 'rgba(255,255,255,0.02)'} onMouseOut={(e) => e.currentTarget.style.backgroundColor = 'transparent'}>
                <td style={{ padding: '28px 32px' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '16px' }}>
                    <div style={{ width: '40px', height: '40px', borderRadius: '12px', backgroundColor: 'rgba(249, 115, 22, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#801515', fontWeight: '900', fontSize: '14px' }}>
                      {item.name.charAt(0)}
                    </div>
                    <span style={{ fontWeight: '800', fontSize: '15px' }}>{item.name}</span>
                  </div>
                </td>
                <td style={{ padding: '28px 32px' }}>
                  <span style={{ fontSize: '11px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', backgroundColor: 'rgba(255,255,255,0.05)', padding: '6px 12px', borderRadius: '8px' }}>{item.category.toUpperCase()}</span>
                </td>
                <td style={{ padding: '28px 32px', fontSize: '18px', fontWeight: '900', color: item.isCritical ? '#EF4444' : 'white' }}>
                  {item.current_stock}{item.unit}
                </td>
                <td style={{ padding: '28px 32px', fontSize: '14px', fontWeight: '700', color: 'rgba(255,255,255,0.4)' }}>
                  {item.security_stock}{item.unit}
                </td>
                <td style={{ padding: '28px 32px' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#FFD700', fontSize: '12px', fontWeight: '800' }}>
                    <Calendar size={14} /> {item.next_delivery}
                  </div>
                </td>
                <td style={{ padding: '28px 32px' }}>
                  {item.isCritical ? (
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#EF4444', fontSize: '10px', fontWeight: '900', letterSpacing: '1px' }}>
                      <AlertTriangle size={14} /> REPOSICIÓN URGENTE
                    </div>
                  ) : (
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#10B981', fontSize: '10px', fontWeight: '900', letterSpacing: '1px' }}>
                      <CheckCircle2 size={14} /> STOCK ÓPTIMO
                    </div>
                  )}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <style jsx global>{`
        @keyframes spin {
          from { transform: rotate(0deg); }
          to { transform: rotate(360deg); }
        }
        .animate-spin {
          animation: spin 1s linear infinite;
        }
      `}</style>
    </SubPageLayout>
  );
}
