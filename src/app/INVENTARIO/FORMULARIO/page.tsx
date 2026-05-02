'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, Box, ChevronRight, Send, Loader2, CheckCircle2 } from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function InventarioFormularioPage() {
  const router = useRouter();
  const [products, setProducts] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [success, setSuccess] = useState(false);
  const [selectedLocation, setSelectedLocation] = useState('');
  
  const [counts, setCounts] = useState<Record<string, { closing: number, waste: number }>>({});

  useEffect(() => {
    fetch('/api/planificacion/prediccion') // We can use this to get current products and their status
      .then(res => res.json())
      .then(json => {
        setProducts(json.predictions || []);
        // Initialize counts
        const initialCounts: Record<string, { closing: number, waste: number }> = {};
        json.predictions?.forEach((p: any) => {
          initialCounts[p.id] = { closing: 0, waste: 0 };
        });
        setCounts(initialCounts);
        setLoading(false);
      })
      .catch(e => console.error(e));
  }, []);

  const handleInputChange = (id: string, field: 'closing' | 'waste', value: string) => {
    setCounts(prev => ({
      ...prev,
      [id]: {
        ...prev[id],
        [field]: parseInt(value) || 0
      }
    }));
  };

  const handleSubmit = async () => {
    if (!selectedLocation) {
      alert('Por favor selecciona una sede');
      return;
    }

    setSubmitting(true);
    try {
      const inventory = Object.entries(counts).map(([id, val]) => ({
        id: parseInt(id),
        closing: val.closing,
        waste: val.waste
      }));

      const res = await fetch('/api/planificacion/cierre', {
        method: 'POST',
        body: JSON.stringify({ inventory, location: selectedLocation })
      });
      const json = await res.json();
      
      if (json.success) {
        setSuccess(true);
        setTimeout(() => router.push('/inventario'), 2000);
      } else {
        alert('Error: ' + json.error);
      }
    } catch (e) {
      alert('Error al guardar el cierre');
    } finally {
      setSubmitting(false);
    }
  };

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Cargando productos...</div>;

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ backgroundColor: '#801515', color: 'white', padding: '20px 40px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
           <div style={{ backgroundColor: 'rgba(255,255,255,0.2)', padding: '6px', borderRadius: '6px' }}><Box size={20} /></div>
           <div>
             <h1 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>Cierre de Inventario</h1>
             <p style={{ fontSize: '12px', margin: 0, opacity: 0.9 }}>Crosti Hub — Registro diario de stock y merma</p>
           </div>
        </div>
        <Link href="/INVENTARIO" style={{ fontSize: '12px', color: 'white', textDecoration: 'none', fontWeight: 'bold' }}>CANCELAR</Link>
      </header>

      {/* Select Location */}
      <div style={{ padding: '24px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB' }}>
        <label style={{ fontSize: '12px', fontWeight: 'bold', color: '#666', display: 'block', marginBottom: '8px' }}>SEDE / UBICACIÓN:</label>
        <select 
          value={selectedLocation}
          onChange={(e) => setSelectedLocation(e.target.value)}
          style={{ width: '100%', padding: '14px', borderRadius: '12px', border: '1px solid #E5E7EB', fontSize: '14px', backgroundColor: '#F9FAFB' }}
        >
          <option value="">— Seleccionar sede —</option>
          <option value="Downtown">Downtown</option>
          <option value="Residencial">Residencial</option>
          <option value="Hub Aeropuerto">Hub Aeropuerto</option>
        </select>
      </div>

      <div style={{ padding: '20px 40px', fontSize: '13px', color: '#801515', fontWeight: 'bold', display: 'flex', justifyContent: 'space-between' }}>
        <span>{new Date().toLocaleDateString('es-ES', { weekday: 'long', day: 'numeric', month: 'long' })}</span>
        <span>REGISTRO DE CIERRE</span>
      </div>

      {/* Product List */}
      <div style={{ padding: '0 40px 120px 40px', maxWidth: '800px', margin: '0 auto' }}>
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <div style={{ backgroundColor: '#F9FAFB', padding: '12px 20px', borderBottom: '1px solid #E5E7EB', display: 'grid', gridTemplateColumns: '1fr 100px 100px', gap: '20px' }}>
            <span style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>PRODUCTO</span>
            <span style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textAlign: 'center' }}>CIERRE</span>
            <span style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textAlign: 'center' }}>MERMA</span>
          </div>

           {products.map((p, idx) => (
             <div key={idx} style={{ padding: '20px', borderBottom: idx === products.length - 1 ? 'none' : '1px solid #F3F4F6', display: 'grid', gridTemplateColumns: '1fr 100px 100px', gap: '20px', alignItems: 'center' }}>
               <div>
                 <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#1A1A1A' }}>{p.name}</div>
                 <div style={{ fontSize: '11px', color: '#9CA3AF' }}>ID: {p.id}</div>
               </div>
               <input 
                 type="number" 
                 placeholder="0"
                 value={counts[p.id]?.closing || ''}
                 onChange={(e) => handleInputChange(p.id, 'closing', e.target.value)}
                 style={{ width: '100%', padding: '12px', borderRadius: '12px', border: '1px solid #E5E7EB', textAlign: 'center', fontSize: '16px', fontWeight: 'bold' }}
               />
               <input 
                 type="number" 
                 placeholder="0"
                 value={counts[p.id]?.waste || ''}
                 onChange={(e) => handleInputChange(p.id, 'waste', e.target.value)}
                 style={{ width: '100%', padding: '12px', borderRadius: '12px', border: '1px solid #E5E7EB', textAlign: 'center', fontSize: '16px', fontWeight: 'bold', color: '#EF4444' }}
               />
             </div>
           ))}
        </div>
      </div>

      {/* Footer Bar */}
      <div style={{ position: 'fixed', bottom: 0, left: 0, right: 0, backgroundColor: 'white', borderTop: '1px solid #E5E7EB', padding: '20px 40px', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 10 }}>
        {success ? (
          <div style={{ display: 'flex', alignItems: 'center', gap: '10px', color: '#10B981', fontWeight: 'bold' }}>
            <CheckCircle2 size={24} /> ¡Cierre guardado correctamente!
          </div>
        ) : (
          <button 
            onClick={handleSubmit}
            disabled={submitting}
            style={{ 
              backgroundColor: selectedLocation ? '#801515' : '#D1D5DB', 
              color: 'white', 
              border: 'none', 
              padding: '16px 60px', 
              borderRadius: '16px', 
              fontSize: '16px', 
              fontWeight: 'bold', 
              cursor: selectedLocation ? 'pointer' : 'default',
              display: 'flex',
              alignItems: 'center',
              gap: '12px',
              width: '100%',
              maxWidth: '400px',
              justifyContent: 'center'
            }}
          >
            {submitting ? <Loader2 size={20} className="animate-spin" /> : <><Send size={20} /> Guardar Cierre Diario</>}
          </button>
        )}
      </div>
    </div>
  );
}
