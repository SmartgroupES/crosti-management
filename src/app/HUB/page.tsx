'use client';

import React, { useState, useEffect, Suspense } from 'react';
import Header from '@/components/Header';
import Link from 'next/link';
import { 
  TrendingUp, 
  Trash2, 
  Package, 
  ShoppingCart, 
  Calendar, 
  BookOpen, 
  DollarSign,
  ChevronDown,
  LayoutDashboard,
  Activity,
  Camera,
  ShieldCheck,
  Settings,
  Home,
  Check
} from 'lucide-react';

import { useSearchParams } from 'next/navigation';

// Views
import VentasView from './views/VentasView';
import RentabilidadView from './views/RentabilidadView';
import RecetasView from './views/RecetasView';
import PlanificacionView from './views/PlanificacionView';
import AdminUploadView from './views/AdminUploadView';
import EventNormalizerView from './views/EventNormalizerView';
import AnalisisPredictivoView from './views/AnalisisPredictivoView';

type TabId = 'ventas' | 'merma' | 'inventarios' | 'pedidos' | 'planificacion' | 'recetas' | 'costos' | 'admin' | 'eventos' | 'analisis' | 'escanner';

// Translations Dictionary
const translations: any = {
  ES: {
    ventas: 'VENTAS',
    analisis: 'ANÁLISIS PREDICTIVO',
    eventos: 'EVENTOS',
    planificacion: 'PLANIFICACIÓN',
    recetas: 'RECETAS',
    costos: 'COSTOS',
    inventarios: 'INVENTARIOS',
    escanner: 'ESCÁNER IA',
    admin: 'ADMIN / CARGA',
    sede: 'SEDE / LOCAL',
    periodo: 'PERIODO',
    ir_planificador: 'IR AL PLANIFICADOR',
    mes_actual: 'MES ACTUAL',
    semana_actual: 'SEMANA ACTUAL',
    hoy: 'HOY',
    año: 'AÑO 2026',
    desarrollo: 'MÓDULO EN DESARROLLO',
    sincronizando: 'Sincronizando con algoritmos del Proyecto Nelson'
  },
  EN: {
    ventas: 'SALES',
    analisis: 'PREDICTIVE ANALYSIS',
    eventos: 'EVENTS',
    planificacion: 'PLANNING',
    recetas: 'RECIPES',
    costos: 'COSTS',
    inventarios: 'INVENTORY',
    escanner: 'AI SCANNER',
    admin: 'ADMIN / UPLOAD',
    sede: 'LOCATION / BRANCH',
    periodo: 'PERIOD',
    ir_planificador: 'GO TO PLANNER',
    mes_actual: 'CURRENT MONTH',
    semana_actual: 'CURRENT WEEK',
    hoy: 'TODAY',
    año: 'YEAR 2026',
    desarrollo: 'MODULE IN DEVELOPMENT',
    sincronizando: 'Syncing with Nelson Project algorithms'
  }
};

