'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Camera, Box, CheckCircle, Shield, Zap, Info, Smartphone, Eye } from 'lucide-react';

export default function InventarioFotoPage() {
  const [selectedStore, setSelectedStore] = useState('RETIRO');
  const [productType, setProductType] = useState('COOKIES');
  const [mode, setMode] = useState<'QUALITY' | 'INVENTORY'>('QUALITY');
  const [isScanning, setIsScanning] = useState(false);
  const [scanResult, setScanResult] = useState<any>(null);

  const handleFileChange = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    setIsScanning(true);
    setScanResult(null);

    const formData = new FormData();
    formData.append('file', file);
    formData.append('productType', productType);
    formData.append('location', selectedStore);

    const endpoint = mode === 'QUALITY' ? '/api/vision/quality' : '/api/vision/inventory';

    try {
      const response = await fetch(endpoint, {
        method: 'POST',
        body: formData,
      });

      if (!response.ok) throw new Error('Error en el análisis');
      
      const result = await response.json();
      setScanResult(result);
    } catch (error) {
      console.error(error);
      alert('Error al analizar la imagen. Por favor intenta de nuevo.');
    } finally {
      setIsScanning(false);
    }
  };

  const triggerInput = () => {
    document.getElementById('cameraInput')?.click();
  };

  return (
    <div style={{ backgroundColor: '#0F172A', minHeight: '100vh', color: 'white', fontFamily: 'Inter, system-ui, sans-serif' }}>
      {/* BakeOS Glass Header */}
      <header style={{ 
        backdropFilter: 'blur(10px)', 
        backgroundColor: 'rgba(15, 23, 42, 0.8)', 
        borderBottom: '1px solid rgba(255,255,255,0.1)', 
        padding: '20px 40px', 
        display: 'flex', 
        justifyContent: 'space-between', 
        alignItems: 'center',
        position: 'sticky',
        top: 0,
        zIndex: 100
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
           <div style={{ background: 'linear-gradient(135deg, #801515, #EA580C)', padding: '8px', borderRadius: '10px', boxShadow: '0 0 20px rgba(249, 115, 22, 0.3)' }}>
             <Zap size={24} fill="white" />
           </div>
           <div>
             <h1 style={{ fontSize: '18px', fontWeight: '800', margin: 0, letterSpacing: '-0.5px' }}>BakeOS <span style={{ color: '#801515' }}>Vision</span></h1>
             <p style={{ fontSize: '12px', margin: 0, opacity: 0.6 }}>Control de Calidad IA — {selectedStore}</p>
           </div>
        </div>
        <Link href="/" style={{ fontSize: '13px', color: '#94A3B8', textDecoration: 'none', fontWeight: '500', display: 'flex', alignItems: 'center', gap: '5px' }}>
          <Box size={16} /> Dashboard
        </Link>
      </header>

      <main style={{ padding: '30px 40px', maxWidth: '800px', margin: '0 auto' }}>
        
        {/* Hardware Optimization Alert */}
        <div style={{ 
          backgroundColor: 'rgba(59, 130, 246, 0.1)', 
          border: '1px solid rgba(59, 130, 246, 0.2)', 
          borderRadius: '16px', 
          padding: '15px 20px',
          display: 'flex',
          alignItems: 'center',
          gap: '15px',
          marginBottom: '24px'
        }}>
          <Smartphone size={24} color="#60A5FA" />
          <div>
            <p style={{ margin: 0, fontSize: '13px', fontWeight: '600', color: '#60A5FA' }}>Optimización de Hardware Activa</p>
            <p style={{ margin: 0, fontSize: '11px', color: '#94A3B8' }}>Detectado iPhone: Sensor LiDAR calibrado para profundidad.</p>
          </div>
        </div>

        {/* Mode Toggle */}
        <div style={{ display: 'flex', backgroundColor: 'rgba(255,255,255,0.05)', borderRadius: '16px', padding: '5px', marginBottom: '24px' }}>
          <button 
            onClick={() => setMode('QUALITY')}
            style={{ 
              flex: 1, padding: '12px', borderRadius: '12px', border: 'none', fontSize: '13px', fontWeight: 'bold', 
              backgroundColor: mode === 'QUALITY' ? '#801515' : 'transparent', color: 'white', cursor: 'pointer', transition: '0.3s' 
            }}
          >
            Control de Calidad
          </button>
          <button 
            onClick={() => setMode('INVENTORY')}
            style={{ 
              flex: 1, padding: '12px', borderRadius: '12px', border: 'none', fontSize: '13px', fontWeight: 'bold', 
              backgroundColor: mode === 'INVENTORY' ? '#801515' : 'transparent', color: 'white', cursor: 'pointer', transition: '0.3s' 
            }}
          >
            Sincronización Stock
          </button>
        </div>

        {/* Configuration */}
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '15px', marginBottom: '24px' }}>
          <div style={{ backgroundColor: 'rgba(255,255,255,0.05)', padding: '15px', borderRadius: '16px', border: '1px solid rgba(255,255,255,0.1)' }}>
            <label style={{ fontSize: '11px', color: '#94A3B8', display: 'block', marginBottom: '8px', textTransform: 'uppercase', letterSpacing: '1px' }}>Estándar de Calidad</label>
            <select 
              value={productType}
              onChange={(e) => setProductType(e.target.value)}
              style={{ width: '100%', padding: '10px', borderRadius: '8px', border: 'none', fontSize: '14px', backgroundColor: 'rgba(255,255,255,0.1)', color: 'white', outline: 'none' }}
            >
              <option value="COOKIES">Cookies (9.5-10.5cm)</option>
              <option value="ENSALADAS">Ensaladas (Vibrancia)</option>
              <option value="SALADOS">Salados (Maillard)</option>
            </select>
          </div>
          <div style={{ backgroundColor: 'rgba(255,255,255,0.05)', padding: '15px', borderRadius: '16px', border: '1px solid rgba(255,255,255,0.1)' }}>
            <label style={{ fontSize: '11px', color: '#94A3B8', display: 'block', marginBottom: '8px', textTransform: 'uppercase', letterSpacing: '1px' }}>Ubicación</label>
            <select 
              value={selectedStore}
              onChange={(e) => setSelectedStore(e.target.value)}
              style={{ width: '100%', padding: '10px', borderRadius: '8px', border: 'none', fontSize: '14px', backgroundColor: 'rgba(255,255,255,0.1)', color: 'white', outline: 'none' }}
            >
              <option value="RETIRO">RETIRO</option>
              <option value="ALCALA">ALCALÁ</option>
            </select>
          </div>
        </div>

        {/* Scan Area */}
        <input 
          type="file" 
          id="cameraInput" 
          accept="image/*" 
          capture="environment" 
          onChange={handleFileChange} 
          style={{ display: 'none' }} 
        />
        {!scanResult ? (
          <div 
            onClick={triggerInput}
            style={{ 
              background: 'linear-gradient(180deg, rgba(255,255,255,0.05) 0%, rgba(255,255,255,0) 100%)', 
              border: isScanning ? '2px solid #801515' : '2px dashed rgba(255,255,255,0.2)', 
              borderRadius: '24px', 
              padding: '80px 40px',
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              justifyContent: 'center',
              textAlign: 'center',
              cursor: 'pointer',
              marginBottom: '24px',
              transition: 'all 0.3s ease',
              position: 'relative',
              overflow: 'hidden'
            }}
          >
            {isScanning && (
              <div style={{ 
                position: 'absolute', 
                top: 0, left: 0, right: 0, height: '4px', 
                background: '#801515', 
                animation: 'scanLine 2s infinite linear' 
              }} />
            )}
            <Camera size={56} color={isScanning ? "#801515" : "#94A3B8"} style={{ marginBottom: '24px', filter: isScanning ? 'drop-shadow(0 0 10px rgba(249, 115, 22, 0.5))' : 'none' }} />
            <h3 style={{ fontSize: '20px', fontWeight: 'bold', marginBottom: '8px' }}>{isScanning ? 'Analizando Vitrina...' : 'Capturar Producción'}</h3>
            <p style={{ fontSize: '13px', color: '#94A3B8' }}>La IA validará diámetro, toppings y punto de horneado.</p>
          </div>
        ) : (
          <div style={{ 
            backgroundColor: 'rgba(34, 197, 94, 0.1)', 
            border: '1px solid rgba(34, 197, 94, 0.3)', 
            borderRadius: '24px', 
            padding: '30px',
            marginBottom: '24px',
            animation: 'fadeIn 0.5s ease'
          }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '20px' }}>
              <div>
                <span style={{ backgroundColor: '#22C55E', color: 'white', padding: '4px 12px', borderRadius: '20px', fontSize: '11px', fontWeight: 'bold', textTransform: 'uppercase' }}>{scanResult.status}</span>
                <h3 style={{ fontSize: '24px', fontWeight: '900', margin: '10px 0 5px 0' }}>Score: {scanResult.score}/5.0</h3>
                <p style={{ fontSize: '13px', color: '#94A3B8', margin: 0 }}>Análisis completado con precisión LiDAR.</p>
              </div>
              <button onClick={() => setScanResult(null)} style={{ background: 'none', border: 'none', color: '#94A3B8', cursor: 'pointer' }}><Eye size={20} /></button>
            </div>
            
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '15px' }}>
              <div style={{ backgroundColor: 'rgba(255,255,255,0.05)', padding: '15px', borderRadius: '12px' }}>
                <p style={{ margin: 0, fontSize: '11px', color: '#94A3B8', textTransform: 'uppercase' }}>Punto Maillard</p>
                <div style={{ display: 'flex', gap: '5px', marginTop: '8px' }}>
                  {[1,2,3,4,5].map(v => (
                    <div key={v} style={{ height: '6px', flex: 1, borderRadius: '3px', backgroundColor: v <= scanResult.maillard ? '#801515' : 'rgba(255,255,255,0.1)' }} />
                  ))}
                </div>
              </div>
              <div style={{ backgroundColor: 'rgba(255,255,255,0.05)', padding: '15px', borderRadius: '12px' }}>
                <p style={{ margin: 0, fontSize: '11px', color: '#94A3B8', textTransform: 'uppercase' }}>Diámetro Promedio</p>
                <p style={{ margin: '5px 0 0 0', fontSize: '18px', fontWeight: 'bold' }}>{scanResult.diameter}</p>
              </div>
            </div>
          </div>
        )}

        {/* Action Buttons */}
        <div style={{ display: 'flex', gap: '15px' }}>
          <button style={{ 
            flex: 1, 
            backgroundColor: scanResult ? '#801515' : 'rgba(255,255,255,0.1)', 
            color: 'white', 
            border: 'none', 
            padding: '16px', 
            borderRadius: '16px', 
            fontSize: '15px', 
            fontWeight: 'bold', 
            cursor: scanResult ? 'pointer' : 'not-allowed',
            transition: 'all 0.3s ease'
          }}>
            Registrar Calidad
          </button>
          <button style={{ 
            backgroundColor: 'rgba(255,255,255,0.05)', 
            color: 'white', 
            border: '1px solid rgba(255,255,255,0.1)', 
            padding: '16px 24px', 
            borderRadius: '16px', 
            fontSize: '15px', 
            fontWeight: 'bold', 
            cursor: 'pointer'
          }}>
            Ver Historial
          </button>
        </div>

      </main>

      <style jsx>{`
        @keyframes scanLine {
          0% { transform: translateY(0); opacity: 0; }
          50% { opacity: 1; }
          100% { transform: translateY(240px); opacity: 0; }
        }
        @keyframes fadeIn {
          from { opacity: 0; transform: translateY(10px); }
          to { opacity: 1; transform: translateY(0); }
        }
      `}</style>
    </div>
  );
}
