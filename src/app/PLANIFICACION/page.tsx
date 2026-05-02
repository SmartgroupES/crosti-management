'use client';

import React from 'react';
import Link from 'next/link';
import { Calendar, Zap, ArrowLeft, Clock, BarChart3, ChevronRight, Camera } from 'lucide-react';

export default function PlanificacionDashboard() {
  const stats = [
    { label: 'PRODUCCIÓN HOY', value: '450', sub: 'unidades horneadas', icon: <Zap size={18} color="#EF4444" /> },
    { label: 'ESTADO DE CIERRE', value: 'Pendiente', sub: 'Esperando reporte', icon: <Clock size={18} color="#801515" /> },
  ];

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif', color: '#1A1A1A' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER AL DASHBOARD
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Planificación Inteligente</h1>
        </div>
        <div style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '6px 16px', borderRadius: '20px', fontSize: '12px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}>
          <Calendar size={14} /> {new Date().toLocaleDateString('es-ES', { day: 'numeric', month: 'long' })}
        </div>
      </header>

      <main style={{ padding: '40px', maxWidth: '1000px', margin: '0 auto' }}>
        
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(240px, 1fr))', gap: '20px', marginBottom: '40px' }}>
          {stats.map((stat, idx) => (
            <div key={idx} style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
               <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '12px' }}>
                <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '0.5px' }}>{stat.label}</div>
                {stat.icon}
              </div>
              <div style={{ fontSize: '24px', fontWeight: 'bold', marginBottom: '4px' }}>{stat.value}</div>
              <div style={{ fontSize: '12px', color: '#6B7280' }}>{stat.sub}</div>
            </div>
          ))}
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1.5fr 1fr', gap: '30px' }}>
          {/* Main Action Card */}
          <Link href="/PLANIFICACION/reporte-cierre" style={{ textDecoration: 'none' }}>
            <div style={{ 
              backgroundColor: '#1A1A1A', 
              padding: '40px', 
              borderRadius: '24px', 
              color: 'white',
              position: 'relative',
              overflow: 'hidden',
              cursor: 'pointer',
              transition: 'transform 0.2s',
              boxShadow: '0 20px 25px -5px rgba(0, 0, 0, 0.1)'
            }}
            onMouseOver={(e) => e.currentTarget.style.transform = 'translateY(-4px)'}
            onMouseOut={(e) => e.currentTarget.style.transform = 'translateY(0)'}
            >
              <div style={{ position: 'relative', zIndex: 2 }}>
                <div style={{ backgroundColor: 'rgba(255,255,255,0.1)', width: '48px', height: '48px', borderRadius: '12px', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '20px' }}>
                  <Camera size={24} color="white" />
                </div>
                <h2 style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '12px' }}>Reporte de Cierre</h2>
                <p style={{ fontSize: '14px', color: '#9CA3AF', marginBottom: '30px', maxWidth: '300px' }}>
                  Inicia el proceso de cierre diario usando la cámara para auditar el inventario final y reportar mermas.
                </p>
                <div style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '14px', fontWeight: 'bold' }}>
                  Empezar ahora <ChevronRight size={16} />
                </div>
              </div>
              {/* Decorative circle */}
              <div style={{ position: 'absolute', right: '-50px', bottom: '-50px', width: '200px', height: '200px', borderRadius: '100px', border: '1px solid rgba(255,255,255,0.05)' }}></div>
            </div>
          </Link>

          {/* Secondary Actions */}
          <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
            <Link href="/PLANIFICACION/propuesta" style={{ textDecoration: 'none' }}>
              <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <div>
                  <div style={{ backgroundColor: '#F3F4F6', width: '40px', height: '40px', borderRadius: '10px', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '16px' }}>
                    <BarChart3 size={20} color="#1A1A1A" />
                  </div>
                  <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Plan de Producción</h3>
                  <p style={{ fontSize: '12px', color: '#666', marginTop: '4px' }}>Ver propuesta para mañana</p>
                </div>
                <ChevronRight size={20} color="#E5E7EB" />
              </div>
            </Link>

            <div style={{ backgroundColor: '#F9FAFB', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB' }}>
              <h3 style={{ fontSize: '14px', fontWeight: 'bold', marginBottom: '16px' }}>Tips de Eficiencia</h3>
              <div style={{ fontSize: '12px', color: '#6B7280', lineHeight: '1.6' }}>
                "Recuerda subir la foto con buena iluminación para que la IA identifique correctamente los rellenos de las galletas gourmet."
              </div>
            </div>
          </div>
        </div>

      </main>
    </div>
  );
}
