'use client';

import React, { useState, useEffect } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  Users, 
  Trophy, 
  DollarSign, 
  ArrowLeft, 
  Star, 
  TrendingUp, 
  Zap,
  CheckCircle2,
  AlertCircle,
  Loader2,
  Clock
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function PersonalPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [employees, setEmployees] = useState<any[]>([]);

  // Simulated Ranking Data
  const storeRanking = [
    { name: 'Crosti Velázquez', qualityScore: 4.8, sales: 'Alta', trend: '+12%' },
    { name: 'Crosti Quevedo', qualityScore: 4.2, sales: 'Media', trend: '+5%' },
    { name: 'Crosti Salesas', qualityScore: 4.5, sales: 'Media-Alta', trend: '+8%' },
  ];

  // Simulated Incentives (Merma < 5% triggers bonus)
  const currentMerma = 3.8; // < 5%
  const bonusAmount = 150; // Simulated Euro bonus

  useEffect(() => {
    fetch('/api/admin/personal')
      .then(res => res.json())
      .then(json => {
        setEmployees(json);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return (
      <SubPageLayout title="Equipo & Talento">
        <div style={{ height: '50vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
          <Loader2 className="animate-spin" size={40} color="#801515" />
          <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>Sincronizando perfiles de equipo...</p>
        </div>
      </SubPageLayout>
    );
  }

  return (
    <SubPageLayout title="Equipo & Talento">
      {/* 1. Header */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', gap: '16px' }}>
          <button 
            onClick={() => router.push('/admin/personal/horarios')}
            style={{ backgroundColor: 'rgba(255,255,255,0.05)', color: 'white', padding: '12px 24px', borderRadius: '14px', border: '1px solid rgba(255,255,255,0.1)', fontWeight: '800', fontSize: '12px', display: 'flex', alignItems: 'center', gap: '10px', cursor: 'pointer' }}
          >
            <Clock size={16} /> GESTIONAR HORARIOS
          </button>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.2fr 1fr', gap: '40px' }}>
        
        {/* 2. Ranking de Tiendas (IA & Ventas) */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Trophy size={16} /> Ranking de Excelencia IA
          </h2>
          <div style={{ backgroundColor: 'rgba(0,0,0,0.3)', backdropFilter: 'blur(30px)', borderRadius: '32px', border: '1px solid rgba(255, 255, 255, 0.1)', overflow: 'hidden' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
              <thead>
                <tr style={{ backgroundColor: 'rgba(255, 255, 255, 0.03)', borderBottom: '1px solid rgba(255, 255, 255, 0.1)' }}>
                  <th style={{ padding: '20px 24px', fontSize: '10px', color: 'rgba(255,255,255,0.4)', fontWeight: '900' }}>TIENDA</th>
                  <th style={{ padding: '20px 24px', fontSize: '10px', color: 'rgba(255,255,255,0.4)', fontWeight: '900' }}>QUALITY SCORE</th>
                  <th style={{ padding: '20px 24px', fontSize: '10px', color: 'rgba(255,255,255,0.4)', fontWeight: '900' }}>VENTAS</th>
                  <th style={{ padding: '20px 24px', fontSize: '10px', color: 'rgba(255,255,255,0.4)', fontWeight: '900' }}>TENDENCIA</th>
                </tr>
              </thead>
              <tbody>
                {storeRanking.map((store, i) => (
                  <tr key={i} style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
                    <td style={{ padding: '24px' }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                        <div style={{ width: '8px', height: '8px', borderRadius: '50%', backgroundColor: i === 0 ? '#FFD700' : 'rgba(255,255,255,0.2)' }} />
                        <span style={{ fontWeight: '800' }}>{store.name}</span>
                      </div>
                    </td>
                    <td style={{ padding: '24px' }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#FFD700', fontWeight: '900' }}>
                        <Star size={14} fill="#FFD700" /> {store.qualityScore}
                      </div>
                    </td>
                    <td style={{ padding: '24px', fontSize: '12px', fontWeight: '700' }}>{store.sales}</td>
                    <td style={{ padding: '24px', color: '#10B981', fontWeight: '900', fontSize: '12px' }}>{store.trend}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        {/* 3. Panel de Incentivos (Bono de Eficiencia) */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <DollarSign size={16} /> Bono de Eficiencia Operativa
          </h2>
          <div style={{ backgroundColor: 'rgba(16, 185, 129, 0.05)', backdropFilter: 'blur(30px)', padding: '40px', borderRadius: '32px', border: '1px solid rgba(16, 185, 129, 0.2)', textAlign: 'center' }}>
            <div style={{ width: '80px', height: '80px', borderRadius: '50%', backgroundColor: 'rgba(16, 185, 129, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#10B981', margin: '0 auto 24px auto' }}>
              <Zap size={40} />
            </div>
            <h3 style={{ fontSize: '24px', fontWeight: '900', marginBottom: '8px' }}>¡Bono Activado!</h3>
            <p style={{ color: 'rgba(255,255,255,0.5)', fontSize: '13px', marginBottom: '32px' }}>
              La merma del mes actual es de solo **{currentMerma}%**, cumpliendo el objetivo BakeOS (&lt;5%).
            </p>
            
            <div style={{ backgroundColor: 'rgba(0,0,0,0.3)', padding: '24px', borderRadius: '20px', border: '1px solid rgba(255,255,255,0.05)', marginBottom: '32px' }}>
              <div style={{ fontSize: '10px', fontWeight: '900', color: '#10B981', letterSpacing: '2px', marginBottom: '4px' }}>INCENTIVO POR EMPLEADO</div>
              <div style={{ fontSize: '42px', fontWeight: '900', color: 'white' }}>+{bonusAmount}€</div>
            </div>

            <button style={{ width: '100%', padding: '18px', borderRadius: '16px', backgroundColor: '#10B981', border: 'none', color: 'white', fontWeight: '900', fontSize: '12px', cursor: 'pointer', boxShadow: '0 10px 20px rgba(16, 185, 129, 0.3)' }}>
              REPARTIR INCENTIVOS DEL MES
            </button>
          </div>
        </div>

      </div>

      {/* 4. Lista de Personal Actual */}
      <div style={{ marginTop: '60px' }}>
        <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
          <Users size={16} /> Personal de Local
        </h2>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))', gap: '20px' }}>
          {employees.map((emp, i) => (
            <div key={i} style={{ backgroundColor: 'rgba(255,255,255,0.03)', padding: '24px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.08)', display: 'flex', alignItems: 'center', gap: '20px' }}>
              <div style={{ width: '50px', height: '50px', borderRadius: '15px', backgroundColor: 'rgba(249, 115, 22, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontSize: '18px', fontWeight: '900', color: '#801515' }}>
                {emp.name.charAt(0)}
              </div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: '16px', fontWeight: '800' }}>{emp.name}</div>
                <div style={{ fontSize: '11px', color: 'rgba(255,255,255,0.3)', fontWeight: '700' }}>{emp.position.toUpperCase()}</div>
              </div>
              <div style={{ textAlign: 'right' }}>
                <div style={{ fontSize: '14px', fontWeight: '900' }}>{emp.hourly_rate}€</div>
                <div style={{ fontSize: '9px', color: 'rgba(255,255,255,0.3)', fontWeight: '900' }}>POR HORA</div>
              </div>
            </div>
          ))}
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
