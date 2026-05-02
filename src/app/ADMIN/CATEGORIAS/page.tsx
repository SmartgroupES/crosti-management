'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, Tag, Layers, CheckCircle2, Search, Filter, Loader2, Save, Plus } from 'lucide-react';

interface Product {
  id: number;
  name: string;
  family_id: number | null;
  family_name: string | null;
}

interface Family {
  id: number;
  name: string;
}

export default function CategorizacionPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [families, setFamilies] = useState<Family[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedIds, setSelectedIds] = useState<number[]>([]);
  const [targetFamily, setTargetFamily] = useState<string>('');
  const [isSaving, setIsSaving] = useState(false);
  const [searchTerm, setSearchTerm] = useState('');

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const [pRes, fRes] = await Promise.all([
        fetch('/api/admin/products/categorize'),
        fetch('/api/admin/families')
      ]);
      const pData = await pRes.json();
      const fData = await fRes.json();
      setProducts(pData);
      setFamilies(fData);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  };

  const toggleSelect = (id: number) => {
    setSelectedIds(prev => 
      prev.includes(id) ? prev.filter(i => i !== id) : [...prev, id]
    );
  };

  const handleBulkUpdate = async () => {
    if (selectedIds.length === 0 || !targetFamily) return;
    setIsSaving(true);
    try {
      await fetch('/api/admin/products/categorize', {
        method: 'POST',
        body: JSON.stringify({ productIds: selectedIds, familyId: parseInt(targetFamily) })
      });
      setSelectedIds([]);
      await fetchData();
    } catch (e) {
      console.error(e);
    } finally {
      setIsSaving(false);
    }
  };

  const seedFamilies = async () => {
    setLoading(true);
    try {
      await fetch('/api/admin/families', {
        method: 'POST',
        body: JSON.stringify({ action: 'seed' })
      });
      await fetchData();
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  };

  const filteredProducts = products.filter(p => 
    p.name.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/ADMIN/importar" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A ADMIN
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Categorización de Portafolio</h1>
        </div>
        {families.length === 0 && (
          <button 
            onClick={seedFamilies}
            style={{ backgroundColor: '#EF4444', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '12px', fontSize: '13px', fontWeight: 'bold', cursor: 'pointer' }}
          >
            Inicializar Familias
          </button>
        )}
      </header>

      <main style={{ padding: '40px', maxWidth: '1100px', margin: '0 auto' }}>
        
        {/* Bulk Action Bar */}
        <div style={{ 
          backgroundColor: 'white', 
          padding: '24px', 
          borderRadius: '24px', 
          border: '1px solid #E5E7EB', 
          display: 'flex', 
          justifyContent: 'space-between', 
          alignItems: 'center', 
          marginBottom: '30px',
          boxShadow: selectedIds.length > 0 ? '0 10px 25px -5px rgba(0, 0, 0, 0.05)' : 'none',
          borderBottom: selectedIds.length > 0 ? '2px solid #EF4444' : '1px solid #E5E7EB',
          transition: 'all 0.3s'
        }}>
          <div style={{ display: 'flex', gap: '20px', alignItems: 'center' }}>
            <div style={{ position: 'relative' }}>
              <input 
                type="text" 
                placeholder="Buscar galleta..." 
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                style={{ padding: '10px 10px 10px 36px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', minWidth: '250px' }}
              />
              <Search size={16} color="#9CA3AF" style={{ position: 'absolute', left: '12px', top: '50%', transform: 'translateY(-50%)' }} />
            </div>
            <div style={{ fontSize: '13px', color: '#666', fontWeight: '500' }}>
              {selectedIds.length} seleccionados
            </div>
          </div>

          <div style={{ display: 'flex', gap: '12px', alignItems: 'center' }}>
            <select 
              value={targetFamily}
              onChange={(e) => setTargetFamily(e.target.value)}
              disabled={selectedIds.length === 0}
              style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', backgroundColor: '#F9FAFB', minWidth: '200px', opacity: selectedIds.length > 0 ? 1 : 0.5 }}
            >
              <option value="">Seleccionar Familia...</option>
              {families.map(f => (
                <option key={f.id} value={f.id}>{f.name}</option>
              ))}
            </select>
            <button 
              onClick={handleBulkUpdate}
              disabled={selectedIds.length === 0 || !targetFamily || isSaving}
              style={{ 
                backgroundColor: '#1A1A1A', 
                color: 'white', 
                padding: '10px 24px', 
                borderRadius: '12px', 
                border: 'none', 
                fontWeight: 'bold', 
                fontSize: '13px',
                cursor: (selectedIds.length === 0 || !targetFamily) ? 'not-allowed' : 'pointer',
                display: 'flex',
                alignItems: 'center',
                gap: '8px'
              }}
            >
              {isSaving ? <Loader2 size={16} className="animate-spin" /> : <Layers size={16} />}
              Asignar Familia
            </button>
          </div>
        </div>

        {/* Product Table */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                <th style={{ padding: '16px 24px', width: '40px' }}>
                  <input 
                    type="checkbox" 
                    onChange={(e) => setSelectedIds(e.target.checked ? filteredProducts.map(p => p.id) : [])}
                    checked={selectedIds.length > 0 && selectedIds.length === filteredProducts.length}
                  />
                </th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>PRODUCTO</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>FAMILIA ACTUAL</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>ACCIONES</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr><td colSpan={4} style={{ padding: '40px', textAlign: 'center', color: '#9CA3AF' }}>Cargando portafolio...</td></tr>
              ) : filteredProducts.length === 0 ? (
                <tr><td colSpan={4} style={{ padding: '40px', textAlign: 'center', color: '#9CA3AF' }}>No se encontraron productos.</td></tr>
              ) : filteredProducts.map((product) => (
                <tr 
                  key={product.id} 
                  style={{ 
                    borderBottom: '1px solid #F3F4F6',
                    backgroundColor: selectedIds.includes(product.id) ? '#FEF2F2' : 'transparent',
                    transition: 'background-color 0.2s'
                  }}
                  onClick={() => toggleSelect(product.id)}
                >
                  <td style={{ padding: '20px 24px' }}>
                    <input 
                      type="checkbox" 
                      checked={selectedIds.includes(product.id)} 
                      onChange={() => {}} // Controlled by row click
                      onClick={(e) => e.stopPropagation()} 
                    />
                  </td>
                  <td style={{ padding: '20px 24px', fontSize: '14px', fontWeight: '600' }}>{product.name}</td>
                  <td style={{ padding: '20px 24px' }}>
                    {product.family_name ? (
                      <span style={{ 
                        fontSize: '10px', 
                        fontWeight: 'bold', 
                        padding: '4px 8px', 
                        borderRadius: '4px', 
                        backgroundColor: '#1A1A1A', 
                        color: 'white',
                        textTransform: 'uppercase'
                      }}>
                        {product.family_name}
                      </span>
                    ) : (
                      <span style={{ fontSize: '11px', color: '#9CA3AF', fontStyle: 'italic' }}>Sin categoría</span>
                    )}
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'right' }}>
                     <button style={{ background: 'none', border: 'none', color: '#EF4444', fontSize: '12px', fontWeight: 'bold', cursor: 'pointer' }}>
                       Editar Receta
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
