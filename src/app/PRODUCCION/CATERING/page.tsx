'use client';

import React, { useState, useEffect, useMemo } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  Users, 
  Package, 
  Clock, 
  Camera, 
  Plus, 
  History,
  Download,
  FileText,
  ChevronDown,
  ChevronUp,
  Calendar,
  Flame,
  CheckCircle2,
  Loader2,
  ArrowLeft
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function CateringPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [isIngredientsOpen, setIsIngredientsOpen] = useState(false);

  useEffect(() => {
    setTimeout(() => setLoading(false), 800);
  }, []);

  // 1. Dataset Simulado: 5 Pedidos T+1, 3 Pedidos T+2
  const t1Orders = [
    { id: 'ORD-001', customer: 'Banco Santander Hub', time: '08:30', items: [{ name: 'Cookie Classic', qty: 48 }, { name: 'Focaccia Romero', qty: 12 }], status: 'En Horno' },
    { id: 'ORD-002', customer: 'Google Office MAD', time: '09:45', items: [{ name: 'Croissant Mantequilla', qty: 60 }, { name: 'Zumo Naranja', qty: 30 }], status: 'Pendiente' },
    { id: 'ORD-003', customer: 'Startup XYZ Breakfast', time: '10:30', items: [{ name: 'Cookie Red Velvet', qty: 24 }, { name: 'Cookie Chocochip', qty: 24 }], status: 'Pendiente' },
    { id: 'ORD-004', customer: 'Hotel Wellington Audit', time: '11:15', items: [{ name: 'Ensalada César', qty: 15 }, { name: 'Focaccia Veggie', qty: 10 }], status: 'Pendiente' },
    { id: 'ORD-005', customer: 'Evento BMW', time: '13:00', items: [{ name: 'Catering Completo Mix', qty: 50 }], status: 'Pendiente' },
  ];

  const t2Orders = [
    { id: 'ORD-006', customer: 'Amazon Logistics', time: '08:00', items: [{ name: 'Cookie Classic', qty: 100 }], status: 'Pendiente' },
    { id: 'ORD-007', customer: 'Hospital La Paz - VIP', time: '12:30', items: [{ name: 'Ensalada César', qty: 20 }, { name: 'Cookie Chocochip', qty: 20 }], status: 'Pendiente' },
    { id: 'ORD-008', customer: 'IE Tower Event', time: '16:00', items: [{ name: 'Focaccia Romero', qty: 40 }], status: 'Pendiente' },
  ];

  // 2. Lógica de Consolidación de Ingredientes
  const ingredientMapping: Record<string, any> = {
    'Cookie Classic': { 'Mantequilla Premium': 0.05, 'Harina Tradición': 0.1, 'Chocolate Bélga': 0.02 },
    'Cookie Chocochip': { 'Mantequilla Premium': 0.05, 'Harina Tradición': 0.1, 'Chocolate Bélga': 0.04 },
    'Cookie Red Velvet': { 'Mantequilla Premium': 0.05, 'Harina Tradición': 0.1, 'Cacao Rojo': 0.02 },
    'Focaccia Romero': { 'Harina Tradición': 0.2, 'Aceite de Oliva': 0.05, 'Romero Fresco': 0.01 },
    'Focaccia Veggie': { 'Harina Tradición': 0.2, 'Aceite de Oliva': 0.05, 'Verduras Mix': 0.15 },
    'Ensalada César': { 'Lechuga Romana': 0.15, 'Pollo Braseado': 0.1, 'Salsa César': 0.03 },
    'Croissant Mantequilla': { 'Mantequilla Premium': 0.04, 'Harina Tradición': 0.06 },
    'Catering Completo Mix': { 'Mantequilla Premium': 1.5, 'Harina Tradición': 3.0, 'Proteína Variada': 2.0 }
  };

  const consolidatedIngredients = useMemo(() => {
    const totals: Record<string, number> = {};
    const allOrders = [...t1Orders, ...t2Orders];
    
    allOrders.forEach(order => {
      order.items.forEach(item => {
        const recipe = ingredientMapping[item.name];
        if (recipe) {
          Object.entries(recipe).forEach(([ing, qtyPerUnit]: [string, any]) => {
            totals[ing] = (totals[ing] || 0) + (qtyPerUnit * item.qty);
          });
        }
      });
    });

    return Object.entries(totals).map(([name, total]) => ({
      name,
      total: total >= 10 ? `${Math.round(total)}kg` : `${total.toFixed(1)}kg`
    }));
  }, [t1Orders, t2Orders]);

  const getStatusBadge = (status: string) => {
    const styles: Record<string, any> = {
      'Listo': { bg: 'rgba(16, 185, 129, 0.2)', color: '#10B981', icon: <CheckCircle2 size={12} /> },
      'En Horno': { bg: 'rgba(249, 115, 22, 0.2)', color: '#801515', icon: <Flame size={12} /> },
      'Pendiente': { bg: 'rgba(255, 255, 255, 0.1)', color: 'rgba(255, 255, 255, 0.5)', icon: <Clock size={12} /> },
    };
    const s = styles[status] || styles['Pendiente'];
    return (
      <div style={{ display: 'flex', alignItems: 'center', gap: '6px', padding: '6px 14px', borderRadius: '20px', backgroundColor: s.bg, color: s.color, fontSize: '10px', fontWeight: '900', textTransform: 'uppercase', letterSpacing: '1px' }}>
        {s.icon} {status}
      </div>
    );
  };

  if (loading) {
    return (
      <SubPageLayout title="Gestión de Catering">
        <div style={{ height: '50vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
          <Loader2 className="animate-spin" size={40} color="#801515" />
          <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '600' }}>Cargando logística de catering...</p>
        </div>
      </SubPageLayout>
    );
  }

  return (
    <SubPageLayout title="Gestión de Catering">
      {/* 1. Cabecera */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', gap: '16px' }}>
          <button className="glass-btn" style={{ padding: '12px 24px', borderRadius: '14px', border: '1px solid rgba(255,255,255,0.1)', backgroundColor: 'rgba(255,255,255,0.05)', color: 'white', fontWeight: '800', fontSize: '12px', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '10px' }}>
            <Plus size={16} color="#801515" /> NUEVO PEDIDO
          </button>
        </div>
      </div>

      {/* 2. Timeline Dinámico */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '40px', marginBottom: '140px' }}>
        
        {/* Bloque T+1 */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Calendar size={16} /> Entregas Mañana (T+1)
          </h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
            {t1Orders.map(order => (
              <div key={order.id} style={{ backgroundColor: 'rgba(255,255,255,0.03)', backdropFilter: 'blur(20px)', padding: '32px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.08)', position: 'relative' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
                  <div style={{ fontSize: '28px', fontWeight: '900', color: '#FFD700' }}>{order.time}</div>
                  {getStatusBadge(order.status)}
                </div>
                <div style={{ fontSize: '12px', color: 'rgba(255,255,255,0.3)', fontWeight: '800', marginBottom: '4px' }}>{order.id}</div>
                <div style={{ fontSize: '18px', fontWeight: '800', marginBottom: '12px' }}>{order.customer}</div>
                <div style={{ display: 'flex', flexWrap: 'wrap', gap: '8px', marginBottom: '24px' }}>
                  {order.items.map(item => (
                    <span key={item.name} style={{ fontSize: '11px', backgroundColor: 'rgba(0,0,0,0.2)', padding: '6px 12px', borderRadius: '8px', color: 'rgba(255,255,255,0.6)' }}>
                      {item.qty}x {item.name}
                    </span>
                  ))}
                </div>
                
                {/* 3. Interacción de Cámara: Abre Calidad IA con order_id */}
                <button 
                  onClick={() => router.push(`/analisis/calidad?order_id=${order.id}`)}
                  style={{ width: '100%', padding: '16px', borderRadius: '16px', backgroundColor: 'rgba(249, 115, 22, 0.1)', border: '1px solid rgba(249, 115, 22, 0.2)', color: '#801515', fontSize: '12px', fontWeight: '900', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '12px', cursor: 'pointer', transition: 'all 0.2s' }}
                  onMouseOver={(e) => e.currentTarget.style.backgroundColor = 'rgba(249, 115, 22, 0.2)'}
                  onMouseOut={(e) => e.currentTarget.style.backgroundColor = 'rgba(249, 115, 22, 0.1)'}
                >
                  <Camera size={18} /> VALIDACIÓN IA
                </button>
              </div>
            ))}
          </div>
        </div>

        {/* Bloque T+2 */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Clock size={16} /> Próximas 48h (T+2)
          </h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
            {t2Orders.map(order => (
              <div key={order.id} style={{ backgroundColor: 'rgba(255,255,255,0.01)', padding: '32px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.05)', opacity: 0.7 }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
                  <div style={{ fontSize: '28px', fontWeight: '900', color: 'rgba(255,215,0,0.4)' }}>{order.time}</div>
                  {getStatusBadge(order.status)}
                </div>
                <div style={{ fontSize: '18px', fontWeight: '800', marginBottom: '12px' }}>{order.customer}</div>
                <div style={{ display: 'flex', flexWrap: 'wrap', gap: '8px' }}>
                  {order.items.map(item => (
                    <span key={item.name} style={{ fontSize: '11px', backgroundColor: 'rgba(0,0,0,0.2)', padding: '6px 12px', borderRadius: '8px', color: 'rgba(255,255,255,0.4)' }}>
                      {item.qty}x {item.name}
                    </span>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>

      </div>

      {/* 3. Resumen de Preparación (Panel Inferior) */}
      <div style={{ 
        position: 'fixed', 
        bottom: 0, 
        left: 0, 
        width: '100%', 
        backgroundColor: 'rgba(20, 5, 5, 0.85)', 
        backdropFilter: 'blur(50px)',
        borderTop: '1px solid rgba(249, 115, 22, 0.3)',
        zIndex: 100,
        transition: 'height 0.6s cubic-bezier(0.16, 1, 0.3, 1)',
        height: isIngredientsOpen ? '450px' : '80px',
        padding: '0 5%',
        boxShadow: '0 -20px 40px rgba(0,0,0,0.4)'
      }}>
        <div 
          onClick={() => setIsIngredientsOpen(!isIngredientsOpen)}
          style={{ height: '80px', display: 'flex', alignItems: 'center', justifyContent: 'space-between', cursor: 'pointer' }}
        >
          <div style={{ display: 'flex', alignItems: 'center', gap: '16px' }}>
            <Package color="#801515" size={24} />
            <h3 style={{ fontSize: '16px', fontWeight: '900', letterSpacing: '2px', textTransform: 'uppercase', margin: 0, color: 'white' }}>Resumen de Preparación (48h)</h3>
            <span style={{ fontSize: '10px', backgroundColor: '#801515', padding: '4px 10px', borderRadius: '10px', color: 'white', fontWeight: '900' }}>
              {consolidatedIngredients.length} INGREDIENTES
            </span>
          </div>
          <div style={{ backgroundColor: 'rgba(249, 115, 22, 0.1)', width: '32px', height: '32px', borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#801515' }}>
            {isIngredientsOpen ? <ChevronDown size={20} /> : <ChevronUp size={20} />}
          </div>
        </div>

        <div style={{ padding: '20px 0 60px 0', display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(220px, 1fr))', gap: '20px', overflowY: 'auto', maxHeight: '340px' }}>
          {consolidatedIngredients.map(ing => (
            <div key={ing.name} style={{ backgroundColor: 'rgba(255,255,255,0.03)', padding: '24px', borderRadius: '20px', border: '1px solid rgba(255,255,255,0.1)' }}>
              <div style={{ fontSize: '10px', color: 'rgba(255,255,255,0.4)', fontWeight: '900', letterSpacing: '1px', marginBottom: '8px', textTransform: 'uppercase' }}>{ing.name}</div>
              <div style={{ fontSize: '24px', fontWeight: '900', color: '#801515' }}>{ing.total}</div>
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
        ::-webkit-scrollbar {
          width: 6px;
        }
        ::-webkit-scrollbar-thumb {
          background: rgba(249, 115, 22, 0.2);
          border-radius: 10px;
        }
      `}</style>
    </SubPageLayout>
  );
}
