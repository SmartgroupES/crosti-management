'use client';

import React, { useState } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { 
  Settings, 
  ArrowLeft, 
  Calendar,
  CheckCircle2,
  Clock,
  Zap,
  ShieldCheck,
  Flame,
  Camera,
  ChevronLeft,
  ChevronRight
} from 'lucide-react';
import { useRouter } from 'next/navigation';

export default function MantenimientoPage() {
  const router = useRouter();
  const [tasks, setTasks] = useState([
    { id: 1, type: 'Limpieza de Hornos', time: '07:00', completed: true, icon: <Flame size={18} /> },
    { id: 2, type: 'Revisión de Cámaras', time: '08:30', completed: false, icon: <Camera size={18} /> },
    { id: 3, type: 'Calibración LiDAR', time: '10:00', completed: true, icon: <Zap size={18} /> },
    { id: 4, type: 'Control de Plagas (Mensual)', time: '12:00', completed: false, icon: <ShieldCheck size={18} /> },
  ]);

  const toggleTask = (id: number) => {
    setTasks(tasks.map(t => t.id === id ? { ...t, completed: !t.completed } : t));
  };

  return (
    <SubPageLayout title="Mantenimiento y Cumplimiento">
      {/* 1. Header */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
          <div style={{ textAlign: 'right' }}>
            <div style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', letterSpacing: '2px' }}>FECHA ACTUAL</div>
            <div style={{ fontSize: '16px', fontWeight: '900', color: '#801515' }}>01 MAYO 2026</div>
          </div>
          <div style={{ width: '44px', height: '44px', borderRadius: '12px', backgroundColor: 'rgba(249, 115, 22, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#801515' }}>
            <Calendar size={20} />
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.5fr 1fr', gap: '40px' }}>
        
        {/* 2. Calendario de Tareas Diarias */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Clock size={16} /> Protocolos de Hoy
          </h2>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
            {tasks.map(task => (
              <div 
                key={task.id} 
                onClick={() => toggleTask(task.id)}
                style={{ 
                  backgroundColor: task.completed ? 'rgba(16, 185, 129, 0.05)' : 'rgba(0,0,0,0.3)', 
                  backdropFilter: 'blur(20px)', 
                  padding: '24px 32px', 
                  borderRadius: '24px', 
                  border: `1px solid ${task.completed ? 'rgba(16, 185, 129, 0.2)' : 'rgba(255,255,255,0.1)'}`,
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'space-between',
                  cursor: 'pointer',
                  transition: 'all 0.3s'
                }}
              >
                <div style={{ display: 'flex', alignItems: 'center', gap: '24px' }}>
                  <div style={{ color: task.completed ? '#10B981' : 'rgba(255,255,255,0.4)' }}>
                    {task.icon}
                  </div>
                  <div>
                    <div style={{ fontSize: '16px', fontWeight: '800', color: task.completed ? '#10B981' : 'white', textDecoration: task.completed ? 'line-through' : 'none' }}>
                      {task.type}
                    </div>
                    <div style={{ fontSize: '11px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', marginTop: '4px' }}>Heredado de BakeOS Protocol v1.4 • {task.time}</div>
                  </div>
                </div>

                <div style={{ 
                  width: '32px', 
                  height: '32px', 
                  borderRadius: '10px', 
                  border: `2px solid ${task.completed ? '#10B981' : 'rgba(255,255,255,0.1)'}`, 
                  backgroundColor: task.completed ? '#10B981' : 'transparent',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  color: 'white'
                }}>
                  {task.completed && <CheckCircle2 size={20} />}
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* 3. Panel de Salud de Equipos */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Settings size={16} /> Estado de Equipos
          </h2>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
            {[
              { label: 'Horno Rational iCombi', health: 98, status: 'Óptimo' },
              { label: 'Cámara Frigorífica A', health: 92, status: 'Estable' },
              { label: 'Unidad de Visión LiDAR', health: 100, status: 'Calibrado' },
              { label: 'Sistema de Extracción', health: 75, status: 'Limpieza Pendiente' },
            ].map((device, i) => (
              <div key={i} style={{ backgroundColor: 'rgba(0,0,0,0.2)', padding: '24px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.05)' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '16px' }}>
                  <span style={{ fontSize: '14px', fontWeight: '800' }}>{device.label}</span>
                  <span style={{ fontSize: '11px', fontWeight: '900', color: device.health > 80 ? '#10B981' : '#801515' }}>{device.status}</span>
                </div>
                <div style={{ height: '6px', backgroundColor: 'rgba(255,255,255,0.05)', borderRadius: '10px', overflow: 'hidden' }}>
                  <div style={{ width: `${device.health}%`, height: '100%', backgroundColor: device.health > 80 ? '#10B981' : '#801515', boxShadow: `0 0 10px ${device.health > 80 ? 'rgba(16, 185, 129, 0.4)' : 'rgba(249, 115, 22, 0.4)'}` }} />
                </div>
                <div style={{ marginTop: '12px', fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', textAlign: 'right' }}>{device.health}% SALUD</div>
              </div>
            ))}
          </div>
        </div>

      </div>

    </SubPageLayout>
  );
}
