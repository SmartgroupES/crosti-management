'use client';

import React, { useState, useEffect } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  ShoppingCart, 
  AlertCircle, 
  ArrowLeft, 
  CheckCircle2, 
  Truck,
  TrendingUp,
  Loader2,
  ChevronRight,
  Plus
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function ComprasPage() {
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
      <SubPageLayout title="Compras Inteligentes">
        <div style={{ height: '50vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
          <Loader2 className="animate-spin" size={40} color="#801515" />
          <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>Calculando necesidades de compra...</p>
        </div>
      </SubPageLayout>
    );
  }

  return (
    <SubPageLayout title="Gestión de Compras">
      {/* 1. Header */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', gap: '16px' }}>
          <button style={{ backgroundColor: '#801515', color: 'white', padding: '12px 24px', borderRadius: '14px', border: 'none', fontWeight: '800', fontSize: '12px', display: 'flex', alignItems: 'center', gap: '10px', cursor: 'pointer' }}>
            <Plus size={16} /> NUEVO PEDIDO MANUAL
          </button>
        </div>
      </div>

      {/* 2. Lista de Compra Inteligente */}
      <div style={{ marginBottom: '60px' }}>
        <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
          <ShoppingCart size={16} /> Lista de Compra Inteligente (IA)
        </h2>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr', gap: '16px' }}>
          {data?.alerts.map((item: any) => (
            <div key={item.id} style={{ 
              backgroundColor: 'rgba(0,0,0,0.3)', 
              backdropFilter: 'blur(20px)', 
              padding: '32px', 
              borderRadius: '24px', 
              border: `1px solid ${item.isCritical ? 'rgba(239, 68, 68, 0.3)' : 'rgba(255,255,255,0.1)'}`,
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              gap: '40px'
            }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '24px', flex: 1 }}>
                <div style={{ 
                  width: '60px', 
                  height: '60px', 
                  borderRadius: '16px', 
                  backgroundColor: item.isCritical ? 'rgba(239, 68, 68, 0.1)' : 'rgba(249, 115, 22, 0.1)',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  color: item.isCritical ? '#EF4444' : '#801515'
                }}>
                  <AlertCircle size={24} />
                </div>
                <div>
                  <div style={{ fontSize: '18px', fontWeight: '900', color: 'white', marginBottom: '4px' }}>{item.name}</div>
                  <div style={{ fontSize: '12px', color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>
                    STOCK CRÍTICO: {item.current_stock}{item.unit} (Límite {item.security_stock}{item.unit})
                  </div>
                </div>
              </div>

              <div style={{ textAlign: 'right' }}>
                <div style={{ fontSize: '10px', fontWeight: '900', color: '#801515', letterSpacing: '1px', marginBottom: '8px' }}>PEDIDO RECOMENDADO</div>
                <div style={{ fontSize: '24px', fontWeight: '900', color: 'white' }}>+{item.recommendedOrder}{item.unit}</div>
              </div>

              <button 
                style={{ 
                  backgroundColor: item.isCritical ? '#EF4444' : 'rgba(255,255,255,0.05)', 
                  color: 'white', 
                  padding: '16px 32px', 
                  borderRadius: '16px', 
                  border: 'none', 
                  fontWeight: '900', 
                  fontSize: '12px', 
                  cursor: 'pointer',
                  boxShadow: item.isCritical ? '0 10px 20px rgba(239, 68, 68, 0.3)' : 'none',
                  transition: 'transform 0.2s'
                }}
                onMouseOver={(e) => e.currentTarget.style.transform = 'scale(1.05)'}
                onMouseOut={(e) => e.currentTarget.style.transform = 'scale(1)'}
              >
                GENERAR PEDIDO AL PROVEEDOR
              </button>
            </div>
          ))}
          
          {(!data?.alerts || data.alerts.length === 0) && (
            <div style={{ padding: '60px', textAlign: 'center', backgroundColor: 'rgba(0,0,0,0.2)', borderRadius: '32px', border: '1px dashed rgba(255,255,255,0.1)' }}>
              <CheckCircle2 size={40} color="#10B981" style={{ marginBottom: '20px' }} />
              <div style={{ fontSize: '16px', fontWeight: '800', color: 'white' }}>Stock en Niveles Óptimos</div>
              <p style={{ color: 'rgba(255,255,255,0.4)', fontSize: '14px', marginTop: '8px' }}>No hay alertas de reposición inmediata según el consumo de los últimos 3 meses.</p>
            </div>
          )}
        </div>
      </div>

      {/* 3. Proveedores y Próximas Entregas */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '32px' }}>
        <div style={{ backgroundColor: 'rgba(0,0,0,0.2)', padding: '40px', borderRadius: '32px', border: '1px solid rgba(255,255,255,0.05)' }}>
          <h3 style={{ fontSize: '12px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', textTransform: 'uppercase', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Truck size={16} /> Próximas Entregas
          </h3>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
            {[
              { provider: 'Harinas Tradición', items: '200kg Harina', date: 'Mañana 09:00' },
              { provider: 'Lácteos del Valle', items: '50kg Mantequilla', date: '04 May' }
            ].map((delivery, i) => (
              <div key={i} style={{ padding: '16px', backgroundColor: 'rgba(255,255,255,0.03)', borderRadius: '16px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <div>
                  <div style={{ fontSize: '14px', fontWeight: '800' }}>{delivery.provider}</div>
                  <div style={{ fontSize: '11px', color: 'rgba(255,255,255,0.4)' }}>{delivery.items}</div>
                </div>
                <div style={{ fontSize: '12px', fontWeight: '900', color: '#801515' }}>{delivery.date}</div>
              </div>
            ))}
          </div>
        </div>

        <div style={{ backgroundColor: 'rgba(0,0,0,0.2)', padding: '40px', borderRadius: '32px', border: '1px solid rgba(255,255,255,0.05)' }}>
          <h3 style={{ fontSize: '12px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', textTransform: 'uppercase', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <TrendingUp size={16} /> Análisis de Gasto
          </h3>
          <div style={{ height: '120px', display: 'flex', alignItems: 'flex-end', justifyContent: 'space-between', gap: '8px' }}>
            {[40, 65, 45, 90, 55, 75, 40].map((h, i) => (
              <div key={i} style={{ flex: 1, height: `${h}%`, backgroundColor: 'rgba(249, 115, 22, 0.2)', borderRadius: '4px 4px 0 0', border: '1px solid rgba(249, 115, 22, 0.3)' }} />
            ))}
          </div>
          <div style={{ display: 'flex', justifyContent: 'space-between', marginTop: '16px', fontSize: '10px', fontWeight: '900', opacity: 0.3 }}>
            <span>LUN</span><span>MAR</span><span>MIE</span><span>JUE</span><span>VIE</span><span>SAB</span><span>DOM</span>
          </div>
        </div>
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
