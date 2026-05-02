'use client';

import React, { useState, useEffect } from 'react';
import { 
  BookOpen, 
  Search, 
  Plus, 
  ChevronRight,
  Database,
  ChefHat,
  CheckCircle,
  AlertCircle,
  Info,
  Save
} from 'lucide-react';

import RecipeForm from '@/components/recipes/RecipeForm';

export default function RecetasView() {
  const [data, setData] = useState<{ recetas: any[], subRecetas: any[], rawRecetas: any[], rawSubRecetas: any[] }>({ 
    recetas: [], subRecetas: [], rawRecetas: [], rawSubRecetas: [] 
  });
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [showForm, setShowForm] = useState(false);
  const [activeItems, setActiveItems] = useState<Record<string, boolean>>({});
  const [savingId, setSavingId] = useState<string | null>(null);
  const [expandedRecipe, setExpandedRecipe] = useState<string | null>(null);
  const [toast, setToast] = useState<{ message: string, type: 'success' | 'error' } | null>(null);

  const fetchData = () => {
    setLoading(true);
    fetch('/api/recetas')
      .then(res => res.json())
      .then(json => {
        const rawRecetas = json.recetas || [];
        const rawSubRecetas = json.subrecetas || [];
        const statusMap = json.statusMap || {};
        
        // Agrupar por Producto Terminado con discriminación de sub-recetas
        const groupByProduct = (list: any[]) => {
          const grouped: Record<string, any> = {};
          list.forEach(item => {
            const id = item['PROD. TERMINADO'] || item['SUB RECETA'];
            if (!grouped[id]) {
              grouped[id] = {
                ...item,
                INGREDIENTES: []
              };
            }
            grouped[id].INGREDIENTES.push({
              nombre: item['DESCRIPCIÓN INGREDIENTE'],
              cantidad: item['CANTIDAD'],
              unidad: item['UNIDAD MANEJO'] || item['UNIDAD'],
              costo: item['COSTO INGREDIENTE'] || item['COSTO INGREDIENTES'],
              esSubReceta: item['SUB RECETA'] === 'Sí'
            });
          });
          return Object.values(grouped);
        };

        const recetas = groupByProduct(rawRecetas);
        const subRecetas = groupByProduct(rawSubRecetas);
        
        setData({ recetas, subRecetas, rawRecetas, rawSubRecetas });
        
        const initialActive: Record<string, boolean> = {};
        [...recetas, ...subRecetas].forEach((item, idx) => {
          const id = item['PROD. TERMINADO'] || item['SUB RECETA'] || `item-${idx}`;
          initialActive[id] = statusMap[id] || false;
        });
        setActiveItems(initialActive);
        
        setLoading(false);
      })
      .catch(e => {
        console.error(e);
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchData();
  }, []);

  const toggleActive = async (id: string) => {
    const newState = !activeItems[id];
    setSavingId(id);
    
    // Update locally first for snappiness
    setActiveItems(prev => ({ ...prev, [id]: newState }));

    try {
      const res = await fetch('/api/recetas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id, active: newState })
      });

      if (!res.ok) throw new Error('Error al guardar');
      
      setToast({ message: `RECETA ${newState ? 'ACTIVADA' : 'DESACTIVADA'} CORRECTAMENTE`, type: 'success' });
      setTimeout(() => setToast(null), 3000);
    } catch (e) {
      // Revert if error
      setActiveItems(prev => ({ ...prev, [id]: !newState }));
      setToast({ message: 'ERROR AL GUARDAR EN BASE DE DATOS', type: 'error' });
      setTimeout(() => setToast(null), 4000);
    } finally {
      setSavingId(null);
    }
  };

  const [viewTab, setViewTab] = useState<'activas' | 'maestro'>('activas');

  useEffect(() => {
    setExpandedRecipe(null);
  }, [viewTab]);

  const filterList = (list: any[]) => {
    const results = list.filter(r => {
      const searchLower = searchTerm.toLowerCase();
      const matchesSearch = 
        (r['PROD. TERMINADO']?.toString().toLowerCase() || '').includes(searchLower) ||
        (r['GRUPO']?.toString().toLowerCase() || '').includes(searchLower) ||
        (r['FAMILIA']?.toString().toLowerCase() || '').includes(searchLower);
        
      const id = r['PROD. TERMINADO'] || r['SUB RECETA'];
      const isActive = activeItems[id];
      
      if (viewTab === 'activas') {
        return matchesSearch && isActive;
      } else {
        return matchesSearch || isActive;
      }
    });

    // ORDENES POR ACTIVOS PRIMERO E INACTIVOS DESPUÉS Y POR ORDEN ALFABETICO
    return results.sort((a, b) => {
      const idA = a['PROD. TERMINADO'] || a['SUB RECETA'];
      const idB = b['PROD. TERMINADO'] || b['SUB RECETA'];
      const activeA = activeItems[idA] ? 1 : 0;
      const activeB = activeItems[idB] ? 1 : 0;

      if (activeA !== activeB) return activeB - activeA;
      return idA.localeCompare(idB);
    });
  };

  const filteredRecetas = filterList(data.recetas);
  const filteredSubRecetas = filterList(data.subRecetas);

  const RecipeRowDetails = ({ recipe }: { recipe: any }) => {
    if (!recipe) return null;

    const id = recipe['PROD. TERMINADO'] || recipe['SUB RECETA'];
    const allIngredients = recipe.INGREDIENTES || [];
    
    const primaryIngredients = allIngredients.filter((i: any) => !i.esSubReceta && !i.nombre.startsWith('SUB '));
    
    // Improved Grouping Logic: Identify sub-recipe sections and their subsequent components
    const groupedSubRecipes: any[] = [];
    let currentSub: any = null;

    allIngredients.forEach((ing: any) => {
      if (!ing.esSubReceta && ing.nombre.startsWith('SUB ')) {
        // This is a new sub-recipe header - Restore 'SUB ' prefix
        currentSub = { name: ing.nombre, items: [], pointer: ing };
        groupedSubRecipes.push(currentSub);
      } else if (ing.esSubReceta && currentSub) {
        // This is a component of the last identified sub-recipe
        currentSub.items.push(ing);
      }
    });

    // If any sub-recipe came back empty, try to fetch from master sub-recetas list as fallback
    groupedSubRecipes.forEach(sub => {
      if (sub.items.length === 0) {
        const masterSub = data.subRecetas.find((sr: any) => {
          const srName = (sr['PROD. TERMINADO'] || sr['SUB RECETA']);
          return srName === sub.name;
        });
        if (masterSub) sub.items = masterSub.INGREDIENTES;
      }
    });

    return (
      <div style={{
        backgroundColor: '#FAF9F6', padding: '24px', borderRadius: '16px',
        margin: '10px 24px 20px 24px', border: '1px solid #E5E7EB',
        animation: 'slideDown 0.3s ease-out'
      }}>
        <div style={{ marginBottom: '20px', borderBottom: '1px solid #E5E7EB', paddingBottom: '12px', display: 'flex', alignItems: 'center', gap: '10px' }}>
          <ChefHat size={18} color="#801515" />
          <h4 style={{ margin: 0, fontSize: '13px', fontWeight: '900', color: '#1A1A1A' }}>DESGLOSE TÉCNICO DE RECETA</h4>
        </div>

        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '11px' }}>
          <thead>
            <tr style={{ textAlign: 'left', borderBottom: '1px solid #E5E7EB' }}>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px' }}>Descripción Ingrediente</th>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px', textAlign: 'center' }}>Título</th>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px', textAlign: 'center' }}>Categoría</th>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px', textAlign: 'center' }}>Unidad</th>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px', textAlign: 'right' }}>Cantidad</th>
              <th style={{ padding: '8px 12px', color: '#9CA3AF', fontWeight: '900', textTransform: 'uppercase', fontSize: '10px', textAlign: 'right' }}>Costo</th>
            </tr>
          </thead>
          <tbody>
            {/* Unified list of all ingredients (Base + Sub-recipes) */}
            {primaryIngredients.map((ing: any, idxB: number) => (
              <tr key={`base-${idxB}`} style={{ borderBottom: '1px dashed #E5E7EB' }}>
                <td style={{ padding: '12px 12px', fontWeight: '700', color: '#4B5563' }}>{ing.nombre}</td>
                <td style={{ padding: '12px 12px', textAlign: 'center', color: '#4B5563', fontWeight: '800', fontSize: '9px' }}>INGREDIENTE BASE</td>
                <td style={{ padding: '12px 12px', textAlign: 'center', color: '#801515', fontWeight: '800', fontSize: '9px' }}>BASE</td>
                <td style={{ padding: '12px 12px', textAlign: 'center', color: '#801515', fontWeight: '800' }}>{ing.unidad?.toUpperCase()}</td>
                <td style={{ padding: '12px 12px', textAlign: 'right', color: '#1A1A1A', fontWeight: '900' }}>{Number(ing.cantidad).toFixed(3)}</td>
                <td style={{ padding: '12px 12px', textAlign: 'right', color: '#10B981', fontWeight: '900' }}>{Number(ing.costo || 0).toFixed(3)} €</td>
              </tr>
            ))}

            {groupedSubRecipes.map((sub: any) => (
              sub.items.map((ing: any, idxC: number) => (
                <tr key={`${sub.name}-${idxC}`} style={{ borderBottom: '1px dashed #E5E7EB' }}>
                  <td style={{ padding: '12px 12px', fontWeight: '700', color: '#4B5563' }}>{ing.nombre}</td>
                  <td style={{ padding: '12px 12px', textAlign: 'center', color: '#4B5563', fontWeight: '800', fontSize: '9px' }}>{sub.name}</td>
                  <td style={{ padding: '12px 12px', textAlign: 'center', color: '#D97706', fontWeight: '800', fontSize: '9px' }}>SUB-RECETA</td>
                  <td style={{ padding: '12px 12px', textAlign: 'center', color: '#801515', fontWeight: '800' }}>{ing.unidad?.toUpperCase()}</td>
                  <td style={{ padding: '12px 12px', textAlign: 'right', color: '#1A1A1A', fontWeight: '900' }}>{Number(ing.cantidad).toFixed(3)}</td>
                  <td style={{ padding: '12px 12px', textAlign: 'right', color: '#10B981', fontWeight: '900' }}>{Number(ing.costo || 0).toFixed(3)} €</td>
                </tr>
              ))
            ))}
          </tbody>
        </table>
      </div>
    );
  };

  const Table = ({ title, items, icon: Icon, type }: { title: string, items: any[], icon: any, type: string }) => (
    <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden', marginBottom: '30px' }}>
      <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center', backgroundColor: '#FAF9F6' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
          {Icon}
          <h3 style={{ fontSize: '14px', fontWeight: '900', color: '#1A1A1A' }}>{title}</h3>
        </div>
      </div>
      <div style={{ overflowX: 'auto' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
              {viewTab === 'maestro' && (
                <th style={{ padding: '12px 24px', width: '40px' }}>
                  <input 
                     type="checkbox"
                     checked={items.length > 0 && items.every(item => activeItems[item['PROD. TERMINADO'] || item['SUB RECETA']])}
                     onChange={(e) => {
                       const newValue = e.target.checked;
                       const newActive = { ...activeItems };
                       items.forEach(item => {
                         const id = item['PROD. TERMINADO'] || item['SUB RECETA'];
                         newActive[id] = newValue;
                       });
                       setActiveItems(newActive);
                     }}
                     style={{ width: '18px', height: '18px', cursor: 'pointer', accentColor: '#801515' }}
                  />
                </th>
              )}
              <th style={{ padding: '12px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>DESCRIPCIÓN PROD. TERMINADO</th>
              <th style={{ padding: '12px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>GRUPO</th>
              <th style={{ padding: '12px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>FAMILIA</th>
              <th style={{ padding: '12px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right' }}>COSTO TOTAL RECETA</th>
              <th style={{ padding: '12px 24px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>INGREDIENTES</th>
            </tr>
          </thead>
          <tbody>
            {items.map((item, idx) => {
              const id = item['PROD. TERMINADO'] || item['SUB RECETA'];
              const isActive = activeItems[id] || false;
              const isExpanded = expandedRecipe === id;
              
              return (
                <React.Fragment key={idx}>
                  <tr style={{ 
                    borderBottom: isExpanded ? 'none' : '1px solid #F3F4F6',
                    opacity: (viewTab === 'activas' || isActive) ? 1 : 0.4,
                    backgroundColor: isExpanded ? '#FAF9F6' : ((viewTab === 'activas' || isActive) ? 'transparent' : '#F9FAFB'),
                    transition: 'all 0.2s',
                    cursor: 'pointer'
                  }}
                  onClick={() => setExpandedRecipe(isExpanded ? null : id)}
                  >
                    {viewTab === 'maestro' && (
                      <td style={{ padding: '12px 24px' }}>
                        <input 
                          type="checkbox" 
                          checked={isActive} 
                          onChange={(e) => {
                            e.stopPropagation();
                            toggleActive(id);
                          }}
                          style={{ width: '18px', height: '18px', cursor: 'pointer', accentColor: '#801515' }}
                        />
                      </td>
                    )}
                    <td 
                      style={{ 
                        padding: '12px 24px', fontSize: '13px', fontWeight: '900',
                        color: (isActive || viewTab === 'activas') ? '#1A1A1A' : '#9CA3AF',
                        display: 'flex', alignItems: 'center', gap: '10px'
                      }}
                    >
                      <ChevronRight size={16} style={{ 
                        transform: isExpanded ? 'rotate(90deg)' : 'none', 
                        transition: 'transform 0.2s',
                        color: isExpanded ? '#801515' : '#9CA3AF'
                      }} />
                      {id}
                    </td>
                    <td style={{ padding: '12px 24px', fontSize: '11px', fontWeight: '800', color: (isActive || viewTab === 'activas') ? '#801515' : '#9CA3AF' }}>
                      {item['GRUPO'] || 'OTROS'}
                    </td>
                    <td style={{ padding: '12px 24px', fontSize: '11px', fontWeight: '800', color: (isActive || viewTab === 'activas') ? '#801515' : '#9CA3AF' }}>
                      {item['FAMILIA'] || 'VARIOS'}
                    </td>
                    <td style={{ padding: '12px 24px', fontSize: '14px', fontWeight: '900', textAlign: 'right', color: (isActive || viewTab === 'activas') ? '#10B981' : '#9CA3AF' }}>
                      {Number(item['COSTO RECETA']).toFixed(3)} €
                    </td>
                    <td style={{ padding: '12px 24px', textAlign: 'center' }}>
                      <span style={{ fontSize: '10px', fontWeight: '900', color: '#6B7280', backgroundColor: '#F3F4F6', padding: '2px 8px', borderRadius: '6px' }}>
                        {item.INGREDIENTES?.length || 0}
                      </span>
                    </td>
                  </tr>
                  {isExpanded && (
                    <tr>
                      <td colSpan={viewTab === 'maestro' ? 6 : 5} style={{ padding: 0 }}>
                        <RecipeRowDetails recipe={item} />
                      </td>
                    </tr>
                  )}
                </React.Fragment>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );

  const saveAllStatus = async () => {
    setSavingId('ALL');
    try {
      const res = await fetch('/api/recetas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bulk: true, statusMap: activeItems })
      });

      if (!res.ok) throw new Error('Error al guardar');
      
      setToast({ message: 'ESTADO DEL RECETARIO GUARDADO CORRECTAMENTE', type: 'success' });
      setTimeout(() => setToast(null), 3000);
    } catch (e) {
      setToast({ message: 'ERROR AL GUARDAR CONFIGURACIÓN', type: 'error' });
      setTimeout(() => setToast(null), 4000);
    } finally {
      setSavingId(null);
    }
  };
  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '20px', position: 'relative' }}>
      {/* 1. Header and Actions */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
         <div style={{ display: 'flex', gap: '20px', alignItems: 'center' }}>
            <div>
              <h2 style={{ fontSize: '14px', fontWeight: '900', color: '#1A1A1A', marginBottom: '4px' }}>RECETARIO</h2>
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#801515', fontWeight: '800', fontSize: '12px' }}>
                 <Database size={14} /> {Object.values(activeItems).filter(v => v).length} ACTIVAS
              </div>
            </div>
            
            <div style={{ display: 'flex', backgroundColor: '#F3F4F6', padding: '4px', borderRadius: '12px', gap: '4px' }}>
              <button 
                onClick={() => setViewTab('activas')}
                style={{ 
                  padding: '6px 16px', borderRadius: '10px', border: 'none', fontSize: '10px', fontWeight: '900',
                  backgroundColor: viewTab === 'activas' ? 'white' : 'transparent',
                  color: viewTab === 'activas' ? '#801515' : '#6B7280',
                  cursor: 'pointer', transition: 'all 0.2s', boxShadow: viewTab === 'activas' ? '0 2px 4px rgba(0,0,0,0.05)' : 'none'
                }}
              >
                PRODUCTOS ACTIVOS
              </button>
              <button 
                onClick={() => setViewTab('maestro')}
                style={{ 
                  padding: '6px 16px', borderRadius: '10px', border: 'none', fontSize: '10px', fontWeight: '900',
                  backgroundColor: viewTab === 'maestro' ? 'white' : 'transparent',
                  color: viewTab === 'maestro' ? '#801515' : '#6B7280',
                  cursor: 'pointer', transition: 'all 0.2s', boxShadow: viewTab === 'maestro' ? '0 2px 4px rgba(0,0,0,0.05)' : 'none'
                }}
              >
                MAESTRO
              </button>
            </div>
         </div>

         <div style={{ display: 'flex', gap: '10px' }}>
           <button 
             onClick={() => setShowForm(true)}
             style={{ 
               display: 'flex', alignItems: 'center', gap: '8px', padding: '10px 20px', 
               backgroundColor: '#1A1A1A', color: 'white', border: 'none', 
               borderRadius: '12px', fontWeight: '900', fontSize: '11px', cursor: 'pointer',
               transition: 'all 0.2s'
             }}
           >
             <Plus size={16} /> NUEVA RECETA
           </button>
           
         </div>
      </div>

      {/* 2. Search */}
      <div style={{ display: 'flex', gap: '12px' }}>
         <div style={{ position: 'relative', flex: 1 }}>
            <Search size={18} style={{ position: 'absolute', left: '16px', top: '50%', transform: 'translateY(-50%)', color: '#801515' }} />
            <input 
               type="text" 
               placeholder="BUSCAR PRODUCTO..."
               value={searchTerm}
               onChange={(e) => setSearchTerm(e.target.value)}
               style={{ 
                  width: '100%', padding: '14px 14px 14px 48px', borderRadius: '16px',
                  border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '700',
                  boxShadow: '0 4px 15px rgba(0,0,0,0.03)', outline: 'none'
               }}
            />
         </div>
      </div>

      {loading ? (
        <div style={{ padding: '60px', textAlign: 'center' }}>
          <div style={{ fontSize: '13px', fontWeight: '800', color: '#9CA3AF' }}>SINCRONIZANDO RECETAS...</div>
        </div>
      ) : (
        <Table 
          title="RECETAS" 
          items={filteredRecetas} 
          icon={<BookOpen size={18} color="#801515" />} 
          type="receta"
        />
      )}

      {/* Floating Toast Notification */}
      {toast && (
        <div style={{ 
          position: 'fixed', bottom: '30px', right: '30px', zIndex: 1000,
          backgroundColor: toast.type === 'success' ? '#10B981' : '#EF4444',
          color: 'white', padding: '12px 24px', borderRadius: '12px',
          fontWeight: '900', fontSize: '11px', boxShadow: '0 10px 25px rgba(0,0,0,0.2)',
          display: 'flex', alignItems: 'center', gap: '10px', animation: 'slideIn 0.3s ease-out'
        }}>
          {toast.type === 'success' ? <CheckCircle size={16} /> : <AlertCircle size={16} />}
          {toast.message}
        </div>
      )}

      <style jsx>{`
        @keyframes slideIn {
          from { transform: translateX(100%); opacity: 0; }
          to { transform: translateX(0); opacity: 1; }
        }
        @keyframes slideDown {
          from { opacity: 0; transform: translateY(-10px); }
          to { opacity: 1; transform: translateY(0); }
        }
      `}</style>

      {showForm && (
        <RecipeForm 
          onClose={() => setShowForm(false)} 
          onSuccess={() => {
            fetchData();
            setShowForm(false);
          }} 
        />
      )}
    </div>
  );
}
