'use client';

import React, { useState, useEffect } from 'react';
import Header from '@/components/Header';
import { 
  TrendingUp, 
  Calculator, 
  BookOpen, 
  Calendar, 
  ChefHat, 
  Trash2, 
  Package, 
  Settings, 
  Camera, 
  Zap, 
  Users, 
  Clock, 
  Activity,
  ArrowRight,
  PieChart,
  Layers,
  Wrench,
  UserCircle,
  LayoutDashboard,
  Truck,
  Map,
  ShoppingBag,
  Lock,
  Unlock,
  ShieldAlert,
  Database
} from 'lucide-react';
import { useRouter } from 'next/navigation';
import { translations } from '@/lib/translations';

// Import Views from HUB
import VentasView from './HUB/views/VentasView';
import AnalisisPredictivoView from './HUB/views/AnalisisPredictivoView';
import RentabilidadView from './HUB/views/RentabilidadView';
import RecetasView from './HUB/views/RecetasView';
import PlanificacionView from './HUB/views/PlanificacionView';
import AdminUploadView from './HUB/views/AdminUploadView';
import EventNormalizerView from './HUB/views/EventNormalizerView';

export default function HomePage() {
  const router = useRouter();
  const [lang, setLang] = useState('ES');
  const [activeTab, setActiveTab] = useState(0);
  const [activeSubTab, setActiveSubTab] = useState(0);
  const [isLoaded, setIsLoaded] = useState(false);
  const [showAuthModal, setShowAuthModal] = useState(false);
  const [isAdminUnlocked, setIsAdminUnlocked] = useState(false);
  const [adminPassword, setAdminPassword] = useState('');
  const [authError, setAuthError] = useState('');

  useEffect(() => {
    // Sync language on mount
    const savedLang = localStorage.getItem('crosti_lang') || 'ES';
    setLang(savedLang);

    // Sync tabs on mount
    const savedTab = localStorage.getItem('crosti_active_tab');
    const savedSubTab = localStorage.getItem('crosti_active_subtab');
    
    if (savedTab !== null) setActiveTab(parseInt(savedTab));
    if (savedSubTab !== null) setActiveSubTab(parseInt(savedSubTab));
    
    setIsLoaded(true);

    // Sync language on change
    const handleLangChange = () => {
      const currentLang = localStorage.getItem('crosti_lang') || 'ES';
      setLang(currentLang);
    };

    window.addEventListener('languageChanged', handleLangChange);
    return () => window.removeEventListener('languageChanged', handleLangChange);
  }, []);

  // Save tabs to localStorage whenever they change
  useEffect(() => {
    if (isLoaded) {
      localStorage.setItem('crosti_active_tab', activeTab.toString());
      localStorage.setItem('crosti_active_subtab', activeSubTab.toString());
    }
  }, [activeTab, activeSubTab, isLoaded]);

  const t = translations[lang as keyof typeof translations] || translations.ES;

  const sections = [
    {
      id: 'analisis',
      label: t.TAB_ANALISIS,
      title: t.ANÁLISIS_PREDICTIVO,
      icon: <PieChart size={20} />,
      items: [
        { label: t.SEGUIMIENTO_DE_VENTAS, view: <VentasView />, icon: <TrendingUp size={16} /> },
        { label: t.CUMPLIMIENTO_DE_PLAN, view: <AnalisisPredictivoView />, icon: <Activity size={16} /> },
        { label: t.NORMALIZADOR_DE_EVENTOS, view: <EventNormalizerView />, icon: <Settings size={16} /> },
        { label: t.RENTABILIDAD_Y_COSTOS, view: <RentabilidadView />, icon: <Calculator size={16} /> }
      ]
    },
    {
      id: 'operaciones',
      label: t.TAB_OPERACIONES,
      title: t.OPERACIONES_Y_CIERRE,
      icon: <Layers size={20} />,
      items: [
        { label: t.PRODUCCIÓN_DIARIA, view: <PlanificacionView />, icon: <ChefHat size={16} /> },
        { label: t.REGISTRO_DE_MERMA_IA, view: <PlaceholderView title={t.REGISTRO_DE_MERMA_IA} />, icon: <Trash2 size={16} /> },
        { label: t.INVENTARIO_DE_CIERRE, view: <PlaceholderView title={t.INVENTARIO_DE_CIERRE} />, icon: <Package size={16} /> },
        { label: t.GESTIÓN_DE_RECETAS, view: <RecetasView />, icon: <BookOpen size={16} /> }
      ]
    },
    {
      id: 'catering',
      label: t.TAB_CATERING,
      title: t.CATERING_TITLE,
      icon: <Truck size={20} />,
      items: [
        { label: 'GESTIÓN DE PEDIDOS', view: <PlaceholderView title="GESTIÓN DE PEDIDOS CATERING" />, icon: <ShoppingBag size={16} /> },
        { label: 'CALENDARIO EVENTOS', view: <PlaceholderView title="CALENDARIO DE EVENTOS" />, icon: <Calendar size={16} /> },
        { label: 'CLIENTES CORPORATIVOS', view: <PlaceholderView title="BASE DE CLIENTES VIP" />, icon: <Users size={16} /> },
        { label: 'RUTAS DE REPARTO', view: <PlaceholderView title="LOGÍSTICA Y RUTAS" />, icon: <Map size={16} /> }
      ]
    },
    {
      id: 'herramientas',
      label: t.TAB_HERRAMIENTAS,
      title: t.BAKEOS_IA_VISION,
      icon: <Wrench size={20} />,
      items: [
        { label: t.ESCÁNER_DE_INVENTARIO, view: <PlaceholderView title={t.ESCÁNER_DE_INVENTARIO} />, icon: <Camera size={16} /> },
        { label: t.CONTROL_DE_CALIDAD_IA, view: <PlaceholderView title={t.CONTROL_DE_CALIDAD_IA} />, icon: <Zap size={16} /> }
      ]
    },
    {
      id: 'admin_panel',
      label: t.TAB_ADMIN,
      title: 'PANEL DE CONTROL ADMINISTRATIVO',
      icon: <Lock size={20} />,
      items: [
        { label: t.CARGA_DE_DATOS_ADMIN, view: <AdminUploadView />, icon: <Database size={16} /> },
        { label: 'CONTROL DE USUARIOS', view: <PlaceholderView title="GESTIÓN DE PERMISOS" />, icon: <Users size={16} /> },
        { label: 'CONFIGURACIÓN GLOBAL', view: <PlaceholderView title="AJUSTES DEL SISTEMA" />, icon: <Settings size={16} /> },
        { label: 'AUDITORÍA DE LOGS', view: <PlaceholderView title="REGISTROS DE SEGURIDAD" />, icon: <Activity size={16} /> }
      ]
    }
  ];

  const handleMainTabChange = (idx: number) => {
    if (sections[idx].id === 'admin_panel' && !isAdminUnlocked) {
      setShowAuthModal(true);
      return;
    }
    setActiveTab(idx);
    setActiveSubTab(0); // Reset subtab when main tab changes
  };

  const handleAdminAuth = (e: React.FormEvent) => {
    e.preventDefault();
    // Authorized credentials from login API
    const isNelson = adminPassword === '10334346';
    const isStephano = adminPassword === '04248748406' || adminPassword === '10334346';

    if (isNelson || isStephano) {
      setIsAdminUnlocked(true);
      setShowAuthModal(false);
      setActiveTab(sections.findIndex(s => s.id === 'admin_panel'));
      setActiveSubTab(0);
      setAdminPassword('');
      setAuthError('');
    } else {
      setAuthError('CLAVE DE ACCESO INCORRECTA');
    }
  };

  return (
    <div className="fade-in" style={{ 
      minHeight: '100vh', 
      width: '100%',
      padding: '120px 2% 60px 2%',
      display: 'flex',
      flexDirection: 'column',
      backgroundColor: '#EDE8D0', 
      position: 'relative',
      overflowX: 'hidden'
    }}>
      <Header />

      <div style={{ maxWidth: '1400px', margin: '0 auto', width: '100%' }}>
        {/* Level 1 Tabs (Main Navigation) */}
        <div style={{ 
          display: 'flex', 
          justifyContent: 'center', 
          gap: '8px', 
          marginBottom: '24px',
          padding: '8px',
          backgroundColor: 'rgba(255, 255, 255, 0.4)',
          borderRadius: '24px',
          backdropFilter: 'blur(10px)',
          width: 'fit-content',
          margin: '0 auto 24px auto',
          border: '1px solid rgba(255, 255, 255, 0.5)'
        }}>
          {sections.map((section, idx) => (
            <button
              key={section.id}
              onClick={() => handleMainTabChange(idx)}
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '10px',
                padding: '10px 18px',
                borderRadius: '16px',
                border: 'none',
                backgroundColor: activeTab === idx ? '#801515' : 'transparent',
                color: activeTab === idx ? 'white' : '#2D2926',
                fontSize: '12px',
                fontWeight: '900',
                cursor: 'pointer',
                transition: 'all 0.3s cubic-bezier(0.4, 0, 0.2, 1)',
                boxShadow: activeTab === idx ? '0 10px 20px rgba(128, 21, 21, 0.2)' : 'none',
                letterSpacing: '0.5px',
                whiteSpace: 'nowrap'
              }}
            >
              <span style={{ opacity: activeTab === idx ? 1 : 0.6 }}>{section.icon}</span>
              {section.label}
            </button>
          ))}
        </div>

        {/* Level 2 Tabs (Sub-Navigation) */}
        <div style={{ 
          display: 'flex', 
          justifyContent: 'center', 
          gap: '8px', 
          marginBottom: '32px',
          overflowX: 'auto',
          padding: '4px'
        }}>
          {sections[activeTab].items.map((item, idx) => (
            <button
              key={idx}
              onClick={() => setActiveSubTab(idx)}
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '8px',
                padding: '10px 20px',
                borderRadius: '14px',
                border: activeSubTab === idx ? '1px solid #801515' : '1px solid rgba(0,0,0,0.05)',
                backgroundColor: activeSubTab === idx ? 'white' : 'rgba(255, 255, 255, 0.5)',
                color: activeSubTab === idx ? '#801515' : '#2D2926',
                fontSize: '11px',
                fontWeight: '900',
                cursor: 'pointer',
                transition: 'all 0.2s ease',
                whiteSpace: 'nowrap',
                textTransform: 'uppercase',
                letterSpacing: '0.5px'
              }}
            >
              {item.icon}
              {item.label}
            </button>
          ))}
        </div>

        {/* Main Content Area */}
        <div className="tab-content" style={{ 
          width: '100%',
          minHeight: '600px'
        }}>
          <div style={{ 
            backgroundColor: 'rgba(255, 255, 255, 0.7)', 
            padding: '40px', 
            borderRadius: '40px',
            border: '1px solid rgba(255, 255, 255, 0.8)', 
            backdropFilter: 'blur(20px)', 
            boxShadow: '0 30px 60px rgba(0,0,0,0.06)',
            position: 'relative'
          }}>
            {isLoaded ? (
              sections[activeTab].items[activeSubTab].view
            ) : (
              <div style={{ height: '400px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                <Activity className="animate-spin" size={32} color="#801515" />
              </div>
            )}
          </div>
        </div>

        {/* Admin Auth Modal */}
        {showAuthModal && (
          <div style={{
            position: 'fixed', top: 0, left: 0, width: '100vw', height: '100vh',
            backgroundColor: 'rgba(0,0,0,0.6)', backdropFilter: 'blur(10px)',
            zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center',
            animation: 'fadeIn 0.3s ease-out'
          }}>
            <div style={{
              backgroundColor: 'white', padding: '40px', borderRadius: '32px',
              width: '90%', maxWidth: '400px', textAlign: 'center',
              boxShadow: '0 25px 50px rgba(0,0,0,0.2)'
            }}>
              <div style={{ 
                backgroundColor: '#FEE2E2', width: '60px', height: '60px', borderRadius: '20px',
                display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 24px auto'
              }}>
                <Lock size={30} color="#801515" />
              </div>
              <h2 style={{ fontSize: '20px', fontWeight: '900', color: '#1A1A1A', marginBottom: '8px' }}>ÁREA RESTRINGIDA</h2>
              <p style={{ fontSize: '13px', fontWeight: '600', color: '#9CA3AF', marginBottom: '32px' }}>
                SE REQUIERE CLAVE DE ACCESO ESPECIAL (ADMIN/SUPERADMIN)
              </p>

              <form onSubmit={handleAdminAuth}>
                <input 
                  type="password"
                  placeholder="INTRODUZCA SU CLAVE"
                  value={adminPassword}
                  onChange={(e) => setAdminPassword(e.target.value)}
                  autoFocus
                  style={{
                    width: '100%', padding: '16px 20px', borderRadius: '14px',
                    border: '1px solid #E5E7EB', backgroundColor: '#F9FAFB',
                    fontSize: '14px', fontWeight: '700', marginBottom: '16px',
                    textAlign: 'center', outline: 'none'
                  }}
                />
                {authError && (
                  <div style={{ color: '#801515', fontSize: '11px', fontWeight: '900', marginBottom: '16px' }}>
                    <ShieldAlert size={12} style={{ display: 'inline', marginRight: '4px' }} />
                    {authError}
                  </div>
                )}
                <div style={{ display: 'flex', gap: '12px' }}>
                  <button 
                    type="button"
                    onClick={() => setShowAuthModal(false)}
                    style={{
                      flex: 1, padding: '14px', borderRadius: '14px', border: 'none',
                      backgroundColor: '#F3F4F6', color: '#4B5563', fontSize: '12px', fontWeight: '900', cursor: 'pointer'
                    }}
                  >
                    CANCELAR
                  </button>
                  <button 
                    type="submit"
                    style={{
                      flex: 1, padding: '14px', borderRadius: '14px', border: 'none',
                      backgroundColor: '#801515', color: 'white', fontSize: '12px', fontWeight: '900', cursor: 'pointer',
                      boxShadow: '0 10px 20px rgba(128, 21, 21, 0.2)'
                    }}
                  >
                    ACCEDER
                  </button>
                </div>
              </form>
            </div>
          </div>
        )}
      </div>

      <style jsx global>{`
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;800;900&display=swap');
        
        body { font-family: 'Outfit', sans-serif; }
        .fade-in { animation: fadeIn 1s cubic-bezier(0.16, 1, 0.3, 1) forwards; }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(30px); } to { opacity: 1; transform: translateY(0); } }
        
        .tab-content { animation: tabFadeIn 0.5s cubic-bezier(0.16, 1, 0.3, 1) forwards; }
        @keyframes tabFadeIn { from { opacity: 0; transform: scale(0.99); } to { opacity: 1; transform: scale(1); } }
      `}</style>
    </div>
  );
}

function PlaceholderView({ title }: { title: string }) {
  return (
    <div style={{ padding: '100px', textAlign: 'center' }}>
      <LayoutDashboard size={64} color="#E5E7EB" style={{ marginBottom: '24px' }} />
      <h2 style={{ fontSize: '24px', fontWeight: '900', color: '#2D2926' }}>
        {title}
      </h2>
      <p style={{ color: '#9CA3AF', fontSize: '16px', marginTop: '12px', fontWeight: '600' }}>
        MÓDULO EN DESARROLLO - SINCRONIZANDO ALGORITMOS
      </p>
    </div>
  );
}
