'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Upload, Database, LayoutDashboard, Settings, FileSpreadsheet, Clock, Cloud, ChevronRight, Trash2, AlertCircle, DollarSign, Layers, ShieldCheck, Package, Users } from 'lucide-react';

export default function AdminPage() {
  const [activeTab, setActiveTab] = useState('CARGAR DATOS');
  const [isDeleting, setIsDeleting] = useState(false);
  const [isCleaningRecipes, setIsCleaningRecipes] = useState(false);

  const kpis = [
    { label: '40', sublabel: 'SEMANAS CARGADAS', color: '#801515' },
    { label: '718', sublabel: 'PRODUCTOS', color: '#801515' },
    { label: '20/4/2026', sublabel: 'ÚLTIMA ACTUALIZACIÓN', color: '#801515' },
    { label: 'NUBE', sublabel: 'MODO DATOS', color: '#10B981' },
  ];

  const tabs = [
    { name: 'CARGAR DATOS', icon: <Upload size={14} /> },
    { name: 'INVENTARIOS', icon: <Database size={14} /> },
    { name: 'MIGRACIÓN INICIAL', icon: <Clock size={14} /> },
    { name: 'GESTIONAR', icon: <Settings size={14} /> },
  ];

  const handleClearSales = async () => {
    if (!confirm('¿ESTÁS SEGURO DE QUE DESEAS ELIMINAR TODOS LOS DATOS DE VENTAS POR HORA? ESTA ACCIÓN NO SE PUEDE DESHACER.')) {
      return;
    }

    setIsDeleting(true);
    try {
      const response = await fetch('/api/sales/clear', { method: 'POST' });
      const result = await response.json();
      if (result.success) {
        alert('DATOS ELIMINADOS CORRECTAMENTE');
      } else {
        alert('ERROR: ' + result.error);
      }
    } catch (error) {
      console.error('ERROR CLEARING SALES:', error);
      alert('ERROR AL CONECTAR CON EL SERVIDOR');
    } finally {
      setIsDeleting(false);
    }
  };

  const handleCleanupRecipes = async () => {
    if (!confirm('¿ESTÁS SEGURO DE QUE DESEAS ELIMINAR TODAS LAS RECETAS QUE NO SEAN GALLETAS O COOKIES? ESTA ACCIÓN ES IRREVERSIBLE.')) {
      return;
    }

    setIsCleaningRecipes(true);
    try {
      const response = await fetch('/api/recetas/cleanup', { method: 'POST' });
      const result = await response.json();
      if (result.success) {
        alert(result.message + ' (ELIMINADAS: ' + result.deletedCount + ')');
      } else {
        alert('ERROR: ' + result.error);
      }
    } catch (error) {
      console.error('ERROR CLEANING RECIPES:', error);
      alert('ERROR AL CONECTAR CON EL SERVIDOR');
    } finally {
      setIsCleaningRecipes(false);
    }
  };

  return (
    <div style={{ backgroundColor: '#EDE8D0', minHeight: '100vh', fontFamily: '"Outfit", sans-serif', color: '#2D2926' }}>
      {/* Header */}
      <header style={{ padding: '20px 40px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid rgba(0,0,0,0.05)', backgroundColor: 'rgba(255,255,255,0.7)', backdropFilter: 'blur(10px)' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
          <a href="https://www.instagram.com/crosticookies?igsh=dHd0dWQ5aWVrdWM5" target="_blank" rel="noopener noreferrer">
            <img src="/logo-crosti.jpg" alt="Crosti Logo" style={{ height: '40px', borderRadius: '8px', cursor: 'pointer' }} />
          </a>
          <span style={{ color: '#2D2926', fontWeight: 'bold', fontSize: '18px', letterSpacing: '1px' }}>ADMINISTRACIÓN</span>
        </div>
        <Link href="/" style={{ color: 'rgba(0,0,0,0.4)', fontSize: '12px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '6px', textDecoration: 'none' }}>
           ← VOLVER AL DASHBOARD
        </Link>
      </header>

      <main style={{ padding: '40px' }}>
        {/* KPI Row */}
        <div style={{ display: 'flex', justifyContent: 'center', gap: '60px', marginBottom: '40px' }}>
          {kpis.map((kpi, idx) => (
            <div key={idx} style={{ textAlign: 'center' }}>
              <div style={{ fontSize: '28px', fontWeight: 'bold', color: kpi.color, marginBottom: '4px' }}>{kpi.label}</div>
              <div style={{ fontSize: '10px', fontWeight: 'bold', color: 'rgba(0,0,0,0.4)', letterSpacing: '0.5px' }}>{kpi.sublabel}</div>
            </div>
          ))}
        </div>

        {/* Tabs */}
        <div style={{ display: 'flex', justifyContent: 'center', gap: '10px', marginBottom: '40px' }}>
          <div style={{ backgroundColor: 'rgba(255,255,255,0.8)', padding: '6px', borderRadius: '14px', display: 'flex', gap: '4px', border: '1px solid rgba(0,0,0,0.05)' }}>
            {tabs.map(tab => (
              <button
                key={tab.name}
                onClick={() => setActiveTab(tab.name)}
                style={{
                  display: 'flex',
                  alignItems: 'center',
                  gap: '8px',
                  padding: '10px 20px',
                  borderRadius: '10px',
                  fontSize: '12px',
                  fontWeight: 'bold',
                  border: 'none',
                  backgroundColor: activeTab === tab.name ? '#EDE8D0' : 'transparent',
                  color: activeTab === tab.name ? '#801515' : 'rgba(0,0,0,0.4)',
                  cursor: 'pointer'
                }}
              >
                {tab.icon}
                {tab.name}
              </button>
            ))}
          </div>
        </div>

        {/* Tab Content */}
        <div style={{ maxWidth: '800px', margin: '0 auto', width: '100%' }}>
          {activeTab === 'CARGAR DATOS' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
              {/* Merma Card */}
              <div style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderRadius: '24px', padding: '30px', border: '1px solid rgba(0,0,0,0.05)', backdropFilter: 'blur(10px)' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '10px' }}>
                   <FileSpreadsheet size={20} color="#801515" />
                   <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>REPORTE DE MERMA</h3>
                   <span style={{ backgroundColor: 'rgba(16, 185, 129, 0.1)', color: '#166534', padding: '2px 8px', borderRadius: '4px', fontSize: '10px', fontWeight: 'bold' }}>DIARIO</span>
                </div>
                <p style={{ fontSize: '12px', color: 'rgba(0,0,0,0.5)', marginBottom: '20px' }}>SUBE EL ARCHIVO DE MERMA DIARIA DESCARGADO DE LA INTRANET PRIGO. SE ACUMULARÁ A LOS DATOS HISTÓRICOS DE MERMA.</p>
                
                <div style={{ 
                  border: '2px dashed rgba(0,0,0,0.1)', 
                  borderRadius: '16px', 
                  padding: '40px', 
                  textAlign: 'center',
                  display: 'flex',
                  flexDirection: 'column',
                  alignItems: 'center',
                  justifyContent: 'center',
                  cursor: 'pointer',
                  marginBottom: '20px'
                }}>
                   <Cloud size={32} color="#801515" style={{ opacity: 0.3, marginBottom: '10px' }} />
                   <div style={{ fontSize: '13px', color: 'rgba(0,0,0,0.6)', fontWeight: '500' }}>ARRASTRA AQUÍ O HAZ CLIC PARA SELECCIONAR</div>
                   <div style={{ fontSize: '11px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>MERMA_YYYYMMDD.XLSX O REPORTEMERMADIARIA_FECHA.XLSX</div>
                </div>
                <button style={{ backgroundColor: '#801515', color: 'white', opacity: 0.5, border: 'none', padding: '12px 24px', borderRadius: '12px', fontSize: '12px', fontWeight: 'bold', cursor: 'default' }}>
                  PROCESAR Y SUBIR
                </button>
              </div>

              {/* Sales Card */}
              <div style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderRadius: '24px', padding: '30px', border: '1px solid rgba(0,0,0,0.05)', backdropFilter: 'blur(10px)' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '10px' }}>
                   <Clock size={20} color="#801515" />
                   <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>VENTAS POR HORA</h3>
                   <span style={{ backgroundColor: 'rgba(16, 185, 129, 0.1)', color: '#166534', padding: '2px 8px', borderRadius: '4px', fontSize: '10px', fontWeight: 'bold' }}>DIARIO</span>
                </div>
                <p style={{ fontSize: '12px', color: 'rgba(0,0,0,0.5)', marginBottom: '20px' }}>SUBE EL ARCHIVO DE VENTAS POR HORA DESCARGADO DE ORACLE (FORMATO EKE). SE PROCESAN AUTOMÁTICAMENTE TODAS LAS TIENDAS Y HORAS.</p>
                
                <div style={{ 
                  border: '2px dashed rgba(0,0,0,0.1)', 
                  borderRadius: '16px', 
                  padding: '40px', 
                  textAlign: 'center',
                  display: 'flex',
                  flexDirection: 'column',
                  alignItems: 'center',
                  justifyContent: 'center',
                  cursor: 'pointer',
                  marginBottom: '20px'
                }}>
                   <Clock size={32} color="#801515" style={{ opacity: 0.3, marginBottom: '10px' }} />
                   <div style={{ fontSize: '13px', color: 'rgba(0,0,0,0.6)', fontWeight: '500' }}>ARRASTRA AQUÍ O HAZ CLIC PARA SELECCIONAR</div>
                   <div style={{ fontSize: '11px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>VENTAS POR HORA EKE XXXXXX.XLSX</div>
                </div>
                <div style={{ display: 'flex', gap: '12px' }}>
                  <button style={{ backgroundColor: '#801515', color: 'white', opacity: 0.5, border: 'none', padding: '12px 24px', borderRadius: '12px', fontSize: '12px', fontWeight: 'bold', cursor: 'default' }}>
                    PROCESAR Y SUBIR
                  </button>
                  <button 
                    onClick={handleClearSales}
                    disabled={isDeleting}
                    style={{ 
                      backgroundColor: 'rgba(239, 68, 68, 0.05)', 
                      color: '#EF4444', 
                      border: '1px solid rgba(239, 68, 68, 0.1)', 
                      padding: '12px 24px', 
                      borderRadius: '12px', 
                      fontSize: '12px', 
                      fontWeight: 'bold', 
                      cursor: isDeleting ? 'not-allowed' : 'pointer',
                      display: 'flex',
                      alignItems: 'center',
                      gap: '8px',
                      transition: 'all 0.2s'
                    }}
                  >
                    <Trash2 size={14} />
                    {isDeleting ? 'ELIMINANDO...' : 'ELIMINAR DATOS'}
                  </button>
                </div>
              </div>
            </div>
          )}

          {activeTab === 'GESTIONAR' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
              <div style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderRadius: '24px', padding: '30px', border: '1px solid rgba(0,0,0,0.05)', backdropFilter: 'blur(10px)' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '10px' }}>
                   <Settings size={20} color="#801515" />
                   <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>GESTIÓN ESTRATÉGICA</h3>
                </div>
                <p style={{ fontSize: '12px', color: 'rgba(0,0,0,0.5)', marginBottom: '20px' }}>HERRAMIENTAS PARA LA OPTIMIZACIÓN FINANCIERA Y OPERATIVA DE CROSTI.</p>
                
                <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>CATEGORIZACIÓN DE PORTAFOLIO</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>ORGANIZA TUS GALLETAS EN FAMILIAS TÉCNICAS PARA HABILITAR EL ANÁLISIS DE RENTABILIDAD.</div>
                      </div>
                      <Link href="/ADMIN/CATEGORIAS" style={{ 
                        backgroundColor: '#2D2926', 
                        color: 'white', 
                        padding: '10px 20px', 
                        borderRadius: '10px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        textDecoration: 'none',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '8px'
                      }}>
                        <Layers size={14} />
                        GESTIONAR FAMILIAS
                      </Link>
                    </div>
                  </div>

                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>SEGURIDAD ALIMENTARIA (APPCC)</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>CONTROL DIGITAL DE TEMPERATURAS, LIMPIEZA Y TRAZABILIDAD SANITARIA.</div>
                      </div>
                      <Link href="/ADMIN/APPCC" style={{ 
                        backgroundColor: '#10B981', 
                        color: 'white', 
                        padding: '10px 20px', 
                        borderRadius: '10px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        textDecoration: 'none',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '8px'
                      }}>
                        <ShieldCheck size={14} />
                        CENTRO SANITARIO
                      </Link>
                    </div>
                  </div>

                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>GESTIÓN DE ALMACÉN (INSUMOS)</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>CONTROLA EL INVENTARIO DE MATERIA PRIMA, COSTOS DE COMPRA Y ALERTAS DE STOCK BAJO.</div>
                      </div>
                      <Link href="/ADMIN/ALMACEN" style={{ 
                        backgroundColor: '#4B5563', 
                        color: 'white', 
                        padding: '10px 20px', 
                        borderRadius: '10px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        textDecoration: 'none',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '8px'
                      }}>
                        <Package size={14} />
                        GESTIONAR ALMACÉN
                      </Link>
                    </div>
                  </div>

                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>GESTIÓN DE PERSONAL Y HORARIOS</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>ADMINISTRA TU EQUIPO, ASIGNA TURNOS Y CONTROLA EL COSTO LABORAL DINÁMICO.</div>
                      </div>
                      <Link href="/ADMIN/PERSONAL" style={{ 
                        backgroundColor: '#6366F1', 
                        color: 'white', 
                        padding: '10px 20px', 
                        borderRadius: '10px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        textDecoration: 'none',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '8px'
                      }}>
                        <Users size={14} />
                        GESTIONAR PERSONAL
                      </Link>
                    </div>
                  </div>

                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>CONFIGURACIÓN DE COSTOS FIJOS</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>GESTIONA LOS GASTOS MENSUALES DE ALQUILER, SUMINISTROS Y OTROS COSTOS INDIRECTOS.</div>
                      </div>
                      <Link href="/ADMIN/CONFIGURACION" style={{ 
                        backgroundColor: '#801515', 
                        color: 'white', 
                        padding: '10px 20px', 
                        borderRadius: '10px', 
                        fontSize: '12px', 
                        fontWeight: 'bold', 
                        textDecoration: 'none',
                        display: 'flex',
                        alignItems: 'center',
                        gap: '8px'
                      }}>
                        <DollarSign size={14} />
                        GESTIONAR COSTOS
                      </Link>
                    </div>
                  </div>

                  <div style={{ backgroundColor: 'rgba(0,0,0,0.02)', padding: '20px', borderRadius: '16px', border: '1px solid rgba(0,0,0,0.03)' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: '#2D2926' }}>LIMPIEZA DE RECETAS (SOLO GALLETAS)</div>
                        <div style={{ fontSize: '12px', color: 'rgba(0,0,0,0.4)', marginTop: '4px' }}>ELIMINA PERMANENTEMENTE TODAS LAS RECETAS QUE NO SEAN GALLETAS O COOKIES.</div>
                      </div>
                      <button 
                        onClick={handleCleanupRecipes}
                        disabled={isCleaningRecipes}
                        style={{ 
                          backgroundColor: '#2D2926', 
                          color: 'white', 
                          padding: '10px 20px', 
                          borderRadius: '10px', 
                          fontSize: '12px', 
                          fontWeight: 'bold', 
                          cursor: isCleaningRecipes ? 'not-allowed' : 'pointer',
                          display: 'flex',
                          alignItems: 'center',
                          gap: '8px'
                        }}
                      >
                        <Trash2 size={14} />
                        {isCleaningRecipes ? 'LIMPIANDO...' : 'EJECUTAR LIMPIEZA'}
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          )}

          {activeTab === 'INVENTARIOS' && (
            <div style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderRadius: '24px', padding: '40px', border: '1px solid rgba(0,0,0,0.05)', textAlign: 'center', backdropFilter: 'blur(10px)' }}>
              <Database size={48} color="#801515" style={{ marginBottom: '20px' }} />
              <div style={{ fontSize: '18px', fontWeight: 'bold', color: '#2D2926' }}>GESTIÓN DE INVENTARIO MAESTRO</div>
              <div style={{ fontSize: '14px', color: 'rgba(0,0,0,0.4)', marginTop: '8px' }}>UTILIZA EL MÓDULO DE ALMACÉN O EL SMART PROCUREMENT DESDE EL DASHBOARD PRINCIPAL PARA GESTIONAR EXISTENCIAS.</div>
            </div>
          )}

          {activeTab === 'MIGRACIÓN INICIAL' && (
            <div style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderRadius: '24px', padding: '40px', border: '1px solid rgba(0,0,0,0.05)', textAlign: 'center', backdropFilter: 'blur(10px)' }}>
              <Clock size={48} color="#6366F1" style={{ marginBottom: '20px' }} />
              <div style={{ fontSize: '18px', fontWeight: 'bold', color: '#2D2926' }}>MIGRACIÓN DE DATOS</div>
              <div style={{ fontSize: '14px', color: 'rgba(0,0,0,0.4)', marginTop: '8px' }}>LA BASE DE DATOS ACTUAL ESTÁ SINCRONIZADA. UTILIZA LA PESTAÑA "CARGAR DATOS" PARA ACTUALIZACIONES DIARIAS.</div>
            </div>
          )}
        </div>
      </main>
    </div>
  );
}
