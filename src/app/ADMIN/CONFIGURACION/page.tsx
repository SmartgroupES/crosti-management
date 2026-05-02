'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, Save, Trash2, Plus, DollarSign, Calculator, Info, Loader2 } from 'lucide-react';

interface FixedCost {
  id?: number;
  category: string;
  amount: number;
  recurrence: string;
}

export default function ConfiguracionCostosPage() {
  const [costs, setCosts] = useState<FixedCost[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isSaving, setIsSaving] = useState(false);
  const [newCost, setNewCost] = useState<FixedCost>({ category: '', amount: 0, recurrence: 'monthly' });

  useEffect(() => {
    fetchCosts();
  }, []);

  const fetchCosts = async () => {
    try {
      const res = await fetch('/api/admin/fixed-costs');
      const data = await res.json();
      if (Array.isArray(data)) setCosts(data);
    } catch (e) {
      console.error('Error fetching costs:', e);
    } finally {
      setIsLoading(false);
    }
  };

  const handleAdd = async () => {
    if (!newCost.category || newCost.amount <= 0) return;
    setIsSaving(true);
    try {
      await fetch('/api/admin/fixed-costs', {
        method: 'POST',
        body: JSON.stringify(newCost),
      });
      setNewCost({ category: '', amount: 0, recurrence: 'monthly' });
      await fetchCosts();
    } catch (e) {
      console.error(e);
    } finally {
      setIsSaving(false);
    }
  };

  const handleDelete = async (id: number) => {
    if (!confirm('¿Eliminar este costo?')) return;
    try {
      await fetch(`/api/admin/fixed-costs?id=${id}`, { method: 'DELETE' });
      await fetchCosts();
    } catch (e) {
      console.error(e);
    }
  };

  const totalMonthly = costs.reduce((acc, curr) => acc + curr.amount, 0);

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/ADMIN/importar" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A ADMIN
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Configuración de Costos Fijos</h1>
        </div>
        <div style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '12px 24px', borderRadius: '16px', display: 'flex', alignItems: 'center', gap: '10px' }}>
          <Calculator size={18} />
          <div style={{ textAlign: 'right' }}>
            <div style={{ fontSize: '10px', opacity: 0.6, textTransform: 'uppercase' }}>Total Fijo Mensual</div>
            <div style={{ fontSize: '18px', fontWeight: 'bold' }}>{totalMonthly.toLocaleString('es-ES')} €</div>
          </div>
        </div>
      </header>

      <main style={{ padding: '40px', maxWidth: '900px', margin: '0 auto' }}>
        
        <div style={{ backgroundColor: '#DBEAFE', padding: '20px', borderRadius: '20px', display: 'flex', gap: '16px', marginBottom: '40px', border: '1px solid #BFDBFE' }}>
          <Info size={24} color="#1E40AF" />
          <div>
            <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#1E40AF', marginBottom: '4px' }}>Importancia Estratégica</div>
            <p style={{ fontSize: '13px', color: '#1E40AF', margin: 0, opacity: 0.8, lineHeight: '1.5' }}>
              Estos datos permiten al sistema calcular el **Punto de Equilibrio**. Sabiendo cuánto gastas en alquiler y nómina, la IA puede determinar exactamente cuántas galletas necesitas vender al día para que el negocio sea rentable.
            </p>
          </div>
        </div>

        {/* Add New Cost */}
        <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB', marginBottom: '30px' }}>
          <h3 style={{ fontSize: '16px', fontWeight: 'bold', marginBottom: '20px' }}>Añadir Nuevo Concepto</h3>
          <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr 1fr auto', gap: '16px', alignItems: 'flex-end' }}>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>CATEGORÍA / CONCEPTO</label>
              <input 
                type="text" 
                placeholder="Ej. Alquiler Local Velázquez" 
                value={newCost.category}
                onChange={(e) => setNewCost({...newCost, category: e.target.value})}
                style={{ padding: '12px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '14px' }}
              />
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>IMPORTE (€)</label>
              <input 
                type="number" 
                placeholder="0.00" 
                value={newCost.amount || ''}
                onChange={(e) => setNewCost({...newCost, amount: parseFloat(e.target.value)})}
                style={{ padding: '12px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '14px' }}
              />
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>RECURRENCIA</label>
              <select 
                value={newCost.recurrence}
                onChange={(e) => setNewCost({...newCost, recurrence: e.target.value})}
                style={{ padding: '12px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '14px', backgroundColor: '#F9FAFB' }}
              >
                <option value="monthly">Mensual</option>
                <option value="weekly">Semanal</option>
                <option value="yearly">Anual</option>
              </select>
            </div>
            <button 
              onClick={handleAdd}
              disabled={isSaving}
              style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '12px 24px', borderRadius: '12px', border: 'none', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '8px' }}
            >
              {isSaving ? <Loader2 size={16} className="animate-spin" /> : <Plus size={16} />}
              Añadir
            </button>
          </div>
        </div>

        {/* List of Costs */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>CATEGORÍA</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>RECURRENCIA</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>IMPORTE</th>
                <th style={{ padding: '16px 24px', width: '50px' }}></th>
              </tr>
            </thead>
            <tbody>
              {isLoading ? (
                <tr><td colSpan={4} style={{ padding: '40px', textAlign: 'center', color: '#9CA3AF' }}>Cargando costos...</td></tr>
              ) : costs.length === 0 ? (
                <tr><td colSpan={4} style={{ padding: '40px', textAlign: 'center', color: '#9CA3AF' }}>No hay costos fijos registrados.</td></tr>
              ) : costs.map((cost) => (
                <tr key={cost.id} style={{ borderBottom: '1px solid #F3F4F6' }}>
                  <td style={{ padding: '20px 24px', fontSize: '14px', fontWeight: '600' }}>{cost.category}</td>
                  <td style={{ padding: '20px 24px' }}>
                    <span style={{ fontSize: '10px', fontWeight: 'bold', padding: '4px 8px', borderRadius: '4px', backgroundColor: '#F3F4F6', color: '#666', textTransform: 'uppercase' }}>
                      {cost.recurrence === 'monthly' ? 'Mensual' : cost.recurrence === 'weekly' ? 'Semanal' : 'Anual'}
                    </span>
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'right', fontSize: '14px', fontWeight: 'bold' }}>
                    {cost.amount.toLocaleString('es-ES')} €
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'center' }}>
                    <button 
                      onClick={() => cost.id && handleDelete(cost.id)}
                      style={{ background: 'none', border: 'none', color: '#EF4444', cursor: 'pointer', opacity: 0.6 }}
                    >
                      <Trash2 size={16} />
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>

      </main>

      <style jsx global>{`
        .animate-spin {
          animation: spin 1s linear infinite;
        }
        @keyframes spin {
          from { transform: rotate(0deg); }
          to { transform: rotate(360deg); }
        }
      `}</style>
    </div>
  );
}
