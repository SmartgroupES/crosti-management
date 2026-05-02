'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { Printer, Download, ArrowLeft, CheckCircle2, AlertTriangle, Zap, Cookie, UtensilsCrossed, X, Loader2, AlertCircle } from 'lucide-react';

export default function PropuestaProduccionPage() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [prepList, setPrepList] = useState<any[]>([]);
  const [showPrep, setShowPrep] = useState(false);
  const [isCalculatingPrep, setIsCalculatingPrep] = useState(false);

  useEffect(() => {
    loadData();
  }, []);

  const loadData = async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch('/api/planificacion/prediccion');
      const json = await res.json();
      if (json.error) throw new Error(json.error);
      setData(json);
      setLoading(false);
    } catch (e: any) {
      console.error(e);
      setError(e.message || 'Error al conectar con el motor IPS');
      setLoading(false);
    }
  };

  const fetchPrepList = async () => {
    setIsCalculatingPrep(true);
    setShowPrep(true);
    try {
      const plan = data.predictions.map((p: any) => ({ productId: p.id, quantity: p.suggested_production }));
      const res = await fetch('/api/planificacion/insumos', {
        method: 'POST',
        body: JSON.stringify({ plan })
      });
      const json = await res.json();
      setPrepList(json);
    } catch (e) {
      console.error(e);
    } finally {
      setIsCalculatingPrep(false);
    }
  };

  if (loading) {
    return (
      <div style={{ backgroundColor: '#EDE8D0', minHeight: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <div style={{ textAlign: 'center' }}>
          <Loader2 size={40} className="animate-spin" style={{ margin: '0 auto 20px auto', color: '#1A1A1A' }} />
          <div style={{ fontSize: '14px', fontWeight: 'bold', marginBottom: '10px' }}>Ejecutando Algoritmo IPS...</div>
          <div style={{ color: '#9CA3AF', fontSize: '12px' }}>Analizando patrones históricos para mañana ({new Date(Date.now() + 86400000).toLocaleDateString('es-ES', { weekday: 'long' })})</div>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div style={{ backgroundColor: '#EDE8D0', minHeight: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <div style={{ textAlign: 'center', maxWidth: '400px', padding: '40px', backgroundColor: 'white', borderRadius: '32px', border: '1px solid #E5E7EB', boxShadow: '0 20px 25px -5px rgba(0,0,0,0.05)' }}>
          <div style={{ backgroundColor: '#FEE2E2', width: '60px', height: '60px', borderRadius: '20px', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 24px auto' }}>
            <AlertTriangle size={30} color="#EF4444" />
          </div>
          <h2 style={{ fontSize: '18px', fontWeight: 'bold', marginBottom: '12px' }}>Error en el Motor IPS</h2>
          <p style={{ fontSize: '14px', color: '#666', marginBottom: '24px' }}>{error}</p>
          <button 
            onClick={loadData}
            style={{ backgroundColor: '#1A1A1A', color: 'white', border: 'none', padding: '14px 24px', borderRadius: '12px', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '8px', margin: '0 auto' }}
          >
            <Zap size={16} /> Reintentar Algoritmo
          </button>
        </div>
      </div>
    );
  }

  const predictions = data?.predictions || [];

  return (
    <div style={{ backgroundColor: '#EDE8D0', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif', color: '#2D2926' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/PLANIFICACION" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A PLANIFICACIÓN
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>PROPUESTA DE PRODUCCIÓN</h1>
          <p style={{ fontSize: '13px', color: '#9CA3AF', margin: '4px 0 0 0' }}>Plan para el {data.dayName}, {new Date(data.date).toLocaleDateString('es-ES', { day: 'numeric', month: 'long' })}</p>
        </div>
        <div style={{ display: 'flex', gap: '12px' }}>
          <button 
            onClick={fetchPrepList}
            style={{ backgroundColor: '#801515', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '12px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}
          >
            <UtensilsCrossed size={16} /> VER HOJA DE PREP
          </button>
          <button style={{ backgroundColor: 'white', border: '1px solid #E5E7EB', padding: '10px 20px', borderRadius: '12px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <Printer size={16} /> IMPRIMIR HOJA
          </button>
          <button 
            onClick={async () => {
              if (!confirm('¿Deseas aprobar este plan y descontar las materias primas del inventario?')) return;
              try {
                const plan = data.predictions.map((p: any) => ({ productId: p.id, quantity: p.suggested_production }));
                const res = await fetch('/api/planificacion/aprobar', {
                  method: 'POST',
                  body: JSON.stringify({ plan, date: data.date })
                });
                const json = await res.json();
                if (json.success) {
                  alert('Plan aprobado con éxito. El inventario ha sido actualizado.');
                } else {
                  alert('Error: ' + json.error);
                }
              } catch (e) {
                alert('Error al aprobar el plan');
              }
            }}
            style={{ backgroundColor: '#1A1A1A', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '12px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}
          >
            <CheckCircle2 size={16} /> APROBAR TODO
          </button>
        </div>
      </header>

      {/* Prep List Modal */}
      {showPrep && (
        <div style={{ position: 'fixed', top: 0, left: 0, right: 0, bottom: 0, backgroundColor: 'rgba(0,0,0,0.5)', zIndex: 100, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '20px' }}>
          <div style={{ backgroundColor: 'white', borderRadius: '24px', width: '100%', maxWidth: '500px', maxHeight: '80vh', overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
            <div style={{ padding: '24px', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                <UtensilsCrossed size={20} color="#801515" />
                <h2 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>Hoja de Preparación</h2>
              </div>
              <button onClick={() => setShowPrep(false)} style={{ background: 'none', border: 'none', cursor: 'pointer', color: '#9CA3AF' }}><X size={20} /></button>
            </div>
            
            <div style={{ padding: '24px', overflowY: 'auto' }}>
              {isCalculatingPrep ? (
                <div style={{ textAlign: 'center', padding: '40px' }}>
                  <Loader2 size={32} className="animate-spin" style={{ margin: '0 auto 16px auto', color: '#801515' }} />
                  <div style={{ fontSize: '14px', color: '#666' }}>Calculando ingredientes...</div>
                </div>
              ) : prepList.length === 0 ? (
                <div style={{ textAlign: 'center', padding: '40px', color: '#9CA3AF' }}>No hay recetas configuradas para estos productos.</div>
              ) : (
                <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
                  {prepList.map((item: any, idx: number) => (
                    <div key={idx} style={{ backgroundColor: '#F9FAFB', padding: '16px', borderRadius: '16px', border: item.gap > 0 ? '1px solid #FCA5A5' : '1px solid #F3F4F6' }}>
                      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '8px' }}>
                        <span style={{ fontSize: '14px', fontWeight: 'bold' }}>{item.name}</span>
                        <span style={{ fontSize: '16px', fontWeight: 'bold' }}>
                          {item.total.toLocaleString('es-ES', { maximumFractionDigits: 2 })} {item.unit}
                        </span>
                      </div>
                      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', fontSize: '12px' }}>
                        <div style={{ color: '#6B7280' }}>
                          Stock actual: <span style={{ fontWeight: 'bold' }}>{item.stock} {item.unit}</span>
                        </div>
                        {item.gap > 0 ? (
                          <div style={{ color: '#EF4444', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '4px' }}>
                            <AlertCircle size={14} /> Faltan: {item.gap.toLocaleString('es-ES', { maximumFractionDigits: 2 })} {item.unit}
                          </div>
                        ) : (
                          <div style={{ color: '#10B981', fontWeight: 'bold' }}>Stock Suficiente</div>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>

            <div style={{ padding: '20px 24px', backgroundColor: '#F9FAFB', borderTop: '1px solid #E5E7EB' }}>
              <button 
                onClick={() => window.print()}
                style={{ width: '100%', backgroundColor: '#1A1A1A', color: 'white', padding: '14px', borderRadius: '12px', border: 'none', fontWeight: 'bold', fontSize: '14px', cursor: 'pointer' }}
              >
                Imprimir Lista de Prep
              </button>
            </div>
          </div>
        </div>
      )}

      <main style={{ padding: '40px', maxWidth: '1000px', margin: '0 auto' }}>
        
        {/* Intelligence Alert */}
        <div style={{ backgroundColor: '#F0FDF4', border: '1px solid #BBF7D0', padding: '20px', borderRadius: '24px', display: 'flex', gap: '16px', marginBottom: '40px' }}>
          <div style={{ backgroundColor: '#BBF7D0', width: '40px', height: '40px', borderRadius: '12px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
            <Zap size={20} color="#166534" />
          </div>
          <div>
            <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#166534', marginBottom: '4px' }}>Algoritmo IPS: Inteligencia Predictiva Activa</div>
            <p style={{ fontSize: '13px', color: '#166534', margin: 0, opacity: 0.8, lineHeight: '1.5' }}>
              Los valores sugeridos incluyen un **Stock de Seguridad** calculado mediante la desviación estándar de las ventas de los últimos meses para el mismo día de la semana.
            </p>
          </div>
        </div>

        {/* Bake Sheet Table */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <div style={{ padding: '24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Hoja de Horneado (Bake Sheet)</h3>
            <div style={{ fontSize: '12px', color: '#9CA3AF' }}>Total Unidades: 290</div>
          </div>
          
          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>PRODUCTO</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>CIERRE HOY</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>OBJETIVO STOCK</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>A HORNEAR</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>PRIORIDAD</th>
              </tr>
            </thead>
            <tbody>
              {predictions.map((item: any, idx: number) => (
                <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                  <td style={{ padding: '20px 24px' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                      <div style={{ backgroundColor: '#FAF9F6', padding: '8px', borderRadius: '8px' }}><Cookie size={16} color="#D97706" /></div>
                      <span style={{ fontSize: '14px', fontWeight: 'bold' }}>{item.name}</span>
                    </div>
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'right', fontSize: '14px', color: '#6B7280' }}>{item.current_stock}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'right', fontSize: '14px', color: '#6B7280' }}>{item.avg_historical.toFixed(1)}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'right', fontSize: '18px', fontWeight: 'bold', color: '#1A1A1A' }}>{item.suggested_production}</td>
                  <td style={{ padding: '20px 24px' }}>
                    <span style={{ 
                      fontSize: '10px', 
                      fontWeight: 'bold', 
                      padding: '4px 8px', 
                      borderRadius: '4px',
                      backgroundColor: item.confidence === 'Alta' ? '#F0FDF4' : (item.confidence === 'Media' ? '#FEF3C7' : '#F9FAFB'),
                      color: item.confidence === 'Alta' ? '#10B981' : (item.confidence === 'Media' ? '#D97706' : '#6B7280')
                    }}>
                      Confianza: {item.confidence}
                    </span>
                    <div style={{ fontSize: '9px', color: '#9CA3AF', marginTop: '4px' }}>{item.reason}</div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>

        <div style={{ marginTop: '30px', display: 'flex', justifyContent: 'flex-end', gap: '20px' }}>
           <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#9CA3AF', fontSize: '12px' }}>
              <AlertTriangle size={14} /> Los valores pueden ajustarse manualmente si hay eventos especiales.
           </div>
        </div>

      </main>
    </div>
  );
}
