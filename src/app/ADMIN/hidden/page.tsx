'use client';

import React, { useState, useEffect } from 'react';
import Header from '@/components/Header';
import { 
  Database, 
  HardDrive, 
  Send, 
  FileText, 
  History, 
  AlertOctagon, 
  ArrowLeft, 
  CheckCircle2, 
  Mail, 
  MessageSquare, 
  Terminal as TerminalIcon,
  Clock,
  ExternalLink,
  ChevronRight,
  ShieldCheck,
  Zap,
  Activity,
  Lock,
  Cpu,
  Wifi
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function VaultAdminPage() {
  const router = useRouter();
  const [activeNode, setActiveNode] = useState<string | null>(null);
  const [showResetConfirm, setShowResetConfirm] = useState(false);
  const [secondConfirm, setSecondConfirm] = useState(false);

  // 23 Tables defined in schema.sql
  const d1Tables = [
    { name: 'raw_materials', records: 125, health: 'OPTIMAL', type: 'INVENTORY' },
    { name: 'sales_data', records: 45200, health: 'OPTIMAL', type: 'ANALYTICS' },
    { name: 'recipes', records: 86, health: 'OPTIMAL', type: 'PRODUCTION' },
    { name: 'employees', records: 32, health: 'STABLE', type: 'HR' },
    { name: 'vision_logs', records: 1240, health: 'OPTIMAL', type: 'AI_VISION' },
    { name: 'catering_orders', records: 215, health: 'OPTIMAL', type: 'LOGISTICS' },
  ];

  const versionHistory = [
    { version: 'v76', date: '2026-05-01', desc: 'Talent Management: Efficiency bonuses & Location rankings.' },
    { version: 'v75', date: '2026-05-01', desc: 'Omnichannel Sync: Glovo/Uber bridge & AI stock-out logic.' },
    { version: 'v74', date: '2026-05-01', desc: 'Operations 2.0: Intelligent Purchasing & Equipment Health.' },
    { version: 'v70', date: '2026-05-01', desc: 'BakeOS Data Layer: D1 Integration & Real-time KPIs.' },
  ];

  const handleReset = () => {
    alert("SYSTEM_PURGE_EXECUTED. ALL CACHE CLEARED.");
    window.location.reload();
  };

  return (
    <div style={{ 
      backgroundColor: '#0A0A0A', // Carbon Black
      minHeight: '100vh', 
      color: '#FFD700', // Gold details
      fontFamily: '"JetBrains Mono", "Courier New", monospace',
      padding: '140px 5% 60px 5%',
      backgroundImage: 'radial-gradient(circle at 50% 50%, rgba(255, 215, 0, 0.05) 0%, transparent 80%)',
      position: 'relative'
    }}>
      <Header />

      <div style={{ maxWidth: '1600px', margin: '0 auto' }}>
        
        {/* Header Terminal */}
        <div style={{ 
          display: 'flex', 
          justifyContent: 'space-between', 
          alignItems: 'flex-end', 
          borderBottom: '2px solid rgba(255, 215, 0, 0.15)', 
          paddingBottom: '40px',
          marginBottom: '60px'
        }}>
          <div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '16px', marginBottom: '16px' }}>
              <Lock color="#FFD700" size={36} />
              <h1 style={{ fontSize: '32px', fontWeight: '900', letterSpacing: '4px', margin: 0 }}>BAKEOS_VAULT_v3.0</h1>
            </div>
            <div style={{ display: 'flex', gap: '24px', fontSize: '10px', opacity: 0.5, fontWeight: '800', letterSpacing: '1px' }}>
              <span>ENCRYPTED_SESSION: ACTIVE</span>
              <span style={{ color: '#10B981' }}><Wifi size={10} style={{ marginRight: '4px' }} /> REPORTS_LISTENING_MODE: ACTIVE</span>
              <span>AUTH_PIN: 1234_VALIDATED</span>
            </div>
          </div>
          <button 
            onClick={() => router.push('/')}
            style={{ 
              backgroundColor: 'rgba(255, 215, 0, 0.05)', border: '1px solid #FFD700', color: '#FFD700', padding: '12px 28px', borderRadius: '8px', cursor: 'pointer', fontSize: '11px', fontWeight: '900', display: 'flex', alignItems: 'center', gap: '12px', letterSpacing: '2px' 
            }}
          >
            <ArrowLeft size={16} /> EXIT_RELIQUARY
          </button>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(12, 1fr)', gap: '40px' }}>
          
          {/* Main Content Area */}
          <div style={{ gridColumn: 'span 8', display: 'flex', flexDirection: 'column', gap: '40px' }}>
            
            {/* 1. D1 Schema Visual */}
            <div style={{ backgroundColor: 'rgba(255, 215, 0, 0.02)', border: '1px solid rgba(255, 215, 0, 0.1)', borderRadius: '24px', padding: '40px', backdropFilter: 'blur(20px)' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '40px' }}>
                <Database size={20} />
                <h2 style={{ fontSize: '13px', fontWeight: '900', letterSpacing: '2px', textTransform: 'uppercase' }}>Database Architecture (23 Tables Active)</h2>
              </div>
              
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr))', gap: '20px' }}>
                {d1Tables.map(table => (
                  <div 
                    key={table.name}
                    onClick={() => setActiveNode(activeNode === table.name ? null : table.name)}
                    style={{ 
                      padding: '24px',
                      backgroundColor: activeNode === table.name ? 'rgba(255, 215, 0, 0.1)' : 'rgba(0,0,0,0.3)',
                      border: `1px solid ${activeNode === table.name ? '#FFD700' : 'rgba(255, 215, 0, 0.1)'}`,
                      borderRadius: '16px',
                      cursor: 'pointer',
                      transition: 'all 0.3s cubic-bezier(0.4, 0, 0.2, 1)'
                    }}
                  >
                    <div style={{ fontSize: '14px', fontWeight: '900', marginBottom: '14px', color: activeNode === table.name ? '#FFD700' : 'rgba(255,255,255,0.7)' }}>{table.name}</div>
                    <div style={{ fontSize: '10px', opacity: 0.5, letterSpacing: '1px' }}>{table.type}</div>
                    {activeNode === table.name && (
                      <div style={{ marginTop: '16px', paddingTop: '16px', borderTop: '1px solid rgba(255,215,0,0.1)', fontSize: '11px', lineHeight: '1.8' }}>
                        <div style={{ color: '#10B981' }}>HEALTH: {table.health}</div>
                        <div>ROWS: {table.records.toLocaleString()}</div>
                        <div>R2_LAZY_SYNC: ENABLED</div>
                      </div>
                    )}
                  </div>
                ))}
              </div>

              {/* R2 Monitor */}
              <div style={{ marginTop: '40px', paddingTop: '32px', borderTop: '1px solid rgba(255, 215, 0, 0.1)', display: 'flex', justifyContent: 'space-between' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
                  <HardDrive size={28} />
                  <div>
                    <div style={{ fontSize: '10px', opacity: 0.5, letterSpacing: '1px' }}>R2_BUCKET_LAZY_LOAD (AUDIT_IMAGES)</div>
                    <div style={{ fontSize: '20px', fontWeight: '900' }}>14.8 GB / 100 GB</div>
                  </div>
                </div>
                <div style={{ textAlign: 'right' }}>
                  <div style={{ fontSize: '10px', opacity: 0.5, letterSpacing: '1px' }}>SYSTEM_LATENCY</div>
                  <div style={{ fontSize: '20px', fontWeight: '900', color: '#10B981' }}>12ms (EDGE)</div>
                </div>
              </div>
            </div>

            {/* 2. Automated Reports Panel */}
            <div style={{ backgroundColor: 'rgba(255, 215, 0, 0.02)', border: '1px solid rgba(255, 215, 0, 0.1)', borderRadius: '24px', padding: '40px', backdropFilter: 'blur(20px)' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '40px' }}>
                <Send size={20} />
                <h2 style={{ fontSize: '13px', fontWeight: '900', letterSpacing: '2px', textTransform: 'uppercase' }}>Automated Report Dispatcher</h2>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '48px' }}>
                <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                  {[
                    { label: 'DAILY_ANALYTICS_DISPATCH', icon: <Mail size={16} />, active: true },
                    { label: 'CRITICAL_STOCK_WA_ALERTS', icon: <MessageSquare size={16} />, active: true },
                    { label: 'WEEKLY_FINANCIAL_DUMP', icon: <Send size={16} />, active: true },
                  ].map(toggle => (
                    <div key={toggle.label} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '16px', border: '1px solid rgba(255, 215, 0, 0.1)', borderRadius: '12px' }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '12px', fontSize: '11px', fontWeight: '700' }}>
                        {toggle.icon} {toggle.label}
                      </div>
                      <div style={{ width: '44px', height: '22px', borderRadius: '11px', backgroundColor: toggle.active ? '#FFD700' : 'rgba(255,255,255,0.05)', position: 'relative', cursor: 'pointer', border: '1px solid rgba(255,215,0,0.2)' }}>
                        <div style={{ position: 'absolute', top: '2px', left: toggle.active ? '24px' : '2px', width: '16px', height: '16px', borderRadius: '50%', backgroundColor: toggle.active ? '#121212' : '#FFD700', transition: 'all 0.3s ease' }} />
                      </div>
                    </div>
                  ))}
                </div>

                <div style={{ backgroundColor: 'rgba(0,0,0,0.3)', padding: '24px', borderRadius: '16px', border: '1px solid rgba(255, 215, 0, 0.1)' }}>
                  <div style={{ fontSize: '10px', color: '#10B981', marginBottom: '20px', letterSpacing: '2px', fontWeight: '900' }}>LISTENING_MODE: ENABLED</div>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '14px' }}>
                    {[
                      { dest: 'ncarrillok@gmail.com', time: '16:58', status: 'WAITING_TRIGGER' },
                      { dest: 'Crosti_Admin_WA', time: '16:55', status: 'LISTENING' },
                    ].map((msg, i) => (
                      <div key={i} style={{ display: 'flex', justifyContent: 'space-between', fontSize: '11px' }}>
                        <span style={{ fontWeight: '600' }}>{msg.dest}</span>
                        <div style={{ display: 'flex', gap: '10px', alignItems: 'center' }}>
                          <span style={{ opacity: 0.4 }}>{msg.time}</span>
                          <Activity size={12} color="#10B981" />
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            </div>

          </div>

          {/* Sidebar Area */}
          <div style={{ gridColumn: 'span 4', display: 'flex', flexDirection: 'column', gap: '40px' }}>
            
            {/* 3. PIN System Information */}
            <div style={{ backgroundColor: 'rgba(255, 215, 0, 0.02)', border: '1px solid rgba(255, 215, 0, 0.1)', borderRadius: '24px', padding: '40px', backdropFilter: 'blur(20px)' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '32px' }}>
                <Zap size={20} />
                <h2 style={{ fontSize: '13px', fontWeight: '900', letterSpacing: '2px', textTransform: 'uppercase' }}>Access Protocol</h2>
              </div>
              <div style={{ backgroundColor: 'rgba(0,0,0,0.4)', padding: '24px', borderRadius: '20px', border: '1px dashed #FFD700', textAlign: 'center' }}>
                <div style={{ fontSize: '10px', opacity: 0.4, marginBottom: '10px' }}>VAULT_MASTER_PIN</div>
                <div style={{ fontSize: '32px', fontWeight: '900', letterSpacing: '8px' }}>1234</div>
                <div style={{ fontSize: '9px', color: '#10B981', marginTop: '16px', fontWeight: '900' }}>VERIFIED_SUPERADMIN_ACCESS</div>
              </div>
            </div>

            {/* 4. System Timeline */}
            <div style={{ backgroundColor: 'rgba(255, 215, 0, 0.02)', border: '1px solid rgba(255, 215, 0, 0.1)', borderRadius: '24px', padding: '40px', flex: 1, backdropFilter: 'blur(20px)' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '40px' }}>
                <History size={20} />
                <h2 style={{ fontSize: '13px', fontWeight: '900', letterSpacing: '2px', textTransform: 'uppercase' }}>Update History</h2>
              </div>
              <div style={{ position: 'relative', paddingLeft: '24px', borderLeft: '1px solid rgba(255, 215, 0, 0.2)' }}>
                {versionHistory.map((h, i) => (
                  <div key={h.version} style={{ position: 'relative', marginBottom: '32px' }}>
                    <div style={{ position: 'absolute', left: '-30px', top: '0', width: '10px', height: '10px', borderRadius: '50%', backgroundColor: i === 0 ? '#FFD700' : '#0A0A0A', border: '2px solid #FFD700' }} />
                    <div style={{ fontSize: '12px', fontWeight: '900', marginBottom: '6px' }}>{h.version} | {h.date}</div>
                    <div style={{ fontSize: '11px', opacity: 0.5, lineHeight: '1.6' }}>{h.desc}</div>
                  </div>
                ))}
              </div>
            </div>

          </div>
        </div>
      </div>

      <style jsx global>{`
        @import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;700;800&display=swap');
        @keyframes blink {
          0% { opacity: 1; }
          50% { opacity: 0.7; }
          100% { opacity: 1; }
        }
        ::-webkit-scrollbar { width: 4px; }
        ::-webkit-scrollbar-track { background: #0A0A0A; }
        ::-webkit-scrollbar-thumb { background: rgba(255, 215, 0, 0.2); border-radius: 10px; }
      `}</style>
    </div>
  );
}
