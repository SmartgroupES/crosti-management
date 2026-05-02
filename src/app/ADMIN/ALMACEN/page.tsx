'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, Package, Plus, Save, AlertCircle, TrendingDown, DollarSign } from 'lucide-react';

export default function AlmacenPage() {
  const [materials, setMaterials] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [isSaving, setIsSaving] = useState<number | null>(null);

  useEffect(() => {
    fetchMaterials();
  }, []);

  const fetchMaterials = async () => {
    try {
      const res = await fetch('/api/admin/raw-materials');
      const data = await res.json();
      setMaterials(data);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  };

  const handleUpdate = async (material: any) => {
    setIsSaving(material.id);
    try {
      await fetch('/api/admin/raw-materials', {
        method: 'POST',
        body: JSON.stringify(material)
      });
    } catch (e) {
      console.error(e);
    } finally {
      setIsSaving(null);
    }
  };

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Cargando Almacén...</div>;

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif', color: '#1A1A1A' }}>
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/ADMIN/importar" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A GESTIÓN
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Gestión de Almacén</h1>
          <p style={{ fontSize: '13px', color: '#9CA3AF', marginTop: '4px' }}>Control de inventario y costos de materia prima.</p>
        </div>
        <button style={{ backgroundColor: '#1A1A1A', color: 'white', border: 'none', padding: '12px 24px', borderRadius: '12px', fontSize: '14px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}>
          <Plus size={18} /> Nuevo Insumo
        </button>
      </header>

      <main style={{ padding: '40px' }}>
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>MATERIAL</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>STOCK ACTUAL</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>ALERTA MÍNIMA</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>COSTO PROM. (€)</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>ACCIONES</th>
              </tr>
            </thead>
            <tbody>
              {materials.map((m) => (
                <tr key={m.id} style={{ borderBottom: '1px solid #F3F4F6' }}>
                  <td style={{ padding: '20px 24px' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                      <div style={{ backgroundColor: '#F3F4F6', padding: '8px', borderRadius: '8px' }}><Package size={16} color="#6B7280" /></div>
                      <span style={{ fontSize: '14px', fontWeight: 'bold' }}>{m.name}</span>
                    </div>
                  </td>
                  <td style={{ padding: '20px 24px' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                      <input 
                        type="number" 
                        value={m.current_stock} 
                        onChange={(e) => {
                          const newMats = [...materials];
                          const index = newMats.findIndex(x => x.id === m.id);
                          newMats[index].current_stock = parseFloat(e.target.value);
                          setMaterials(newMats);
                        }}
                        style={{ width: '80px', padding: '8px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '14px', fontWeight: 'bold' }}
                      />
                      <span style={{ fontSize: '12px', color: '#9CA3AF' }}>{m.unit_measure}</span>
                      {m.current_stock <= m.min_stock_alert && <AlertCircle size={16} color="#EF4444" />}
                    </div>
                  </td>
                  <td style={{ padding: '20px 24px' }}>
                    <input 
                      type="number" 
                      value={m.min_stock_alert} 
                      onChange={(e) => {
                        const newMats = [...materials];
                        const index = newMats.findIndex(x => x.id === m.id);
                        newMats[index].min_stock_alert = parseFloat(e.target.value);
                        setMaterials(newMats);
                      }}
                      style={{ width: '80px', padding: '8px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '14px' }}
                    />
                  </td>
                  <td style={{ padding: '20px 24px' }}>
                    <div style={{ position: 'relative' }}>
                      <span style={{ position: 'absolute', left: '10px', top: '10px', fontSize: '12px', color: '#9CA3AF' }}>€</span>
                      <input 
                        type="number" 
                        step="0.01"
                        value={m.average_cost_per_unit} 
                        onChange={(e) => {
                          const newMats = [...materials];
                          const index = newMats.findIndex(x => x.id === m.id);
                          newMats[index].average_cost_per_unit = parseFloat(e.target.value);
                          setMaterials(newMats);
                        }}
                        style={{ width: '100px', padding: '8px 8px 8px 24px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '14px' }}
                      />
                    </div>
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'center' }}>
                    <button 
                      onClick={() => handleUpdate(m)}
                      disabled={isSaving === m.id}
                      style={{ 
                        backgroundColor: '#1A1A1A', 
                        color: 'white', 
                        border: 'none', 
                        padding: '8px 16px', 
                        borderRadius: '8px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        cursor: 'pointer',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '6px',
                        margin: '0 auto'
                      }}
                    >
                      <Save size={14} />
                      {isSaving === m.id ? 'Guardando...' : 'Guardar'}
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </main>
    </div>
  );
}
