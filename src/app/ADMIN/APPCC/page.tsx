'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, ShieldCheck, Thermometer, Trash2, CheckCircle, AlertCircle, Clock, FileText, User, Plus, Save } from 'lucide-react';

export default function APCCPage() {
  const [equipos, setEquipos] = useState<any[]>([]);
  const [limpieza, setLimpieza] = useState<{tasks: any[], logsToday: any[]}>({tasks: [], logsToday: []});
  const [employees, setEmployees] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('Temperaturas');
  
  const [tempForm, setTempForm] = useState({ equipment_id: '', employee_id: '', temperature: '', notes: '' });
  const [cleaningEmployee, setCleaningEmployee] = useState('');

  const fetchData = async () => {
    setLoading(true);
    const [eqRes, limRes, empRes] = await Promise.all([
      fetch('/api/admin/appcc/equipos'),
      fetch('/api/admin/appcc/limpieza'),
      fetch('/api/admin/personal')
    ]);
    const eqData = await eqRes.json();
    const limData = await limRes.json();
    const empData = await empRes.json();
    
    setEquipos(eqData);
    setLimpieza(limData);
    setEmployees(empData);
    setLoading(false);
  };

  useEffect(() => {
    fetchData();
  }, []);

  const handleTempSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    const res = await fetch('/api/admin/appcc/temperaturas', {
      method: 'POST',
      body: JSON.stringify(tempForm)
    });
    if (res.ok) {
      alert('Registro de temperatura guardado.');
      setTempForm({ ...tempForm, temperature: '', notes: '' });
      fetchData();
    }
  };

  const handleCleaningCheck = async (taskId: number) => {
    if (!cleaningEmployee) {
      alert('Por favor, selecciona quién realiza la limpieza.');
      return;
    }
    const res = await fetch('/api/admin/appcc/limpieza', {
      method: 'POST',
      body: JSON.stringify({ task_id: taskId, employee_id: cleaningEmployee })
    });
    if (res.ok) {
      fetchData();
    }
  };

  const isTaskDoneToday = (taskId: number) => {
    return limpieza.logsToday.some(l => l.task_id === taskId);
  };

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Cargando centro de control sanitario...</div>;

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/ADMIN/importar" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER A PANEL
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Control Sanitario (APPCC)</h1>
          <p style={{ fontSize: '13px', color: '#9CA3AF', margin: '4px 0 0 0' }}>Gestión digital de seguridad alimentaria y trazabilidad</p>
        </div>
        <ShieldCheck size={32} color="#10B981" />
      </header>

      <main style={{ padding: '40px', maxWidth: '1200px', margin: '0 auto' }}>
        
        {/* Tabs */}
        <div style={{ display: 'flex', gap: '10px', marginBottom: '40px', backgroundColor: '#F3F4F6', padding: '6px', borderRadius: '16px', width: 'fit-content' }}>
          {['Temperaturas', 'Limpieza', 'Historial'].map(tab => (
            <button
              key={tab}
              onClick={() => setActiveTab(tab)}
              style={{
                padding: '10px 24px',
                borderRadius: '12px',
                fontSize: '14px',
                fontWeight: 'bold',
                border: 'none',
                backgroundColor: activeTab === tab ? 'white' : 'transparent',
                color: activeTab === tab ? '#1A1A1A' : '#6B7280',
                boxShadow: activeTab === tab ? '0 2px 4px rgba(0,0,0,0.05)' : 'none',
                cursor: 'pointer'
              }}
            >
              {tab}
            </button>
          ))}
        </div>

        {activeTab === 'Temperaturas' && (
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 400px', gap: '40px' }}>
            {/* Status Grid */}
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(250px, 1fr))', gap: '20px' }}>
              {equipos.map(eq => {
                const isOutOfRange = false; // Logic for last log comparison
                return (
                  <div key={eq.id} style={{ backgroundColor: 'white', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB', display: 'flex', flexDirection: 'column', gap: '15px' }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
                      <div style={{ backgroundColor: '#F3F4F6', padding: '10px', borderRadius: '12px' }}>
                        <Thermometer size={20} color="#6B7280" />
                      </div>
                      <div style={{ fontSize: '10px', fontWeight: 'bold', color: '#9CA3AF' }}>{eq.location.toUpperCase()}</div>
                    </div>
                    <div>
                      <div style={{ fontSize: '16px', fontWeight: 'bold' }}>{eq.name}</div>
                      <div style={{ fontSize: '12px', color: '#6B7280' }}>Rango: {eq.min_temp}°C a {eq.max_temp}°C</div>
                    </div>
                    <div style={{ marginTop: 'auto', paddingTop: '15px', borderTop: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <span style={{ fontSize: '11px', color: '#10B981', fontWeight: 'bold' }}>ACTIVO</span>
                      <button 
                        onClick={() => setTempForm({ ...tempForm, equipment_id: eq.id })}
                        style={{ fontSize: '12px', color: '#801515', fontWeight: 'bold', border: 'none', background: 'none', cursor: 'pointer' }}
                      >
                        Registrar →
                      </button>
                    </div>
                  </div>
                );
              })}
            </div>

            {/* Entry Form */}
            <aside>
              <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB', position: 'sticky', top: '40px' }}>
                <h3 style={{ fontSize: '16px', fontWeight: 'bold', marginBottom: '24px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <Plus size={18} color="#801515" /> Registro de Temperatura
                </h3>
                <form onSubmit={handleTempSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
                  <div>
                    <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', display: 'block', marginBottom: '8px' }}>EQUIPO</label>
                    <select 
                      value={tempForm.equipment_id} 
                      onChange={e => setTempForm({...tempForm, equipment_id: e.target.value})}
                      style={{ width: '100%', padding: '12px', borderRadius: '12px', border: '1px solid #E5E7EB', backgroundColor: '#F9FAFB' }}
                      required
                    >
                      <option value="">— Seleccionar Equipo —</option>
                      {equipos.map(e => <option key={e.id} value={e.id}>{e.name}</option>)}
                    </select>
                  </div>
                  <div>
                    <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', display: 'block', marginBottom: '8px' }}>RESPONSABLE</label>
                    <select 
                      value={tempForm.employee_id} 
                      onChange={e => setTempForm({...tempForm, employee_id: e.target.value})}
                      style={{ width: '100%', padding: '12px', borderRadius: '12px', border: '1px solid #E5E7EB', backgroundColor: '#F9FAFB' }}
                      required
                    >
                      <option value="">— Seleccionar —</option>
                      {employees.map(e => <option key={e.id} value={e.id}>{e.name}</option>)}
                    </select>
                  </div>
                  <div>
                    <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', display: 'block', marginBottom: '8px' }}>TEMPERATURA ACTUAL (°C)</label>
                    <input 
                      type="number" 
                      step="0.1"
                      value={tempForm.temperature} 
                      onChange={e => setTempForm({...tempForm, temperature: e.target.value})}
                      placeholder="0.0"
                      style={{ width: '100%', padding: '12px', borderRadius: '12px', border: '1px solid #E5E7EB' }} 
                      required
                    />
                  </div>
                  <button 
                    type="submit" 
                    style={{ marginTop: '10px', width: '100%', padding: '16px', borderRadius: '14px', border: 'none', backgroundColor: '#1A1A1A', color: 'white', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px', justifyContent: 'center' }}
                  >
                    <Save size={18} /> Guardar Registro
                  </button>
                </form>
              </div>
            </aside>
          </div>
        )}

        {activeTab === 'Limpieza' && (
          <div style={{ maxWidth: '800px', margin: '0 auto' }}>
            <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '24px', border: '1px solid #E5E7EB', marginBottom: '30px' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
                <h3 style={{ fontSize: '18px', fontWeight: 'bold', margin: 0 }}>Checklist de Limpieza Diaria</h3>
                <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                  <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>REALIZADO POR:</label>
                  <select 
                    value={cleaningEmployee} 
                    onChange={e => setCleaningEmployee(e.target.value)}
                    style={{ padding: '8px 12px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px' }}
                  >
                    <option value="">— Seleccionar —</option>
                    {employees.map(e => <option key={e.id} value={e.id}>{e.name}</option>)}
                  </select>
                </div>
              </div>

              <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
                {limpieza.tasks.map((task) => {
                  const done = isTaskDoneToday(task.id);
                  return (
                    <div key={task.id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '20px', backgroundColor: done ? '#F0FDF4' : '#F9FAFB', borderRadius: '16px', border: '1px solid', borderColor: done ? '#BBF7D0' : '#F3F4F6' }}>
                      <div>
                        <div style={{ fontSize: '14px', fontWeight: 'bold', color: done ? '#166534' : '#1A1A1A' }}>{task.name}</div>
                        <div style={{ fontSize: '11px', color: done ? '#166534' : '#6B7280', opacity: 0.8 }}>Área: {task.area} | Frecuencia: {task.frequency}</div>
                      </div>
                      {done ? (
                        <div style={{ display: 'flex', alignItems: 'center', gap: '6px', color: '#10B981', fontWeight: 'bold', fontSize: '13px' }}>
                          <CheckCircle size={18} /> COMPLETADO
                        </div>
                      ) : (
                        <button 
                          onClick={() => handleCleaningCheck(task.id)}
                          style={{ backgroundColor: 'white', border: '1px solid #E5E7EB', padding: '8px 16px', borderRadius: '10px', fontSize: '12px', fontWeight: 'bold', cursor: 'pointer' }}
                        >
                          Marcar como hecho
                        </button>
                      )}
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        )}

        {activeTab === 'Historial' && (
          <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
             <div style={{ padding: '24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Histórico de Control Sanitario</h3>
                <button style={{ backgroundColor: '#1A1A1A', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '10px', fontSize: '12px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <FileText size={16} /> Generar Reporte Inspección
                </button>
             </div>
             <p style={{ padding: '40px', textAlign: 'center', color: '#9CA3AF', fontSize: '14px' }}>Aquí se mostrarán todos los registros de los últimos 30 días para auditoría.</p>
          </div>
        )}

      </main>
    </div>
  );
}