function HubContent() {
  const searchParams = useSearchParams();
  const [activeTab, setActiveTab] = useState<TabId>('ventas');
  const [lang, setLang] = useState('ES');
  const [location, setLocation] = useState('POBLENOU | BCN');
  const [period, setPeriod] = useState('MES ACTUAL');
  const [showLocationMenu, setShowLocationMenu] = useState(false);
  const [showPeriodMenu, setShowPeriodMenu] = useState(false);

  const t = translations[lang] || translations.ES;

  useEffect(() => {
    // Listen for language changes from Header
    const updateLang = () => {
      const savedLang = localStorage.getItem('crosti_lang') || 'ES';
      setLang(savedLang);
    };
    
    updateLang();
    window.addEventListener('languageChanged', updateLang);
    return () => window.removeEventListener('languageChanged', updateLang);
  }, []);

  useEffect(() => {
    const tab = searchParams.get('tab') as TabId;
    if (tab) setActiveTab(tab);
  }, [searchParams]);

  const tabs = [
    { id: 'ventas', label: t.ventas, icon: TrendingUp },
    { id: 'analisis', label: t.analisis, icon: Activity },
    { id: 'eventos', label: t.eventos, icon: Settings },
    { id: 'planificacion', label: t.planificacion, icon: Calendar },
    { id: 'recetas', label: t.recetas, icon: BookOpen },
    { id: 'costos', label: t.costos, icon: DollarSign },
    { id: 'inventarios', label: t.inventarios, icon: Package },
    { id: 'escanner', label: t.escanner, icon: Camera },
    { id: 'admin', label: t.admin, icon: ShieldCheck },
  ];

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', paddingBottom: '40px' }}>
      <Header />

      <main style={{ padding: '100px 40px 40px 40px' }}>
        {/* 1. Global Filters Bar */}
        <div style={{ 
          display: 'flex', 
          justifyContent: 'space-between', 
          alignItems: 'center',
          backgroundColor: 'white',
          padding: '16px 24px',
          borderRadius: '20px',
          border: '1px solid #E5E7EB',
          marginBottom: '20px',
          boxShadow: '0 4px 6px rgba(0,0,0,0.02)',
          position: 'relative',
          zIndex: 50
        }}>
          <div style={{ display: 'flex', gap: '16px', alignItems: 'center' }}>
            <Link href="/" style={{ 
              display: 'flex', alignItems: 'center', justifyContent: 'center', width: '45px', height: '45px', 
              backgroundColor: '#801515', color: 'white', border: 'none', borderRadius: '12px',
              cursor: 'pointer', textDecoration: 'none', boxShadow: '0 4px 12px rgba(128, 21, 21, 0.2)'
            }}>
              <Home size={22} />
            </Link>
            
            <div style={{ width: '1px', height: '24px', backgroundColor: '#E5E7EB', margin: '0 8px' }} />
            
            {/* Location Dropdown */}
            <div style={{ position: 'relative' }}>
              <div style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF', marginBottom: '4px' }}>{t.sede}</div>
              <button 
                onClick={() => { setShowLocationMenu(!showLocationMenu); setShowPeriodMenu(false); }}
                style={{ 
                  display: 'flex', alignItems: 'center', gap: '8px', padding: '8px 16px', 
                  backgroundColor: '#F3F4F6', border: 'none', borderRadius: '12px',
                  fontSize: '13px', fontWeight: '800', cursor: 'pointer'
                }}
              >
                {location} <ChevronDown size={14} />
              </button>
              {showLocationMenu && (
                <div style={{ 
                  position: 'absolute', top: '100%', left: 0, marginTop: '8px', backgroundColor: 'white',
                  borderRadius: '16px', boxShadow: '0 10px 25px rgba(0,0,0,0.1)', border: '1px solid #E5E7EB',
                  padding: '8px', width: '200px', zIndex: 100
                }}>
                  {['POBLENOU | BCN', 'MERCAT | BCN', 'SAGRADA F. | BCN'].map((loc) => (
                    <div 
                      key={loc}
                      onClick={() => { setLocation(loc); setShowLocationMenu(false); }}
                      style={{ 
                        padding: '12px 16px', fontSize: '13px', fontWeight: '800', borderRadius: '8px',
                        cursor: 'pointer', display: 'flex', justifyContent: 'space-between',
                        backgroundColor: location === loc ? '#F3F4F6' : 'transparent',
                        color: location === loc ? '#801515' : '#1A1A1A'
                      }}
                    >
                      {loc} {location === loc && <Check size={14} />}
                    </div>
                  ))}
                </div>
              )}
            </div>

            {/* Period Dropdown */}
            <div style={{ position: 'relative' }}>
              <div style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF', marginBottom: '4px' }}>{t.periodo}</div>
              <button 
                onClick={() => { setShowPeriodMenu(!showPeriodMenu); setShowLocationMenu(false); }}
                style={{ 
                  display: 'flex', alignItems: 'center', gap: '8px', padding: '8px 16px', 
                  backgroundColor: '#F3F4F6', border: 'none', borderRadius: '12px',
                  fontSize: '13px', fontWeight: '800', cursor: 'pointer'
                }}
              >
                {t[period.toLowerCase().replace(' ', '_')] || period} <ChevronDown size={14} />
              </button>
              {showPeriodMenu && (
                <div style={{ 
                  position: 'absolute', top: '100%', left: 0, marginTop: '8px', backgroundColor: 'white',
                  borderRadius: '16px', boxShadow: '0 10px 25px rgba(0,0,0,0.1)', border: '1px solid #E5E7EB',
                  padding: '8px', width: '200px', zIndex: 100
                }}>
                  {['MES ACTUAL', 'SEMANA ACTUAL', 'HOY', 'AÑO 2026'].map((p) => (
                    <div 
                      key={p}
                      onClick={() => { setPeriod(p); setShowPeriodMenu(false); }}
                      style={{ 
                        padding: '12px 16px', fontSize: '13px', fontWeight: '800', borderRadius: '8px',
                        cursor: 'pointer', display: 'flex', justifyContent: 'space-between',
                        backgroundColor: period === p ? '#F3F4F6' : 'transparent',
                        color: period === p ? '#801515' : '#1A1A1A'
                      }}
                    >
                      {t[p.toLowerCase().replace(' ', '_')] || p} {period === p && <Check size={14} />}
                    </div>
                  ))}
                </div>
              )}
            </div>
          </div>

          <button 
            onClick={() => setActiveTab('planificacion')}
            style={{ 
              backgroundColor: '#1A1A1A', color: 'white', padding: '12px 24px', 
              borderRadius: '14px', fontSize: '13px', fontWeight: '900', border: 'none',
              display: 'flex', alignItems: 'center', gap: '8px', cursor: 'pointer',
              boxShadow: '0 10px 20px rgba(0,0,0,0.1)'
            }}
          >
            <LayoutDashboard size={16} color="#801515" />
            {t.ir_planificador}
          </button>
        </div>

        {/* 2. Tab Navigation (Dark Glass Style) */}
        <div style={{ 
          display: 'flex', 
          gap: '8px', 
          backgroundColor: '#1A1A1A',
          padding: '8px',
          borderRadius: '20px',
          marginBottom: '30px',
          boxShadow: '0 20px 40px rgba(0,0,0,0.15)',
          overflowX: 'auto',
          whiteSpace: 'nowrap'
        }}>
          {tabs.map((tab) => {
            const isActive = activeTab === tab.id;
            return (
              <button
                key={tab.id}
                onClick={() => setActiveTab(tab.id as TabId)}
                style={{
                  display: 'flex',
                  alignItems: 'center',
                  gap: '10px',
                  padding: '12px 24px',
                  borderRadius: '14px',
                  border: isActive ? 'none' : '1px solid rgba(255,255,255,0.1)',
                  backgroundColor: isActive ? '#FAF9F6' : 'transparent',
                  color: isActive ? '#1A1A1A' : 'rgba(255,255,255,0.6)',
                  fontSize: '12px',
                  fontWeight: '900',
                  cursor: 'pointer',
                  transition: 'all 0.2s cubic-bezier(0.4, 0, 0.2, 1)',
                  flexShrink: 0
                }}
              >
                <tab.icon size={16} color={isActive ? '#801515' : 'inherit'} />
                {tab.label}
              </button>
            );
          })}
        </div>

        {/* 3. Centralized View Container */}
        <div style={{ transition: 'all 0.3s ease-in-out' }}>
          {activeTab === 'ventas' && <VentasView />}
          {activeTab === 'analisis' && <AnalisisPredictivoView />}
          {activeTab === 'recetas' && <RecetasView />}
          {activeTab === 'costos' && <RentabilidadView />}
          {activeTab === 'planificacion' && <PlanificacionView />}
          {activeTab === 'admin' && <AdminUploadView />}
          {activeTab === 'eventos' && <EventNormalizerView />}
          
          {['merma', 'inventarios', 'pedidos', 'escanner'].includes(activeTab) && (
            <div style={{ 
              backgroundColor: 'white', padding: '100px', borderRadius: '32px', 
              textAlign: 'center', border: '1px solid #E5E7EB'
            }}>
              <LayoutDashboard size={48} color="#E5E7EB" style={{ marginBottom: '20px' }} />
              <h2 style={{ fontSize: '20px', fontWeight: '900', color: '#2D2926' }}>
                {t.desarrollo}
              </h2>
              <p style={{ color: '#9CA3AF', fontSize: '14px', marginTop: '8px' }}>
                {t.sincronizando}
              </p>
            </div>
          )}
        </div>
      </main>
    </div>
  );
}

export default function HubPage() {
  return (
    <Suspense fallback={<div style={{ padding: '60px', textAlign: 'center' }}>CARGANDO HUB...</div>}>
      <HubContent />
    </Suspense>
  );
}
