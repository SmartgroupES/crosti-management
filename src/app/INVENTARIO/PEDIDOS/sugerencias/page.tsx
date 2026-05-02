'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, ShoppingCart, Package, AlertTriangle, CheckCircle2, ChevronRight, Loader2, Factory, Truck } from 'lucide-react';

export default function SugerenciasPedidosPage() {
  const [suggestions, setSuggestions] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [creating, setCreating] = useState<number | null>(null);

  const fetchSuggestions = () => {
    setLoading(true);
    fetch('/api/inventario/pedidos/sugerir')
      .then(res => res.json())
      .then(json => {
        setSuggestions(json);
        setLoading(false);
      })
      .catch(e => console.error(e));
  };

  useEffect(() => {
    fetchSuggestions();
  }, []);

  const handleCreatePO = async (supplierGroup: any) => {
    setCreating(supplierGroup.supplierId);
    try {
      const res = await fetch('/api/inventario/pedidos', {
        method: 'POST',
        body: JSON.stringify({
          supplier_id: supplierGroup.supplierId,
          items: supplierGroup.items
        })
      });
      if (res.ok) {
        alert('Orden de compra generada como borrador.');
        fetchSuggestions();
      }
    } catch (e) {
      console.error(e);
    } finally {
      setCreating(null);
    }
  };

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Calculando necesidades de abastecimiento...</div>;

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/INVENTARIO" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A INVENTARIO
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Smart Procurement</h1>
          <p style={{ fontSize: '13px', color: '#9CA3AF', margin: '4px 0 0 0' }}>Sugerencias automáticas basadas en proyecciones de producción</p>
        </div>
        <ShoppingCart size={32} color="#801515" />
      </header>

      <main style={{ padding: '40px', maxWidth: '1000px', margin: '0 auto' }}>
        
        {suggestions.length === 0 ? (
          <div style={{ backgroundColor: '#F0FDF4', padding: '40px', borderRadius: '24px', border: '1px solid #BBF7D0', textAlign: 'center' }}>
            <CheckCircle2 size={48} color="#10B981" style={{ marginBottom: '16px' }} />
            <h3 style={{ fontSize: '18px', fontWeight: 'bold', color: '#166534' }}>Stock Optimizado</h3>
            <p style={{ fontSize: '14px', color: '#166534', opacity: 0.8 }}>Tienes suficiente materia prima para cubrir los próximos 7 días de producción planeada.</p>
          </div>
        ) : (
          <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', backgroundColor: '#FFF7ED', padding: '16px 20px', borderRadius: '16px', border: '1px solid #FFEDD5' }}>
              <AlertTriangle size={20} color="#801515" />
              <span style={{ fontSize: '14px', color: '#9A3412', fontWeight: 'bold' }}>
                Se han detectado faltantes para cubrir la producción planeada y el stock de seguridad.
              </span>
            </div>

            {suggestions.map((group, idx) => (
              <div key={idx} style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
                <div style={{ padding: '24px 30px', backgroundColor: '#F9FAFB', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                    <Truck size={20} color="#6B7280" />
                    <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>{group.supplierName}</h3>
                  </div>
                  <button 
                    onClick={() => handleCreatePO(group)}
                    disabled={creating === group.supplierId}
                    style={{ 
                      backgroundColor: '#1A1A1A', 
                      color: 'white', 
                      border: 'none', 
                      padding: '10px 20px', 
                      borderRadius: '12px', 
                      fontSize: '13px', 
                      fontWeight: 'bold', 
                      cursor: 'pointer',
                      display: 'flex',
                      alignItems: 'center',
                      gap: '8px'
                    }}
                  >
                    {creating === group.supplierId ? <Loader2 size={16} className="animate-spin" /> : <Plus size={16} />}
                    Generar Orden de Compra
                  </button>
                </div>

                <div style={{ padding: '0 30px' }}>
                  <table style={{ width: '100%', borderCollapse: 'collapse' }}>
                    <thead>
                      <tr style={{ textAlign: 'left', borderBottom: '1px solid #F3F4F6' }}>
                        <th style={{ padding: '16px 0', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>INGREDIENTE</th>
                        <th style={{ padding: '16px 0', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>STOCK ACTUAL</th>
                        <th style={{ padding: '16px 0', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>PLAN 7 DÍAS</th>
                        <th style={{ padding: '16px 0', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>PEDIDO SUGERIDO</th>
                      </tr>
                    </thead>
                    <tbody>
                      {group.items.map((item: any, i: number) => (
                        <tr key={i} style={{ borderBottom: i === group.items.length - 1 ? 'none' : '1px solid #F3F4F6' }}>
                          <td style={{ padding: '20px 0', fontSize: '14px', fontWeight: 'bold' }}>{item.name}</td>
                          <td style={{ padding: '20px 0', textAlign: 'center', fontSize: '13px' }}>{item.currentStock} {item.unit}</td>
                          <td style={{ padding: '20px 0', textAlign: 'center', fontSize: '13px', color: '#801515', fontWeight: 'bold' }}>
                            {item.neededForProduction} {item.unit}
                          </td>
                          <td style={{ padding: '20px 0', textAlign: 'right' }}>
                            <div style={{ display: 'inline-flex', alignItems: 'center', gap: '8px', backgroundColor: '#F0FDF4', padding: '6px 12px', borderRadius: '8px' }}>
                              <Package size={14} color="#10B981" />
                              <span style={{ fontSize: '14px', fontWeight: 'bold', color: '#166534' }}>{item.suggestedQty} {item.unit}</span>
                            </div>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}

function Plus({ size }: { size: number }) {
  return (
    <svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <line x1="12" y1="5" x2="12" y2="19"></line>
      <line x1="5" y1="12" x2="19" y2="12"></line>
    </svg>
  );
}
