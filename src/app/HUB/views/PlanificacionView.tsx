'use client';

import React, { useState, useEffect } from 'react';
import { 
  Brain, 
  ArrowRight, 
  AlertCircle, 
  CheckCircle2, 
  TrendingUp,
  Trash2,
  Package,
  Save
} from 'lucide-react';

export default function PlanificacionView() {
  const [proposal, setProposal] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [isApproved, setIsApproved] = useState(false);

  useEffect(() => {
    // Simulated Smart Planning API Call
    // Production = Expected Sales (3w Avg) + Real Waste - Closing Inventory
    setTimeout(() => {
      setProposal([
        { id: 1, name: 'CRUASÁN DE MANTEQUILLA', expected: 120, waste: 8, stock: 15, plan: 113 },
        { id: 2, name: 'NAPOLITANA DE CHOCOLATE', expected: 85, waste: 5, stock: 10, plan: 80 },
        { id: 3, name: 'COOKIE CHIPS CLÁSICA', expected: 200, waste: 12, stock: 25, plan: 187 },
        { id: 4, name: 'COOKIE RED VELVET', expected: 65, waste: 4, stock: 5, plan: 64 },
        { id: 5, name: 'ENSALADA DE TEMPORADA', expected: 40, waste: 15, stock: 0, plan: 55 },
      ]);
      setLoading(false);
    }, 1000);
  }, []);

  const handleStockUpdate = (id: number, newStock: number) => {
    setProposal(prev => prev.map(p => {
      if (p.id === id) {
        return { ...p, stock: newStock, plan: p.expected + p.waste - newStock };
      }
      return p;
    }));
  };

  if (loading) return <div style={{ padding: '60px', textAlign: 'center', fontWeight: '800', color: '#9CA3AF' }}>EL ALGORITMO SMART PLANNING ESTÁ CALIBRANDO EL HORNO...</div>;

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
      {/* 1. Theory Banner */}
      <div style={{ 
        backgroundColor: '#1A1A1A', color: 'white', padding: '24px', borderRadius: '24px',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        boxShadow: '0 10px 20px rgba(0,0,0,0.05)'
      }}>
        <div style={{ display: 'flex', gap: '16px', alignItems: 'center' }}>
          <div style={{ backgroundColor: '#801515', width: '40px', height: '40px', borderRadius: '12px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <Brain size={24} color="white" />
          </div>
          <div>
            <h2 style={{ fontSize: '14px', fontWeight: '900', letterSpacing: '0.5px' }}>MOTOR DE PREDICCIÓN DINÁMICA</h2>
            <p style={{ fontSize: '11px', color: 'rgba(255,255,255,0.6)', fontWeight: '600', marginTop: '2px' }}>
              PRODUCCIÓN = (VENTA ESPERADA + MERMA HISTÓRICA) - STOCK AL CIERRE
            </p>
          </div>
        </div>
        <div style={{ textAlign: 'right' }}>
           <div style={{ fontSize: '10px', fontWeight: '900', color: '#801515', letterSpacing: '1px' }}>ESTADO DEL ALGORITMO</div>
           <div style={{ fontSize: '14px', fontWeight: '800', color: '#10B981' }}>CALIBRACIÓN ÓPTIMA</div>
        </div>
      </div>

      {/* 2. Planning Table */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
              <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>PRODUCTO</th>
              <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>VENTA ESPERADA</th>
              <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>MERMA</th>
              <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>STOCK</th>
              <th style={{ padding: '16px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right' }}>PRODUCCIÓN</th>
            </tr>
          </thead>
          <tbody>
            {proposal.map((item) => (
              <tr key={item.id} style={{ borderBottom: '1px solid #F3F4F6' }}>
                <td style={{ padding: '16px 24px' }}>
                  <div style={{ fontSize: '13px', fontWeight: '900', color: '#2D2926' }}>{item.name}</div>
                  <div style={{ fontSize: '9px', color: '#9CA3AF', fontWeight: '700' }}>TENDENCIA: +4.2%</div>
                </td>
                <td style={{ padding: '16px 24px', textAlign: 'center' }}>
                  <div style={{ fontSize: '13px', fontWeight: '800' }}>{item.expected}</div>
                </td>
                <td style={{ padding: '16px 24px', textAlign: 'center' }}>
                  <div style={{ fontSize: '13px', fontWeight: '800', color: '#EF4444' }}>+{item.waste}</div>
                </td>
                <td style={{ padding: '16px 24px', textAlign: 'center' }}>
                  <input 
                    type="number" 
                    value={item.stock}
                    onChange={(e) => handleStockUpdate(item.id, parseInt(e.target.value) || 0)}
                    style={{ 
                      width: '50px', padding: '6px', textAlign: 'center', borderRadius: '8px',
                      border: '1.5px solid #E5E7EB', fontWeight: '900', fontSize: '12px', color: '#801515'
                    }}
                  />
                </td>
                <td style={{ padding: '16px 24px', textAlign: 'right' }}>
                  <div style={{ fontSize: '18px', fontWeight: '900', color: '#1A1A1A' }}>{item.plan} <span style={{ fontSize: '10px', color: '#9CA3AF' }}>UDS</span></div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* 3. Approval Bar */}
      <div style={{ display: 'flex', justifyContent: 'flex-end', gap: '16px' }}>
         <button style={{ 
            backgroundColor: 'transparent', color: '#6B7280', padding: '16px 32px', 
            borderRadius: '16px', fontSize: '14px', fontWeight: '900', border: '1px solid #E5E7EB',
            cursor: 'pointer'
         }}>
            GUARDAR BORRADOR
         </button>
         <button 
            onClick={() => setIsApproved(true)}
            style={{ 
               backgroundColor: isApproved ? '#10B981' : '#801515', 
               color: 'white', padding: '16px 40px', 
               borderRadius: '16px', fontSize: '14px', fontWeight: '900', border: 'none',
               display: 'flex', alignItems: 'center', gap: '12px', cursor: 'pointer',
               boxShadow: '0 10px 20px rgba(249, 115, 22, 0.2)',
               transition: 'all 0.3s'
            }}
         >
            {isApproved ? <CheckCircle2 size={20} /> : <Save size={20} />}
            {isApproved ? 'PLAN ENVIADO AL HORNO' : 'APROBAR PLAN DE PRODUCCIÓN'}
         </button>
      </div>
    </div>
  );
}
