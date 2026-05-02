'use client';

import React, { useState, useEffect } from 'react';
import { Shield, Activity, Globe, Zap, Database, Server, Cpu, Layers, ArrowUpRight, Search, Bell, Lock, Unlock, DollarSign as DollarSignIcon } from 'lucide-react';
import { TenantAnonymizer } from '@/lib/saas/tenant-manager';

export default function SaaSCommandCenter() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [isAnonymized, setIsAnonymized] = useState(false);

  useEffect(() => {
    fetch('/api/saas/global-metrics')
      .then(res => res.json())
      .then(json => {
        setData(json);
        setLoading(false);
      });
  }, []);

  if (loading) return <div style={{ backgroundColor: '#050505', minHeight: '100vh' }}></div>;

  return (
    <div style={{ backgroundColor: '#050505', minHeight: '100vh', color: '#E2E8F0', fontFamily: '"JetBrains Mono", monospace, Inter, sans-serif', padding: '40px' }}>
      
      {/* HUD Header */}
      <header style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '50px', borderBottom: '1px solid #1A1A1A', paddingBottom: '20px' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '15px' }}>
          <div style={{ width: '40px', height: '40px', backgroundColor: '#801515', borderRadius: '10px', display: 'flex', alignItems: 'center', justifyContent: 'center', boxShadow: '0 0 20px rgba(249, 115, 22, 0.4)' }}>
            <Cpu color="black" size={24} />
          </div>
          <div>
            <h1 style={{ fontSize: '20px', fontWeight: '900', margin: 0, letterSpacing: '-1px' }}>BAKEOS <span style={{ color: '#801515' }}>CENTRAL COMMAND</span></h1>
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '10px', color: '#64748B', marginTop: '4px' }}>
              <span style={{ color: '#22C55E' }}>● SYSTEM ONLINE</span>
              <span>v.4.0.0-CORE</span>
              <span>Uptime: {data.globalMetrics.uptime}</span>
            </div>
          </div>
        </div>
        <div style={{ display: 'flex', gap: '20px', alignItems: 'center' }}>
          {/* Anonymize Toggle */}
          <button 
            onClick={() => setIsAnonymized(!isAnonymized)}
            style={{ backgroundColor: isAnonymized ? '#801515' : '#111', border: '1px solid #222', borderRadius: '10px', padding: '10px 20px', display: 'flex', alignItems: 'center', gap: '10px', color: isAnonymized ? 'black' : '#64748B', fontSize: '11px', fontWeight: 'bold', cursor: 'pointer', transition: 'all 0.3s ease' }}
          >
            {isAnonymized ? <Lock size={14} /> : <Unlock size={14} />}
            {isAnonymized ? 'MODO ANÓNIMO ACTIVO' : 'MODO AUDITORÍA'}
          </button>

          <div style={{ backgroundColor: '#111', border: '1px solid #222', borderRadius: '10px', padding: '10px 15px', display: 'flex', alignItems: 'center', gap: '10px' }}>
            <Search size={16} color="#444" />
            <input type="text" placeholder="Buscar Tenant..." style={{ backgroundColor: 'transparent', border: 'none', color: 'white', outline: 'none', fontSize: '12px' }} />
          </div>
          <Bell size={20} color="#64748B" cursor="pointer" />
          <div style={{ width: '32px', height: '32px', borderRadius: '50%', backgroundColor: '#1A1A1A', border: '1px solid #333' }}></div>
        </div>
      </header>

      {/* Global Intelligence HUD */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '20px', marginBottom: '40px' }}>
        {[
          { label: 'ARR TOTAL (SaaS)', value: `${data.globalMetrics.totalARR.toLocaleString()} €`, sub: '+18.4% vs Mes Anterior', icon: <DollarSignIcon color="#801515" size={18} /> },
          { label: 'MERMA EVITADA GLOBAL', value: `${data.globalMetrics.totalWasteAvoided.toLocaleString()} €`, sub: 'Efecto Directo IA', icon: <Zap color="#22C55E" size={18} /> },
          { label: 'NODOS AI ACTIVOS', value: data.globalMetrics.activeAIInstances, sub: 'Edge Computing Instances', icon: <Server color="#3B82F6" size={18} /> },
          { label: 'SOLICITUDES IA / SEG', value: '42.8', sub: 'Latencia: 124ms', icon: <Activity color="#A855F7" size={18} /> }
        ].map((kpi, idx) => (
          <div key={idx} style={{ backgroundColor: 'rgba(255,255,255,0.02)', border: '1px solid #1A1A1A', padding: '25px', borderRadius: '20px', position: 'relative', overflow: 'hidden' }}>
            <div style={{ position: 'absolute', top: 0, right: 0, width: '60px', height: '60px', background: 'radial-gradient(circle at 100% 0%, rgba(249, 115, 22, 0.05) 0%, transparent 70%)' }}></div>
            <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '20px' }}>
               <div style={{ fontSize: '10px', fontWeight: 'bold', color: '#475569', letterSpacing: '1px' }}>{kpi.label}</div>
               {kpi.icon}
            </div>
            <div style={{ fontSize: '32px', fontWeight: '900', color: 'white' }}>{kpi.value}</div>
            <div style={{ fontSize: '11px', color: '#64748B', marginTop: '5px' }}>{kpi.sub}</div>
          </div>
        ))}
      </div>

      {/* Main Grid: Tenants & Infrastructure */}
      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: '30px' }}>
        
        {/* Active Tenants Console */}
        <div style={{ backgroundColor: 'rgba(255,255,255,0.01)', border: '1px solid #1A1A1A', borderRadius: '30px', padding: '35px' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '30px' }}>
            <h2 style={{ fontSize: '18px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '10px' }}>
              <Layers size={20} color="#801515" /> TENANTS ACTIVOS {isAnonymized && '(BENCHMARK)'}
            </h2>
          </div>

          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ textAlign: 'left', borderBottom: '1px solid #111' }}>
                <th style={{ padding: '15px 10px', fontSize: '10px', color: '#475569' }}>CLIENTE / TIENDA</th>
                <th style={{ padding: '15px 10px', fontSize: '10px', color: '#475569' }}>STATUS</th>
                <th style={{ padding: '15px 10px', fontSize: '10px', color: '#475569' }}>SCORE IA</th>
                <th style={{ padding: '15px 10px', fontSize: '10px', color: '#475569' }}>RECAUDACIÓN</th>
                <th style={{ padding: '15px 10px', fontSize: '10px', color: '#475569', textAlign: 'right' }}>ACCIONES</th>
              </tr>
            </thead>
            <tbody>
              {data.tenants.map((tenant: any) => (
                <tr key={tenant.id} style={{ borderBottom: '1px solid #0D0D0D', transition: 'all 0.3s ease' }}>
                  <td style={{ padding: '20px 10px' }}>
                    <div style={{ fontSize: '14px', fontWeight: 'bold' }}>
                      {isAnonymized ? `TENANT_${tenant.id.split('_')[1]}` : tenant.name}
                    </div>
                    <div style={{ fontSize: '11px', color: '#475569' }}>
                      {isAnonymized ? 'REDACTED_LOCATION' : tenant.location}
                    </div>
                  </td>
                  <td style={{ padding: '20px 10px' }}>
                    <span style={{ fontSize: '9px', fontWeight: 'bold', padding: '4px 8px', borderRadius: '5px', backgroundColor: tenant.status === 'active' ? 'rgba(34,197,94,0.1)' : 'rgba(249,115,22,0.1)', color: tenant.status === 'active' ? '#22C55E' : '#801515', border: `1px solid ${tenant.status === 'active' ? '#22C55E' : '#801515'}20` }}>
                      {tenant.status.toUpperCase()}
                    </span>
                  </td>
                  <td style={{ padding: '20px 10px' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                      <div style={{ width: '50px', height: '4px', backgroundColor: '#111', borderRadius: '2px', overflow: 'hidden' }}>
                        <div style={{ width: `${(tenant.qualityScore / 5) * 100}%`, height: '100%', backgroundColor: '#801515' }}></div>
                      </div>
                      <span style={{ fontSize: '12px', fontWeight: 'bold' }}>{tenant.qualityScore}</span>
                    </div>
                  </td>
                  <td style={{ padding: '20px 10px', fontSize: '14px', fontWeight: 'bold' }}>{tenant.revenueMonthly.toLocaleString()} €</td>
                  <td style={{ padding: '20px 10px', textAlign: 'right' }}>
                    <button style={{ backgroundColor: 'transparent', border: '1px solid #222', color: '#64748B', padding: '6px 12px', borderRadius: '8px', fontSize: '10px', cursor: 'pointer' }}>
                      CONTROL <ArrowUpRight size={10} />
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>

        {/* Infrastructure & Security */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
          
          <div style={{ backgroundColor: 'rgba(255,255,255,0.01)', border: '1px solid #1A1A1A', borderRadius: '30px', padding: '30px' }}>
             <h3 style={{ fontSize: '16px', fontWeight: 'bold', marginBottom: '25px', display: 'flex', alignItems: 'center', gap: '10px' }}>
               <Shield size={18} color="#22C55E" /> SEGURIDAD & NODOS
             </h3>
             <div style={{ display: 'flex', flexDirection: 'column', gap: '15px' }}>
               {[
                 { label: 'Edge Node ES-BCN-01', status: 'Optimal', load: '12%' },
                 { label: 'Edge Node ES-MAD-01', status: 'Optimal', load: '24%' },
                 { label: 'Gemini 1.5 Cluster', status: 'Optimal', load: '8%' }
               ].map((node, i) => (
                 <div key={i} style={{ backgroundColor: '#0D0D0D', padding: '15px', borderRadius: '15px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                   <div>
                     <div style={{ fontSize: '12px', fontWeight: 'bold' }}>{node.label}</div>
                     <div style={{ fontSize: '10px', color: '#22C55E' }}>{node.status}</div>
                   </div>
                   <div style={{ textAlign: 'right' }}>
                     <div style={{ fontSize: '12px', fontWeight: 'bold' }}>{node.load}</div>
                     <div style={{ fontSize: '9px', color: '#475569' }}>CPU Load</div>
                   </div>
                 </div>
               ))}
             </div>
          </div>

          <div style={{ backgroundColor: '#801515', borderRadius: '30px', padding: '30px', color: 'black' }}>
             <h3 style={{ fontSize: '18px', fontWeight: '900', marginBottom: '15px' }}>ALERTA DE PRIVACIDAD</h3>
             <p style={{ fontSize: '12px', fontWeight: 'bold', marginBottom: '20px', lineHeight: '1.5' }}>
               El Modo Anónimo protege los nombres de producto y ubicaciones reales de tus clientes para informes de benchmark.
             </p>
             <button onClick={() => setIsAnonymized(!isAnonymized)} style={{ backgroundColor: 'black', color: 'white', border: 'none', padding: '12px 20px', borderRadius: '15px', fontSize: '12px', fontWeight: '900', cursor: 'pointer', width: '100%' }}>
               {isAnonymized ? 'DESACTIVAR ANONIMATO' : 'ACTIVAR PRIVACIDAD'}
             </button>
          </div>

        </div>

      </div>

      <style jsx global>{`
        @import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;700;800&display=swap');
        body { margin: 0; padding: 0; background-color: #050505; }
        tr:hover { background-color: rgba(255,255,255,0.02) !important; }
      `}</style>
    </div>
  );
}
