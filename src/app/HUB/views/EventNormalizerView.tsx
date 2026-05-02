'use client';

import React, { useState } from 'react';
import { 
  Settings, 
  ToggleLeft, 
  ToggleRight, 
  Calendar, 
  MapPin, 
  Info,
  Zap,
  Activity
} from 'lucide-react';

export default function EventNormalizerView() {
  const [events, setEvents] = useState([
    { id: 1, date: '2026-04-20', type: 'PARTIDO BERNABÉU', impact: 'x4.3', active: true },
    { id: 2, date: '2026-04-22', type: 'CATERING VELÁZQUEZ', impact: '+150 uds', active: true },
    { id: 3, date: '2026-04-25', type: 'FIESTA LOCAL POBLENOU', impact: 'x1.8', active: false },
  ]);

  const toggleEvent = (id: number) => {
    setEvents(prev => prev.map(e => e.id === id ? { ...e, active: !e.active } : e));
  };

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
      {/* 1. Normalization Theory */}
      <div style={{ 
        backgroundColor: '#1A1A1A', color: 'white', padding: '24px', borderRadius: '24px',
        display: 'flex', gap: '16px', alignItems: 'center'
      }}>
        <div style={{ backgroundColor: '#801515', width: '40px', height: '40px', borderRadius: '12px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
          <Zap size={24} color="white" />
        </div>
        <div>
          <h2 style={{ fontSize: '14px', fontWeight: '900', letterSpacing: '0.5px' }}>NORMALIZADOR DE DATOS (OUTLIERS)</h2>
          <p style={{ fontSize: '11px', color: 'rgba(255,255,255,0.6)', fontWeight: '600', marginTop: '2px' }}>
            ACTIVA O DESACTIVA DÍAS ATÍPICOS PARA EVITAR "RUIDO" EN TU PREDICCIÓN.
          </p>
        </div>
      </div>

      {/* 2. Event List */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
        <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between' }}>
          <h3 style={{ fontSize: '14px', fontWeight: '900' }}>EVENTOS IDENTIFICADOS</h3>
          <button style={{ backgroundColor: '#F3F4F6', border: 'none', padding: '6px 12px', borderRadius: '8px', fontSize: '10px', fontWeight: '800', cursor: 'pointer' }}>
             + AÑADIR MANUAL
          </button>
        </div>
        <div style={{ padding: '20px' }}>
          {events.map((event) => (
            <div key={event.id} style={{ 
              display: 'flex', justifyContent: 'space-between', alignItems: 'center',
              padding: '20px 32px', borderBottom: '1px solid #F3F4F6',
              backgroundColor: event.active ? '#FFFBEB' : 'transparent',
              borderRadius: '16px', marginBottom: '8px'
            }}>
              <div style={{ display: 'flex', gap: '20px', alignItems: 'center' }}>
                <Calendar size={20} color="#9CA3AF" />
                <div>
                  <div style={{ fontSize: '14px', fontWeight: '900' }}>{event.type}</div>
                  <div style={{ fontSize: '12px', color: '#9CA3AF', fontWeight: '600' }}>FECHA: {event.date}</div>
                </div>
              </div>
              
              <div style={{ display: 'flex', gap: '40px', alignItems: 'center' }}>
                <div style={{ textAlign: 'center' }}>
                  <div style={{ fontSize: '10px', fontWeight: '900', color: '#801515' }}>IMPACTO</div>
                  <div style={{ fontSize: '14px', fontWeight: '900' }}>{event.impact}</div>
                </div>
                
                <button 
                  onClick={() => toggleEvent(event.id)}
                  style={{ backgroundColor: 'transparent', border: 'none', cursor: 'pointer' }}
                >
                  {event.active ? (
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#801515', fontWeight: '900', fontSize: '12px' }}>
                      AISLAR DATO <ToggleRight size={40} />
                    </div>
                  ) : (
                    <div style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#9CA3AF', fontWeight: '900', fontSize: '12px' }}>
                      USAR DATO <ToggleLeft size={40} />
                    </div>
                  )}
                </button>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* 3. AI Insights */}
      <div style={{ 
        backgroundColor: '#F0FDF4', border: '1px solid #BBF7D0', padding: '16px 24px', borderRadius: '24px',
        display: 'flex', gap: '16px', alignItems: 'center'
      }}>
        <Activity size={20} color="#166534" />
        <p style={{ fontSize: '12px', color: '#166534', fontWeight: '700', margin: 0 }}>
          <strong>RECOMENDACIÓN IA:</strong> AISLAR EL DATO DEL "CATERING VELÁZQUEZ" MEJORARÁ LA PRECISIÓN EN UN 22%.
        </p>
      </div>
    </div>
  );
}
