'use client';

import React, { useState } from 'react';
import { 
  Upload, 
  FileText, 
  Database, 
  ShieldCheck, 
  CheckCircle2, 
  AlertCircle,
  Activity
} from 'lucide-react';

export default function AdminUploadView() {
  const [isUploading, setIsUploading] = useState(false);
  const [uploadStatus, setUploadStatus] = useState<'idle' | 'success' | 'error'>('idle');

  const handleSimulatedUpload = () => {
    setIsUploading(true);
    setTimeout(() => {
      setIsUploading(false);
      setUploadStatus('success');
    }, 2500);
  };

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
      {/* 1. Admin Shield */}
      <div style={{ 
        backgroundColor: '#801515', color: 'white', padding: '24px', borderRadius: '24px',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        boxShadow: '0 10px 20px rgba(128, 21, 21, 0.1)'
      }}>
        <div style={{ display: 'flex', gap: '16px', alignItems: 'center' }}>
          <div style={{ backgroundColor: 'rgba(255,255,255,0.2)', width: '40px', height: '40px', borderRadius: '12px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <ShieldCheck size={24} color="white" />
          </div>
          <div>
            <h2 style={{ fontSize: '14px', fontWeight: '900', letterSpacing: '0.5px' }}>ACCESO SUPERADMINISTRADOR</h2>
            <p style={{ fontSize: '11px', color: 'rgba(255,255,255,0.7)', fontWeight: '600', marginTop: '2px' }}>
              CARGA MASIVA DE DATOS
            </p>
          </div>
        </div>
        <div style={{ textAlign: 'right' }}>
           <div style={{ fontSize: '9px', fontWeight: '900', color: 'rgba(255,255,255,0.6)', letterSpacing: '1px' }}>VERSION</div>
           <div style={{ fontSize: '12px', fontWeight: '800', color: '#FFD700' }}>SYNC_v2</div>
        </div>
      </div>

      {/* 2. Upload Grid */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '30px' }}>
        {/* Sales Upload */}
        <div style={{ 
          backgroundColor: 'white', padding: '24px', borderRadius: '24px', border: '1px solid #E5E7EB',
          display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '16px', textAlign: 'center'
        }}>
          <div style={{ backgroundColor: '#F3F4F6', width: '48px', height: '48px', borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <FileText size={24} color="#801515" />
          </div>
          <div>
            <h3 style={{ fontSize: '14px', fontWeight: '900' }}>VENTAS ORACLE / PRIGO</h3>
            <p style={{ fontSize: '11px', color: '#9CA3AF', marginTop: '2px' }}>Carga el cierre diario (.xlsx / .csv)</p>
          </div>
          <button 
            onClick={handleSimulatedUpload}
            disabled={isUploading}
            style={{ 
              width: '100%', backgroundColor: '#1A1A1A', color: 'white', padding: '16px', 
              borderRadius: '16px', border: 'none', fontWeight: '900', cursor: 'pointer',
              display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px'
            }}
          >
            {isUploading ? <Activity className="animate-spin" size={18} /> : <Upload size={18} />}
            {isUploading ? 'PROCESANDO...' : 'SUBIR ARCHIVO'}
          </button>
        </div>

        {/* Inventory Upload */}
        <div style={{ 
          backgroundColor: 'white', padding: '24px', borderRadius: '24px', border: '1px solid #E5E7EB',
          display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '16px', textAlign: 'center'
        }}>
          <div style={{ backgroundColor: '#F3F4F6', width: '48px', height: '48px', borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <Database size={24} color="#801515" />
          </div>
          <div>
            <h3 style={{ fontSize: '14px', fontWeight: '900' }}>MATERIAS PRIMAS</h3>
            <p style={{ fontSize: '11px', color: '#9CA3AF', marginTop: '2px' }}>Precios de mercado y stock inicial.</p>
          </div>
          <button style={{ 
            width: '100%', backgroundColor: '#1A1A1A', color: 'white', padding: '16px', 
            borderRadius: '16px', border: 'none', fontWeight: '900', cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px'
          }}>
            <Upload size={18} />
            SUBIR LISTADO
          </button>
        </div>
      </div>

      {/* 3. Feedback Status */}
      {uploadStatus === 'success' && (
        <div style={{ 
          backgroundColor: '#F0FDF4', border: '1px solid #BBF7D0', padding: '20px', borderRadius: '20px',
          display: 'flex', alignItems: 'center', gap: '12px', color: '#166534'
        }}>
          <CheckCircle2 size={24} />
          <div>
            <div style={{ fontSize: '14px', fontWeight: '900' }}>SINCRONIZACIÓN EXITOSA</div>
            <div style={{ fontSize: '12px', fontWeight: '600' }}>Los módulos de Ventas y Smart Planning han sido actualizados con los nuevos datos.</div>
          </div>
        </div>
      )}
    </div>
  );
}
