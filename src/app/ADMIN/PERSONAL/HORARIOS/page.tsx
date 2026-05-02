'use client';

import React, { useState, useEffect, Suspense } from 'react';
import SubPageLayout from '@/components/SubPageLayout';
import { useSearchParams, useRouter } from 'next/navigation';
import { 
  ArrowLeft, 
  Calendar, 
  Clock, 
  Plus, 
  MapPin, 
  Save, 
  Loader2,
  ChevronLeft,
  ChevronRight,
  Briefcase
} from 'lucide-react';

function HorariosContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const employeeId = searchParams.get('id');
  
  const [schedules, setSchedules] = useState<any[]>([]);
  const [employees, setEmployees] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [date, setDate] = useState(new Date().toISOString().split('T')[0]);
  
  const locations = ['Velázquez', 'Quevedo', 'Salesas', 'Hub Central'];

  const [newShift, setNewShift] = useState({
    employee_id: employeeId || '',
    date: date,
    start_time: '09:00',
    end_time: '17:00',
    location: 'Velázquez'
  });

  const fetchData = async () => {
    setLoading(true);
    try {
      const [schedRes, empRes] = await Promise.all([
        fetch(`/api/admin/horarios?date=${date}`),
        fetch('/api/admin/personal')
      ]);
      const schedData = await schedRes.json();
      const empData = await empRes.json();
      setSchedules(schedData);
      setEmployees(empData);
    } catch (e) {
      console.error("Error fetching data:", e);
    }
    setLoading(false);
  };

  useEffect(() => {
    fetchData();
  }, [date]);

  const handleAddShift = async (e: React.FormEvent) => {
    e.preventDefault();
    const res = await fetch('/api/admin/horarios', {
      method: 'POST',
      body: JSON.stringify(newShift)
    });
    if (res.ok) {
      fetchData();
    }
  };

  const calculateHours = (start: string, end: string) => {
    const s = new Date(`2000-01-01T${start}:00`);
    const e = new Date(`2000-01-01T${end}:00`);
    return (e.getTime() - s.getTime()) / (1000 * 60 * 60);
  };

  return (
    <SubPageLayout title="Planificador de Turnos">
      {/* 1. Header & Date Selector */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '48px' }}>
        <button 
          onClick={() => router.push('/admin/personal')}
          style={{ display: 'flex', alignItems: 'center', gap: '8px', background: 'none', border: 'none', color: 'rgba(255,255,255,0.4)', cursor: 'pointer', fontSize: '12px', fontWeight: '800' }}
        >
          <ArrowLeft size={16} /> VOLVER
        </button>

        <div style={{ display: 'flex', alignItems: 'center', gap: '20px', backgroundColor: 'rgba(0,0,0,0.3)', padding: '8px 24px', borderRadius: '16px', border: '1px solid rgba(255,255,255,0.1)' }}>
          <button style={{ background: 'none', border: 'none', color: 'white', cursor: 'pointer' }}><ChevronLeft size={18} /></button>
          <input 
            type="date" 
            value={date} 
            onChange={e => setDate(e.target.value)}
            style={{ background: 'none', border: 'none', color: 'white', fontWeight: '900', fontSize: '14px', outline: 'none', textAlign: 'center' }}
          />
          <button style={{ background: 'none', border: 'none', color: 'white', cursor: 'pointer' }}><ChevronRight size={18} /></button>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.5fr 1fr', gap: '40px' }}>
        
        {/* 2. Cuadrante Semanal / Diario */}
        <div>
          <h2 style={{ fontSize: '13px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '3px', textTransform: 'uppercase', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Calendar size={16} /> Cuadrante de {new Date(date).toLocaleDateString('es-ES', { weekday: 'long', day: 'numeric', month: 'long' })}
          </h2>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
            {loading ? (
              <div style={{ padding: '60px', textAlign: 'center' }}><Loader2 className="animate-spin" size={32} color="#801515" /></div>
            ) : schedules.length === 0 ? (
              <div style={{ padding: '60px', textAlign: 'center', backgroundColor: 'rgba(255,255,255,0.03)', borderRadius: '32px', border: '1px dashed rgba(255,255,255,0.1)' }}>
                <p style={{ color: 'rgba(255,255,255,0.4)', fontWeight: '700' }}>Sin turnos asignados para hoy.</p>
              </div>
            ) : schedules.map((s, idx) => {
              const hours = calculateHours(s.start_time, s.end_time);
              return (
                <div key={idx} style={{ backgroundColor: 'rgba(0,0,0,0.3)', backdropFilter: 'blur(20px)', padding: '24px 32px', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)', display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '24px' }}>
                    <div style={{ width: '48px', height: '48px', borderRadius: '12px', backgroundColor: 'rgba(249, 115, 22, 0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#801515', fontWeight: '900' }}>
                      {s.employee_name?.charAt(0) || 'U'}
                    </div>
                    <div>
                      <div style={{ fontSize: '16px', fontWeight: '800' }}>{s.employee_name || 'Desconocido'}</div>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginTop: '4px' }}>
                        <div style={{ display: 'flex', alignItems: 'center', gap: '6px', fontSize: '11px', fontWeight: '900', color: 'rgba(255,255,255,0.4)' }}>
                          <Clock size={12} /> {s.start_time} - {s.end_time} ({hours}h)
                        </div>
                        <div style={{ display: 'flex', alignItems: 'center', gap: '6px', fontSize: '11px', fontWeight: '900', color: '#801515' }}>
                          <MapPin size={12} /> {s.location}
                        </div>
                      </div>
                    </div>
                  </div>
                  <div style={{ textAlign: 'right' }}>
                    <div style={{ fontSize: '14px', fontWeight: '900' }}>{(hours * (s.hourly_rate || 12)).toFixed(2)} €</div>
                    <div style={{ fontSize: '9px', color: 'rgba(255,255,255,0.3)', fontWeight: '900' }}>COSTO ESTIMADO</div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* 3. Formulario de Asignación */}
        <aside>
          <div style={{ backgroundColor: 'rgba(0,0,0,0.4)', backdropFilter: 'blur(30px)', padding: '40px', borderRadius: '32px', border: '1px solid rgba(255,255,255,0.1)', position: 'sticky', top: '40px' }}>
            <h2 style={{ fontSize: '16px', fontWeight: '900', marginBottom: '32px', display: 'flex', alignItems: 'center', gap: '12px' }}>
              <Plus size={20} color="#801515" /> Asignar Nuevo Turno
            </h2>
            <form onSubmit={handleAddShift} style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
              <div>
                <label style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', display: 'block', marginBottom: '12px' }}>MIEMBRO DEL EQUIPO</label>
                <select 
                  value={newShift.employee_id} 
                  onChange={e => setNewShift({...newShift, employee_id: e.target.value})}
                  style={{ width: '100%', padding: '16px', borderRadius: '16px', backgroundColor: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', fontWeight: '700', outline: 'none' }}
                  required
                >
                  <option value="" style={{ color: 'black' }}>— Seleccionar —</option>
                  {employees.map(e => <option key={e.id} value={e.id} style={{ color: 'black' }}>{e.name}</option>)}
                </select>
              </div>
              
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div>
                  <label style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', display: 'block', marginBottom: '12px' }}>INICIO</label>
                  <input type="time" value={newShift.start_time} onChange={e => setNewShift({...newShift, start_time: e.target.value})} style={{ width: '100%', padding: '16px', borderRadius: '16px', backgroundColor: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', fontWeight: '700' }} />
                </div>
                <div>
                  <label style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', display: 'block', marginBottom: '12px' }}>FIN</label>
                  <input type="time" value={newShift.end_time} onChange={e => setNewShift({...newShift, end_time: e.target.value})} style={{ width: '100%', padding: '16px', borderRadius: '16px', backgroundColor: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', fontWeight: '700' }} />
                </div>
              </div>

              <div>
                <label style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.3)', letterSpacing: '2px', display: 'block', marginBottom: '12px' }}>UBICACIÓN / SEDE</label>
                <select 
                  value={newShift.location} 
                  onChange={e => setNewShift({...newShift, location: e.target.value})}
                  style={{ width: '100%', padding: '16px', borderRadius: '16px', backgroundColor: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', fontWeight: '700', outline: 'none' }}
                >
                  {locations.map(loc => <option key={loc} value={loc} style={{ color: 'black' }}>{loc}</option>)}
                </select>
              </div>

              <button type="submit" style={{ marginTop: '20px', width: '100%', padding: '20px', borderRadius: '16px', backgroundColor: '#801515', color: 'white', fontWeight: '900', border: 'none', cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '12px', boxShadow: '0 10px 20px rgba(249, 115, 22, 0.3)' }}>
                <Save size={18} /> CONFIRMAR TURNO
              </button>
            </form>
          </div>
        </aside>

      </div>

      <style jsx global>{`
        @keyframes spin {
          from { transform: rotate(0deg); }
          to { transform: rotate(360deg); }
        }
        .animate-spin {
          animation: spin 1s linear infinite;
        }
      `}</style>
    </SubPageLayout>
  );
}

export default function HorariosPage() {
  return (
    <Suspense fallback={<div style={{ padding: '40px', textAlign: 'center' }}>Cargando planificación...</div>}>
      <HorariosContent />
    </Suspense>
  );
}
