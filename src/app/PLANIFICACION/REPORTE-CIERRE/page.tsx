'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { Camera, Upload, CheckCircle2, ChevronRight, AlertCircle, Trash2, ArrowLeft, Loader2, Save, DollarSign, Package, Download, Plus } from 'lucide-react';

interface DetectedProduct {
  producto: string;
  categoria: string;
  presentacion: string;
  precio_unitario: number;
  precio_pack: number;
  cantidad_estimada_vitrina: number;
  costo_total_vitrina: number;
  waste?: number;
}

export default function ReporteCierrePage() {
  const [step, setStep] = useState(1);
  const [isAnalyzing, setIsAnalyzing] = useState(false);
  const [photo, setPhoto] = useState<string | null>(null);
  const [detectedItems, setDetectedItems] = useState<DetectedProduct[]>([]);
  const [allProducts, setAllProducts] = useState<any[]>([]);
  const [showAddManual, setShowAddManual] = useState(false);

  useEffect(() => {
    fetchProducts();
  }, []);

  const fetchProducts = async () => {
    try {
      const res = await fetch('/api/admin/products/categorize');
      const data = await res.json();
      setAllProducts(data);
    } catch (e) {
      console.error('Error fetching products:', e);
    }
  };

  const handlePhotoUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) {
      setIsAnalyzing(true);
      setPhoto(URL.createObjectURL(file));
      
      try {
        const resizeImage = (file: File): Promise<Blob> => {
          return new Promise((resolve) => {
            const reader = new FileReader();
            reader.onload = (e) => {
              const img = new Image();
              img.onload = () => {
                const canvas = document.createElement('canvas');
                const MAX_WIDTH = 1280;
                const MAX_HEIGHT = 1280;
                let width = img.width;
                let height = img.height;
                if (width > height) {
                  if (width > MAX_WIDTH) { height *= MAX_WIDTH / width; width = MAX_WIDTH; }
                } else {
                  if (height > MAX_HEIGHT) { width *= MAX_HEIGHT / height; height = MAX_HEIGHT; }
                }
                canvas.width = width;
                canvas.height = height;
                const ctx = canvas.getContext('2d');
                ctx?.drawImage(img, 0, 0, width, height);
                canvas.toBlob((blob) => resolve(blob!), 'image/jpeg', 0.8);
              };
              img.src = e.target?.result as string;
            };
            reader.readAsDataURL(file);
          });
        };

        const optimizedBlob = await resizeImage(file);
        const formData = new FormData();
        formData.append('file', optimizedBlob, 'vitrina.jpg');

        const res = await fetch('/api/vision/analyze', {
          method: 'POST',
          body: formData,
        });
        
        const data = await res.json();
        
        if (!res.ok) {
          const err = new Error(data.error || 'Error en el servidor');
          (err as any).raw = data.raw;
          throw err;
        }

        if (Array.isArray(data)) {
          const formatted = data.map(item => ({
            ...item,
            waste: 0
          }));
          setDetectedItems(formatted);
        }
        setStep(2);
      } catch (e: any) {
        console.error('Error analyzing photo:', e);
        const isUnavailable = e.message?.includes('503') || e.message?.includes('no disponible');
        
        if (isUnavailable) {
          alert(`La IA de Google está experimentando alta demanda en este momento. \n\nHemos intentado reconectar automáticamente, pero sigue saturada. \n\nPor favor, intenta subir la foto de nuevo en unos segundos o completa el inventario manualmente.`);
        } else {
          alert(`Error al analizar la foto: ${e.message}. \n\nPor favor, completa el inventario manualmente.`);
        }
      } finally {
        setIsAnalyzing(false);
      }
    }
  };

  const addManualProduct = (prod: any) => {
    const exists = detectedItems.find(item => item.producto === prod.name);
    if (exists) return;
    
    setDetectedItems([...detectedItems, {
      producto: prod.name,
      categoria: prod.family_name || 'General',
      presentacion: '1 unidad',
      precio_unitario: prod.sale_price || 0,
      precio_pack: 0,
      cantidad_estimada_vitrina: 1,
      costo_total_vitrina: prod.sale_price || 0,
      waste: 0
    }]);
    setShowAddManual(false);
  };

  const removeItem = (index: number) => {
    setDetectedItems(detectedItems.filter((_, i) => i !== index));
  };

  const updateField = (index: number, field: keyof DetectedProduct, val: number) => {
    const newItems = [...detectedItems];
    const item = { ...newItems[index] };
    (item as any)[field] = Math.max(0, val);
    
    if (field === 'cantidad_estimada_vitrina' || field === 'precio_unitario') {
      item.costo_total_vitrina = item.cantidad_estimada_vitrina * item.precio_unitario;
    }
    
    newItems[index] = item;
    setDetectedItems(newItems);
  };

  const totalValue = detectedItems.reduce((acc, curr) => acc + (curr.costo_total_vitrina || 0), 0);

  const handleSubmit = async () => {
    setIsAnalyzing(true);
    try {
      const res = await fetch('/api/planificacion/cierre', {
        method: 'POST',
        body: JSON.stringify({ 
          inventory: detectedItems.map(item => ({
            id: item.producto, // Using name as ID for now or map to DB ID
            name: item.producto,
            closing: item.cantidad_estimada_vitrina,
            waste: item.waste || 0
          }))
        }),
      });
      const data = await res.json();
      if (data.success) {
        setStep(4);
      } else {
        alert('Error al guardar: ' + data.error);
      }
    } catch (e) {
      console.error(e);
      alert('Error de conexión');
    } finally {
      setIsAnalyzing(false);
    }
  };

  const exportToExcel = () => {
    const headers = ['Producto', 'Categoría', 'Presentación', 'Precio Unit.', 'Cantidad', 'Costo Total'];
    const rows = detectedItems.map(item => [
      item.producto,
      item.categoria,
      item.presentacion,
      item.precio_unitario.toFixed(2),
      item.cantidad_estimada_vitrina,
      item.costo_total_vitrina.toFixed(2)
    ]);
    
    const csvContent = "data:text/csv;charset=utf-8," 
      + headers.join(",") + "\n" 
      + rows.map(e => e.join(",")).join("\n");
      
    const encodedUri = encodeURI(csvContent);
    const link = document.createElement("a");
    link.setAttribute("href", encodedUri);
    link.setAttribute("download", `Cierre_Crosti_${new Date().toISOString().split('T')[0]}.csv`);
    document.body.appendChild(link);
    link.click();
  };

  return (
    <div style={{ backgroundColor: '#EDE8D0', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif', color: '#2D2926' }}>
      <header style={{ padding: '20px 24px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', alignItems: 'center', justifyContent: 'space-between', position: 'sticky', top: 0, zIndex: 10 }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '16px' }}>
          <Link href="/PLANIFICACION" style={{ color: '#666' }}><ArrowLeft size={20} /></Link>
          <div>
            <h1 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>CIERRE DE TIENDA AI</h1>
            <p style={{ fontSize: '11px', color: '#9CA3AF', margin: 0, textTransform: 'uppercase' }}>
              PASO {step} DE 3 • {new Date().toLocaleDateString('es-ES', { day: 'numeric', month: 'long' })}
            </p>
          </div>
        </div>
        {step >= 2 && (
          <div style={{ textAlign: 'right' }}>
            <div style={{ fontSize: '10px', color: '#9CA3AF', textTransform: 'uppercase' }}>Total Vitrina</div>
            <div style={{ fontSize: '18px', fontWeight: 'bold', color: '#10B981' }}>{totalValue.toFixed(2)}€</div>
          </div>
        )}
      </header>

      <main style={{ padding: '24px', maxWidth: '800px', margin: '0 auto' }}>
        
        {step === 1 && (
          <div style={{ textAlign: 'center', animation: 'fadeIn 0.3s ease-in', padding: '40px 0' }}>
            <div style={{ backgroundColor: '#FEE2E2', width: '100px', height: '100px', borderRadius: '30px', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 30px auto' }}>
              <Camera size={50} color="#EF4444" />
            </div>
            <h2 style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '16px' }}>AUDITORÍA VISUAL</h2>
            <p style={{ fontSize: '16px', color: '#666', marginBottom: '40px', maxWidth: '400px', margin: '0 auto 40px auto' }}>
              Sube la foto de la vitrina. Gemini 2.5 leerá precios, detectará productos y calculará el valor de cierre automáticamente.
            </p>

            <label style={{ 
              display: 'inline-flex', 
              alignItems: 'center',
              gap: '12px',
              backgroundColor: '#1A1A1A', 
              color: 'white', 
              padding: '20px 40px', 
              borderRadius: '20px', 
              fontWeight: 'bold', 
              cursor: 'pointer',
              boxShadow: '0 20px 25px -5px rgba(0, 0, 0, 0.1)',
              marginBottom: '20px'
            }}>
              {isAnalyzing ? <Loader2 className="animate-spin" /> : <Upload size={22} />}
              {isAnalyzing ? 'PROCESANDO INTELIGENCIA...' : 'ANALIZAR VITRINA'}
              <input type="file" accept="image/*" onChange={handlePhotoUpload} style={{ display: 'none' }} disabled={isAnalyzing} />
            </label>
            <br />
            <button onClick={() => setStep(2)} style={{ background: 'none', border: 'none', color: '#9CA3AF', fontWeight: 'bold', cursor: 'pointer' }}>COMPLETAR SIN IA</button>
          </div>
        )}

        {step === 2 && (
          <div style={{ animation: 'fadeIn 0.3s ease-in' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
              <h2 style={{ fontSize: '20px', fontWeight: 'bold' }}>VALIDACIÓN DE INVENTARIO</h2>
              <div style={{ display: 'flex', gap: '12px' }}>
                <button 
                  onClick={() => setShowAddManual(true)}
                  style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '13px', color: '#EF4444', background: 'white', border: '1px solid #EF4444', padding: '6px 12px', borderRadius: '8px', cursor: 'pointer', fontWeight: '600' }}
                >
                  <Plus size={16} /> AÑADIR PRODUCTO
                </button>
                <button onClick={exportToExcel} style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '13px', color: '#3B82F6', background: 'none', border: 'none', cursor: 'pointer', fontWeight: '600' }}>
                  <Download size={16} /> Exportar CSV
                </button>
              </div>
            </div>

            {showAddManual && (
              <div style={{ position: 'fixed', top: 0, left: 0, right: 0, bottom: 0, backgroundColor: 'rgba(0,0,0,0.5)', display: 'flex', alignItems: 'center', justifyContent: 'center', zIndex: 100, padding: '20px' }}>
                <div style={{ backgroundColor: 'white', borderRadius: '24px', width: '100%', maxWidth: '500px', maxHeight: '80vh', overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
                  <div style={{ padding: '24px', borderBottom: '1px solid #EEE', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                    <h3 style={{ margin: 0, fontSize: '18px' }}>Seleccionar Producto</h3>
                    <button onClick={() => setShowAddManual(false)} style={{ background: 'none', border: 'none', fontSize: '20px', cursor: 'pointer' }}>×</button>
                  </div>
                  <div style={{ padding: '12px', overflowY: 'auto' }}>
                    {allProducts.map(p => (
                      <div 
                        key={p.id} 
                        onClick={() => addManualProduct(p)}
                        style={{ padding: '16px', borderBottom: '1px solid #F3F4F6', cursor: 'pointer', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}
                      >
                        <div>
                          <div style={{ fontSize: '14px', fontWeight: 'bold' }}>{p.name}</div>
                          <div style={{ fontSize: '12px', color: '#9CA3AF' }}>{p.family_name || 'Sin categoría'}</div>
                        </div>
                        <Plus size={16} color="#EF4444" />
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            )}

            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
              {detectedItems.length === 0 ? (
                <div style={{ textAlign: 'center', padding: '40px', color: '#9CA3AF' }}>No se detectaron productos. Agrégalos manualmente.</div>
              ) : (
                detectedItems.map((item, idx) => (
                  <div key={idx} style={{ backgroundColor: 'white', padding: '16px', borderRadius: '16px', border: '1px solid #E5E7EB', display: 'grid', gridTemplateColumns: '1fr auto auto', gap: '16px', alignItems: 'center' }}>
                    <div>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '8px', marginBottom: '4px' }}>
                        <span style={{ fontSize: '10px', backgroundColor: '#F3F4F6', padding: '2px 8px', borderRadius: '4px', color: '#666', fontWeight: 'bold' }}>{item.categoria}</span>
                        <span style={{ fontSize: '10px', color: '#9CA3AF' }}>{item.presentacion}</span>
                      </div>
                      <div style={{ fontSize: '15px', fontWeight: 'bold' }}>{item.producto}</div>
                      <div style={{ fontSize: '12px', color: '#10B981', fontWeight: '600' }}>{item.precio_unitario.toFixed(2)}€ / unidad</div>
                    </div>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '12px', backgroundColor: '#F9FAFB', padding: '8px', borderRadius: '12px' }}>
                      <button onClick={() => updateField(idx, 'cantidad_estimada_vitrina', item.cantidad_estimada_vitrina - 1)} style={{ width: '28px', height: '28px', borderRadius: '6px', border: '1px solid #DDD', background: 'white' }}>-</button>
                      <span style={{ fontSize: '16px', fontWeight: 'bold', minWidth: '24px', textAlign: 'center' }}>{item.cantidad_estimada_vitrina}</span>
                      <button onClick={() => updateField(idx, 'cantidad_estimada_vitrina', item.cantidad_estimada_vitrina + 1)} style={{ width: '28px', height: '28px', borderRadius: '6px', border: '1px solid #DDD', background: 'white' }}>+</button>
                    </div>
                    <button onClick={() => removeItem(idx)} style={{ color: '#EF4444', background: 'none', border: 'none', padding: '8px', cursor: 'pointer' }}>
                      <Trash2 size={18} />
                    </button>
                  </div>
                ))
              )}
            </div>

            <button 
              onClick={() => setStep(3)}
              disabled={detectedItems.length === 0}
              style={{ width: '100%', backgroundColor: '#1A1A1A', color: 'white', padding: '18px', borderRadius: '16px', fontWeight: 'bold', marginTop: '30px', border: 'none', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '8px', boxShadow: '0 10px 15px -3px rgba(0, 0, 0, 0.1)', opacity: detectedItems.length === 0 ? 0.5 : 1 }}
            >
              Continuar a Merma <ChevronRight size={18} />
            </button>
          </div>
        )}

        {step === 3 && (
          <div style={{ animation: 'fadeIn 0.3s ease-in' }}>
            <h2 style={{ fontSize: '20px', fontWeight: 'bold', marginBottom: '8px' }}>Reporte de Desperdicio</h2>
            <p style={{ fontSize: '14px', color: '#666', marginBottom: '24px' }}>Selecciona los productos que no se pueden vender mañana.</p>
            
            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
              {detectedItems.map((item, idx) => (
                <div key={idx} style={{ backgroundColor: 'white', padding: '16px', borderRadius: '16px', border: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                  <div>
                    <div style={{ fontSize: '14px', fontWeight: 'bold' }}>{item.producto}</div>
                    <div style={{ fontSize: '11px', color: '#EF4444' }}>Unidades merma</div>
                  </div>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
                    <button onClick={() => updateField(idx, 'waste', (item.waste || 0) - 1)} style={{ width: '28px', height: '28px', borderRadius: '6px', border: '1px solid #DDD', background: 'white' }}>-</button>
                    <span style={{ fontSize: '16px', fontWeight: 'bold', minWidth: '24px', textAlign: 'center' }}>{item.waste || 0}</span>
                    <button onClick={() => updateField(idx, 'waste', (item.waste || 0) + 1)} style={{ width: '28px', height: '28px', borderRadius: '6px', border: '1px solid #DDD', background: 'white' }}>+</button>
                  </div>
                </div>
              ))}
            </div>

            <button 
              onClick={handleSubmit}
              disabled={isAnalyzing}
              style={{ width: '100%', backgroundColor: '#EF4444', color: 'white', padding: '18px', borderRadius: '16px', fontWeight: 'bold', marginTop: '30px', border: 'none', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '8px' }}
            >
              {isAnalyzing ? <Loader2 className="animate-spin" /> : <Save size={18} />}
              Finalizar y Guardar Cierre
            </button>
          </div>
        )}

        {step === 4 && (
          <div style={{ textAlign: 'center', animation: 'scaleUp 0.4s ease-out', padding: '40px 0' }}>
            <div style={{ backgroundColor: '#ECFDF5', width: '100px', height: '100px', borderRadius: '50px', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 30px auto' }}>
              <CheckCircle2 size={50} color="#10B981" />
            </div>
            <h2 style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '16px' }}>¡Cierre Exitoso!</h2>
            <p style={{ fontSize: '16px', color: '#666', marginBottom: '40px' }}>
              Auditado: {detectedItems.length} productos.<br />
              Valor total recuperado: <strong>{totalValue.toFixed(2)}€</strong>
            </p>

            <Link href="/PLANIFICACION/propuesta" style={{ display: 'block', backgroundColor: '#1A1A1A', color: 'white', padding: '18px', borderRadius: '16px', fontWeight: 'bold', textDecoration: 'none', marginBottom: '12px' }}>Ver Plan de Mañana</Link>
            <Link href="/" style={{ display: 'block', color: '#666', fontWeight: 'bold', textDecoration: 'none' }}>Volver al Dashboard</Link>
          </div>
        )}

      </main>

      <style jsx global>{`
        @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes scaleUp { from { opacity: 0; transform: scale(0.9); } to { opacity: 1; transform: scale(1); } }
        .animate-spin { animation: spin 1s linear infinite; }
        @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }
      `}</style>
    </div>
  );
}
