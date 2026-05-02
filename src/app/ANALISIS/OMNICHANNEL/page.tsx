'use client';

import React, { useState, useEffect } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  Globe, 
  ShoppingBag, 
  Zap, 
  ArrowLeft, 
  AlertCircle, 
  CheckCircle2,
  PieChart as PieIcon,
  RefreshCw,
  Power,
  PowerOff,
  Loader2
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function SincroOmnicanalPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [syncing, setSyncing] = useState(false);
  const [stock, setStock] = useState([
    { name: 'Cookie Classic', stock: 45, status: 'Active' },
    { name: 'Cookie Pistacho', stock: 0, status: 'Active' }, // Triggers alert
    { name: 'Croissant', stock: 12, status: 'Active' },
    { name: 'Focaccia', stock: 8, status: 'Active' }
  ]);

  useEffect(() => {
    setTimeout(() => setLoading(false), 800);
  }, []);

  const togglePlatform = (id: number) => {
    // Logic for toggling platforms
  };

  const handleDeactivate = (productName: string) => {
    setSyncing(true);
    setTimeout(() => {
      setStock(stock.map(s => s.name === productName ? { ...s, status: 'Disabled' } : s));
      setSyncing(false);
    }, 1500);
  };

  if (loading) {
    return (
      <SubPageLayout title="Sincro Omnicanal">
        <div style={{ height: '50vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
          <Loader2 className="animate-spin" size={40} color="#801515" />
          <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>Conectando con APIs de Delivery...</p>
        </div>
      </SubPageLayout>
    );
  }

  return (
    <SubPageLayout title="BakeOS Sincro Omnicanal">
      {/* 1. Header & Quick Stats */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', gap: '12px' }}>
          <div style={{ backgroundColor: 'rgba(16, 185, 129, 0.1)', border: '1px solid #10B981', color: '#10B981', padding: '10px 20px', borderRadius: '12px', fontSize: '10px', fontWeight: '900', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <Zap size={14} /> BRIDGE_ACTIVE
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.2fr 1fr', gap: '40px' }}>
        
        {/* 2. Dashboard de Delivery */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: '32px' }}>
          <div>
            <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
              <Globe size={16} /> Estado de Plataformas
            </h2>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '16px' }}>
              {[
                { name: 'Glovo', status: 'Online', color: '#FFC244' },
                { name: 'Uber Eats', status: 'Online', color: '#06C167' },
                { name: 'Web Store', status: 'Online', color: '#801515' }
              ].map((p, i) => (
                <div key={i} style={{ backgroundColor: 'rgba(0,0,0,0.3)', backdropFilter: 'blur(20px)', padding: '24px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)', textAlign: 'center' }}>
                  <div style={{ width: '40px', height: '40px', borderRadius: '12px', backgroundColor: `${p.color}20`, color: p.color, margin: '0 auto 16px auto', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                    <ShoppingBag size={20} />
                  </div>
                  <div style={{ fontSize: '16px', fontWeight: '900', marginBottom: '4px' }}>{p.name}</div>
                  <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '6px', color: '#10B981', fontSize: '10px', fontWeight: '900' }}>
                    <div style={{ width: '6px', height: '6px', borderRadius: '50%', backgroundColor: '#10B981' }} /> {p.status.toUpperCase()}
                  </div>
                </div>
              ))}
            </div>
          </div>

          {/* 3. Lógica de Agotados (IA Link) */}
          <div>
            <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
              <RefreshCw size={16} /> Alertas de Stock IA
            </h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              {stock.map((s, i) => (
                <div key={i} style={{ backgroundColor: s.stock === 0 ? 'rgba(239, 68, 68, 0.05)' : 'rgba(0,0,0,0.2)', padding: '24px 32px', borderRadius: '24px', border: `1px solid ${s.stock === 0 ? 'rgba(239, 68, 68, 0.2)' : 'rgba(255,255,255,0.05)'}`, display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
                    <div style={{ width: '48px', height: '48px', borderRadius: '12px', backgroundColor: s.stock === 0 ? 'rgba(239, 68, 68, 0.1)' : 'rgba(16, 185, 129, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: s.stock === 0 ? '#EF4444' : '#10B981' }}>
                      {s.stock === 0 ? <AlertCircle size={24} /> : <CheckCircle2 size={24} />}
                    </div>
                    <div>
                      <div style={{ fontSize: '16px', fontWeight: '800' }}>{s.name}</div>
                      <div style={{ fontSize: '11px', color: 'rgba(255,255,255,0.3)', fontWeight: '700' }}>STOCK REAL (IA): {s.stock} UDS</div>
                    </div>
                  </div>
                  
                  {s.stock === 0 && s.status === 'Active' && (
                    <button 
                      onClick={() => handleDeactivate(s.name)}
                      disabled={syncing}
                      style={{ backgroundColor: '#EF4444', color: 'white', padding: '12px 24px', borderRadius: '12px', border: 'none', fontWeight: '900', fontSize: '11px', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '10px', boxShadow: '0 10px 20px rgba(239, 68, 68, 0.3)' }}
                    >
                      {syncing ? <Loader2 className="animate-spin" size={14} /> : <PowerOff size={14} />} 
                      DESACTIVAR EN DELIVERY
                    </button>
                  )}

                  {s.status === 'Disabled' && (
                    <div style={{ color: '#EF4444', fontSize: '10px', fontWeight: '900', letterSpacing: '1px' }}>DESACTIVADO EN TODAS LAS APPS</div>
                  )}
                </div>
              ))}
            </div>
          </div>
        </div>

        {/* 4. Gráfico de Ventas por Canal (Pie Chart) */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <PieIcon size={16} /> Mix de Ventas por Canal
          </h2>
          <div style={{ backgroundColor: 'rgba(0,0,0,0.3)', backdropFilter: 'blur(30px)', padding: '60px 40px', borderRadius: '32px', border: '1px solid rgba(255,255,255,0.1)', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '40px' }}>
            
            {/* Simple SVG Pie Chart */}
            <div style={{ position: 'relative', width: '240px', height: '240px' }}>
              <svg viewBox="0 0 36 36" style={{ transform: 'rotate(-90deg)', width: '100%', height: '100%' }}>
                {/* Tienda Física (55%) */}
                <circle cx="18" cy="18" r="16" fill="none" stroke="#801515" strokeWidth="4" strokeDasharray="55 100" />
                {/* Delivery (30%) */}
                <circle cx="18" cy="18" r="16" fill="none" stroke="#EF4444" strokeWidth="4" strokeDasharray="30 100" strokeDashoffset="-55" />
                {/* Catering (15%) */}
                <circle cx="18" cy="18" r="16" fill="none" stroke="#FFD700" strokeWidth="4" strokeDasharray="15 100" strokeDashoffset="-85" />
              </svg>
              <div style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
                <div style={{ fontSize: '32px', fontWeight: '900', color: 'white' }}>100%</div>
                <div style={{ fontSize: '10px', fontWeight: '900', opacity: 0.3 }}>TOTAL MIX</div>
              </div>
            </div>

            <div style={{ width: '100%', display: 'flex', flexDirection: 'column', gap: '16px' }}>
              {[
                { label: 'Tienda Física', value: '55%', color: '#801515' },
                { label: 'Delivery Apps', value: '30%', color: '#EF4444' },
                { label: 'Catering Premium', value: '15%', color: '#FFD700' }
              ].map((item, i) => (
                <div key={i} style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                    <div style={{ width: '12px', height: '12px', borderRadius: '3px', backgroundColor: item.color }} />
                    <span style={{ fontSize: '13px', fontWeight: '700', color: 'rgba(255,255,255,0.6)' }}>{item.label}</span>
                  </div>
                  <span style={{ fontSize: '14px', fontWeight: '900' }}>{item.value}</span>
                </div>
              ))}
            </div>
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
        @keyframes pulse {
          0% { opacity: 0.5; }
          50% { opacity: 1; }
          100% { opacity: 0.5; }
        }
      `}</style>
    </SubPageLayout>
  );
}
