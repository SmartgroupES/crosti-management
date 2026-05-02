'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, TrendingUp, Trash2, ShoppingBag, DollarSign, Calendar, MapPin, Loader2 } from 'lucide-react';

export default function ReporteCierrePage() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [selectedLocation, setSelectedLocation] = useState('Downtown');

  const fetchReport = (loc: string) => {
    setLoading(true);
    fetch(`/api/inventario/reporte-cierre?location=${loc}`)
      .then(res => res.json())
      .then(json => {
        setData(json);
        setLoading(false);
      })
      .catch(e => console.error(e));
  };

  useEffect(() => {
    fetchReport(selectedLocation);
  }, [selectedLocation]);

  if (loading && !data) return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '20px' }}>
      <Loader2 size={40} className="animate-spin" color="#801515" />
      <div style={{ textAlign: 'center' }}>
        <div style={{ fontSize: '16px', fontWeight: 'bold' }}>Generando reporte...</div>
        <div style={{ color: '#9CA3AF', fontSize: '13px' }}>Si no has realizado el cierre de hoy, primero debes completar el asistente.</div>
      </div>
      <Link href="/PLANIFICACION/reporte-cierre" style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '12px 24px', borderRadius: '12px', textDecoration: 'none', fontWeight: 'bold', marginTop: '20px' }}>
        Realizar Cierre Ahora
      </Link>
    </div>
  );

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/INVENTARIO" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Reporte de Cierre Diario</h1>
          <div style={{ display: 'flex', gap: '15px', marginTop: '8px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px', fontSize: '12px', color: '#6B7280' }}>
              <Calendar size={14} /> {new Date().toLocaleDateString('es-ES', { day: 'numeric', month: 'long', year: 'numeric' })}
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px', fontSize: '12px', color: '#6B7280' }}>
              <MapPin size={14} /> {selectedLocation}
            </div>
          </div>
        </div>
        
        <select 
          value={selectedLocation}
          onChange={(e) => setSelectedLocation(e.target.value)}
          style={{ padding: '10px 20px', borderRadius: '12px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: 'bold' }}
        >
          <option value="Downtown">Downtown</option>
          <option value="Residencial">Residencial</option>
          <option value="Hub Aeropuerto">Hub Aeropuerto</option>
        </select>
      </header>

      <main style={{ padding: '40px', maxWidth: '1200px', margin: '0 auto' }}>
        {/* KPI Cards */}
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(240px, 1fr))', gap: '20px', marginBottom: '40px' }}>
          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '16px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '1px' }}>VENTAS ESTIMADAS</div>
              <DollarSign size={18} color="#10B981" />
            </div>
            <div style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '4px' }}>{data?.summary?.totalSales.toLocaleString('es-ES')} €</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>Basado en balance de stock</div>
          </div>

          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '16px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '1px' }}>UNIDADES VENDIDAS</div>
              <ShoppingBag size={18} color="#2563EB" />
            </div>
            <div style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '4px' }}>{data?.summary?.unitsSold}</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>Cookies y Brownies</div>
          </div>

          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '16px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '1px' }}>MERMA TOTAL</div>
              <Trash2 size={18} color="#EF4444" />
            </div>
            <div style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '4px' }}>{data?.summary?.totalWaste}</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>Unidades desperdiciadas</div>
          </div>

          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '16px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '1px' }}>EFICIENCIA</div>
              <TrendingUp size={18} color="#801515" />
            </div>
            <div style={{ fontSize: '28px', fontWeight: 'bold', marginBottom: '4px' }}>
              {data?.summary?.unitsSold > 0 ? (100 - (data.summary.totalWaste / (data.summary.unitsSold + data.summary.totalWaste) * 100)).toFixed(1) : 0}%
            </div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>Aprovechamiento de producción</div>
          </div>
        </div>

        {/* Detailed Table */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <table style={{ width: '100%', borderCollapse: 'collapse' }}>
            <thead>
              <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold' }}>PRODUCTO</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>PRODUCIDO</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>CIERRE</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>MERMA</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'center' }}>VENTAS (CALC)</th>
                <th style={{ padding: '16px 24px', fontSize: '11px', color: '#9CA3AF', fontWeight: 'bold', textAlign: 'right' }}>INGRESOS EST.</th>
              </tr>
            </thead>
            <tbody>
              {data?.results?.map((row: any, idx: number) => (
                <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                  <td style={{ padding: '20px 24px' }}>
                    <div style={{ fontSize: '14px', fontWeight: 'bold' }}>{row.name}</div>
                  </td>
                  <td style={{ padding: '20px 24px', textAlign: 'center', fontSize: '14px', color: '#6B7280' }}>{row.production_planned || 0}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'center', fontSize: '14px', fontWeight: 'bold' }}>{row.closing_stock || 0}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'center', fontSize: '14px', color: '#EF4444' }}>{row.waste_units || 0}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'center', fontSize: '14px', fontWeight: 'bold', color: '#10B981' }}>{row.calculated_sales || 0}</td>
                  <td style={{ padding: '20px 24px', textAlign: 'right', fontSize: '14px', fontWeight: 'bold' }}>
                    {((row.calculated_sales || 0) * (row.price || 0)).toLocaleString('es-ES', { minimumFractionDigits: 2 })} €
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </main>
    </div>
  );
}
