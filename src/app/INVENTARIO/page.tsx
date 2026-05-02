'use client';

import React from 'react';
import Link from 'next/link';
import { Smartphone, Camera, Cpu, Box, ShoppingCart, TrendingUp } from 'lucide-react';

export default function InventarioHubPage() {
  const options = [
    {
      title: 'Smart Procurement',
      description: 'Sugerencias automáticas de pedidos basadas en la producción de los próximos 7 días',
      icon: <ShoppingCart size={32} color="#801515" />,
      href: '/inventario/pedidos/sugerencias',
      status: 'active',
      badge: 'IA'
    },
    {
      title: 'Registrar Compra',
      description: 'Ingresa facturas de proveedores para aumentar el stock y actualizar costos',
      icon: <ShoppingCart size={32} color="#1A1A1A" />,
      href: '/inventario/compras',
      status: 'active'
    },
    {
      title: 'Reporte de Cierre',
      description: 'Analiza ventas, mermas y eficiencia del día por sede',
      icon: <TrendingUp size={32} color="#1A1A1A" />,
      href: '/inventario/reporte-cierre',
      status: 'active',
      badge: 'NUEVO'
    },
    {
      title: 'Formulario Digital',
      description: 'Ingresa las cantidades producto por producto',
      icon: <Smartphone size={32} color="#1A1A1A" />,
      href: '/inventario/formulario',
      status: 'active'
    },
    {
      title: 'Foto del Inventario',
      description: 'Sube foto de la plantilla de Producción del Día con la columna de inventario completada',
      icon: <Camera size={32} color="#1A1A1A" />,
      href: '/inventario/foto',
      status: 'active',
      badge: '✨'
    },
    {
      title: 'Stock en Tiempo Real',
      description: 'Consulta el inventario actual de materias primas y alertas de stock bajo',
      icon: <Box size={32} color="#1A1A1A" />,
      href: '/inventario/stock',
      status: 'active',
      badge: 'NUEVO'
    },
    {
      title: 'Inventario con IA',
      description: 'Sube fotos de facturas y la IA extraerá productos y cantidades automáticamente',
      icon: <Cpu size={32} color="#801515" />,
      href: '/inventario/compras',
      status: 'active',
      badge: 'GEMINI'
    }
  ];

  return (
    <div style={{ backgroundColor: '#F3F4F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ backgroundColor: '#801515', color: 'white', padding: '20px 40px' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
          <a href="https://www.instagram.com/crosticookies?igsh=dHd0dWQ5aWVrdWM5" target="_blank" rel="noopener noreferrer">
            <img src="/logo-crosti.jpg" alt="Crosti Logo" style={{ height: '40px', borderRadius: '8px', border: '2px solid rgba(255,255,255,0.2)', cursor: 'pointer' }} />
          </a>
          <div>
            <h1 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>Inventario de Cierre</h1>
            <p style={{ fontSize: '12px', margin: 0, opacity: 0.9 }}>Crosti Hub — Conteo diario al cierre</p>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', padding: '60px 20px' }}>
        <h2 style={{ fontSize: '24px', fontWeight: 'bold', marginBottom: '8px', textAlign: 'center' }}>¿Cómo quieres registrar el inventario?</h2>
        <p style={{ color: '#666', fontSize: '14px', marginBottom: '40px', textAlign: 'center' }}>Elige el método que prefieras</p>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '20px', width: '100%', maxWidth: '500px' }}>
          {options.map((opt, idx) => (
            <div 
              key={idx}
              style={{
                backgroundColor: opt.status === 'upcoming' ? 'rgba(255,255,255,0.5)' : 'white',
                padding: '30px',
                borderRadius: '20px',
                border: opt.status === 'upcoming' ? '1px solid #E5E7EB' : '1px solid #E5E7EB',
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
                textAlign: 'center',
                cursor: opt.status === 'upcoming' ? 'default' : 'pointer',
                transition: 'transform 0.2s, box-shadow 0.2s',
                position: 'relative'
              }}
              onMouseOver={(e) => {
                if (opt.status !== 'upcoming') {
                  e.currentTarget.style.transform = 'translateY(-4px)';
                  e.currentTarget.style.boxShadow = '0 10px 25px -5px rgba(0, 0, 0, 0.1)';
                }
              }}
              onMouseOut={(e) => {
                if (opt.status !== 'upcoming') {
                  e.currentTarget.style.transform = 'translateY(0)';
                  e.currentTarget.style.boxShadow = 'none';
                }
              }}
            >
              {opt.badge && (
                <div style={{ 
                  position: 'absolute', 
                  top: '-10px', 
                  backgroundColor: opt.status === 'upcoming' ? '#E5E7EB' : '#801515',
                  color: opt.status === 'upcoming' ? '#6B7280' : 'white',
                  padding: '4px 12px',
                  borderRadius: '12px',
                  fontSize: '10px',
                  fontWeight: 'bold'
                }}>
                  {opt.badge}
                </div>
              )}
              <div style={{ marginBottom: '20px', opacity: opt.status === 'upcoming' ? 0.5 : 1 }}>{opt.icon}</div>
              <h3 style={{ fontSize: '18px', fontWeight: 'bold', margin: '0 0 10px 0', color: opt.status === 'upcoming' ? '#9CA3AF' : '#1A1A1A' }}>{opt.title}</h3>
              <p style={{ fontSize: '13px', color: '#666', margin: 0, lineHeight: '1.5', opacity: opt.status === 'upcoming' ? 0.5 : 1 }}>{opt.description}</p>
            </div>
          ))}
        </div>
      </main>
    </div>
  );
}

