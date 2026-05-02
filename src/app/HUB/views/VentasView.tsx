'use client';

import React, { useState, useEffect } from 'react';
import { 
  TrendingUp, 
  Download, 
  AlertCircle,
  RefreshCw,
  LineChart as LineIcon,
  Activity,
  AlertTriangle,
  PieChart as PieChartIcon,
  ArrowUp,
  ArrowDown,
  Lock
} from 'lucide-react';
import {
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  ReferenceLine,
  Line,
  Legend,
  PieChart,
  Pie,
  Cell,
  LabelList
} from 'recharts';

export default function VentasView() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedWeek, setSelectedWeek] = useState<string>('');
  const [metric, setMetric] = useState<'quantity' | 'total'>('quantity');
  
  // Chart selection states
  const [visibleYears, setVisibleYears] = useState<string[]>(['2024', '2025', '2026']);
  const [showAverage, setShowAverage] = useState(true);
  const [sortField, setSortField] = useState<'quantity' | 'total'>('quantity');
  const [sortOrder, setSortOrder] = useState<'asc' | 'desc'>('desc');

  const fetchData = async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch('/api/sales/hourly', { cache: 'no-store' });
      if (!res.ok) throw new Error(`Server Error: ${res.status}`);
      const json = await res.json();
      setData(json);
      
      if (json.heatmapData?.length > 0) {
        setSelectedWeek(json.heatmapData[0].week);
      }
    } catch (e: any) {
      console.error(e);
      setError(e.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  if (loading) return (
    <div style={{ padding: '100px', textAlign: 'center' }}>
      <RefreshCw size={48} color="#801515" className="animate-spin" style={{ marginBottom: '20px' }} />
      <div style={{ fontWeight: '800', color: '#9CA3AF', letterSpacing: '1px' }}>SINCRONIZANDO CON LA BASE DE DATOS...</div>
    </div>
  );

  if (error) return (
    <div style={{ padding: '60px', textAlign: 'center', backgroundColor: '#FEF2F2', borderRadius: '32px', border: '1px solid #FEE2E2' }}>
      <AlertCircle size={48} color="#EF4444" style={{ marginBottom: '20px' }} />
      <div style={{ fontWeight: '900', color: '#B91C1C', fontSize: '18px' }}>ERROR DE CONEXIÓN</div>
      <p style={{ color: '#EF4444', marginTop: '8px', fontSize: '14px' }}>{error}</p>
      <button 
        onClick={fetchData}
        style={{ marginTop: '24px', padding: '12px 24px', backgroundColor: '#B91C1C', color: 'white', border: 'none', borderRadius: '12px', fontWeight: '900', cursor: 'pointer' }}
      >
        REINTENTAR AHORA
      </button>
    </div>
  );

  const kpis = [
    { label: 'VENTA HOY', val: data?.todaySales?.total || 0 },
    { label: 'SEMANA ACTUAL', val: data?.weekSales?.total || 0 },
    { label: 'MES EN CURSO', val: data?.monthSales?.total || 0 },
    { label: 'CIERRE ANUAL PROY.', val: (data?.monthSales?.total || 0) * 12 },
  ];

  // Logic for Heat Map
  const weeks = Array.from(new Set(data?.heatmapData?.map((d: any) => d.week) || [])) as string[];
  const days = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'];
  const hours = ['09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20'];

  const getHeatMapColor = (val: number, max: number) => {
    if (val === 0) return '#FFFFFF';
    const ratio = val / max;
    // Map ratio to lightness: 95% (very light) to 29% (corporate red #801515)
    const lightness = 95 - (ratio * (95 - 29));
    return `hsl(0, 72%, ${lightness}%)`;
  };

  const weekData = data?.heatmapData?.filter((d: any) => d.week === selectedWeek) || [];
  const maxValue = Math.max(...weekData.map((d: any) => d[metric]), 1);

  // Chart Processing: Monthly (Cleaned for 2026 only starting Feb)
  const monthNames = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
  const availableMonths = ['Febrero', 'Marzo', 'Abril', 'Mayo'];
  const monthlyData = availableMonths.map((name) => {
    const monthIdx = monthNames.indexOf(name) + 1;
    const monthNum = monthIdx.toString().padStart(2, '0');
    const entry = data?.monthlyYearlyStats?.find((s: any) => s.year === '2026' && s.month === monthNum);
    return {
      name: name.toUpperCase(),
      sales: entry ? Math.round(entry.sales) : 0
    };
  });

  const total2026 = monthlyData.reduce((acc, curr) => acc + curr.sales, 0);
  const avg2026 = monthlyData.length > 0 ? total2026 / monthlyData.length : 0;

  // Chart Processing: Weekly 2026
  const weeklyChartData = data?.weeklyStats2026?.map((s: any) => ({
    name: `S${s.week}`,
    sales: Math.round(s.sales)
  })) || [];

  const weeklyTotal2026 = weeklyChartData.reduce((acc: number, curr: any) => acc + curr.sales, 0);
  const weeklyAvg2026 = weeklyChartData.length > 0 ? weeklyTotal2026 / weeklyChartData.length : 0;

  const CustomTooltip = ({ active, payload, label }: any) => {
    if (active && payload && payload.length) {
      return (
        <div style={{ backgroundColor: 'rgba(255, 255, 255, 0.95)', padding: '12px', border: '1px solid #E5E7EB', borderRadius: '12px', boxShadow: '0 10px 25px rgba(0,0,0,0.1)' }}>
          <p style={{ margin: 0, fontSize: '12px', fontWeight: '900', color: '#1A1A1A', marginBottom: '8px' }}>{label}</p>
          {payload.map((entry: any, index: number) => (
            <p key={index} style={{ margin: 0, fontSize: '11px', fontWeight: '800', color: entry.color }}>
              {entry.name}: {Math.round(entry.value).toLocaleString('es-ES')}€
            </p>
          ))}
        </div>
      );
    }
    return null;
  };

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
      {/* 1. KPI Grid */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '12px' }}>
        {kpis.map((kpi, idx) => (
          <div key={idx} style={{ 
            backgroundColor: '#801515', color: 'white', padding: '16px 20px', borderRadius: '20px',
            boxShadow: '0 4px 10px rgba(128, 21, 21, 0.15)', position: 'relative', overflow: 'hidden'
          }}>
            <div style={{ fontSize: '9px', fontWeight: '900', opacity: 0.9, letterSpacing: '0.5px' }}>{kpi.label}</div>
            <div style={{ fontSize: '18px', fontWeight: '900', marginTop: '4px' }}>{Math.round(kpi.val).toLocaleString('es-ES')}€</div>
            <TrendingUp size={32} style={{ position: 'absolute', bottom: '-5px', right: '-5px', opacity: 0.15 }} />
          </div>
        ))}
      </div>

      {/* 2. Monthly Trend Chart */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', padding: '24px', boxShadow: '0 4px 15px rgba(0,0,0,0.02)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '30px' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
            <div style={{ backgroundColor: '#F3F4F6', padding: '8px', borderRadius: '12px' }}><Activity size={20} color="#801515" /></div>
            <h3 style={{ fontSize: '16px', fontWeight: '900', color: '#1A1A1A' }}>Venta por Mes 2026</h3>
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
            <label style={{ display: 'flex', alignItems: 'center', gap: '8px', cursor: 'pointer' }}>
              <input 
                type="checkbox" 
                checked={showAverage} 
                onChange={() => setShowAverage(!showAverage)} 
                style={{ accentColor: '#801515', cursor: 'pointer' }}
              />
              <span style={{ fontSize: '11px', fontWeight: '900', color: '#9CA3AF' }}>Promedio</span>
            </label>
          </div>
        </div>

        <div style={{ display: 'flex', gap: '24px', marginBottom: '20px', fontSize: '10px', fontWeight: '800', color: '#9CA3AF' }}>
           <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
             <div style={{ width: '12px', height: '2px', backgroundColor: '#801515' }}></div>
             <span>Venta 2026 (Acum {monthlyData.length} meses: {Math.round(total2026).toLocaleString('es-ES')} €)</span>
           </div>
           {showAverage && (
             <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
               <div style={{ width: '12px', height: '2px', backgroundColor: '#9CA3AF', borderStyle: 'dashed' }}></div>
               <span>Promedio: {Math.round(avg2026).toLocaleString('es-ES')} €</span>
             </div>
           )}
        </div>

        <div style={{ width: '100%', height: '300px' }}>
          <ResponsiveContainer width="100%" height="100%">
            <AreaChart data={monthlyData} margin={{ top: 20, right: 30, left: 0, bottom: 0 }}>
              <defs>
                <linearGradient id="colorSales" x1="0" y1="0" x2="0" y2="1">
                  <stop offset="5%" stopColor="#801515" stopOpacity={0.1}/>
                  <stop offset="95%" stopColor="#801515" stopOpacity={0}/>
                </linearGradient>
              </defs>
              <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#F1F5F9" />
              <XAxis dataKey="name" axisLine={false} tickLine={false} tick={{ fontSize: 10, fontWeight: 700, fill: '#9CA3AF' }} dy={10} />
              <YAxis axisLine={false} tickLine={false} tick={{ fontSize: 10, fontWeight: 700, fill: '#9CA3AF' }} tickFormatter={(val) => `${val/1000}K €`} />
              <Tooltip content={<CustomTooltip />} />
              {showAverage && <ReferenceLine y={avg2026} stroke="#9CA3AF" strokeDasharray="5 5" label={{ position: 'right', value: '', fill: '#9CA3AF', fontSize: 10 }} />}
              <Area type="monotone" dataKey="sales" name="VENTA" stroke="#801515" strokeWidth={3} fillOpacity={1} fill="url(#colorSales)" dot={{ r: 4, fill: '#801515', strokeWidth: 2, stroke: 'white' }}>
                <LabelList dataKey="sales" position="top" offset={10} style={{ fontSize: '10px', fontWeight: '900', fill: '#1A1A1A' }} formatter={(v: any) => `${Math.round(Number(v)).toLocaleString('es-ES')}€`} />
              </Area>
            </AreaChart>
          </ResponsiveContainer>
        </div>
      </div>

      {/* 3. Weekly Trend Chart */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', padding: '24px', boxShadow: '0 4px 15px rgba(0,0,0,0.02)' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '30px' }}>
          <div style={{ backgroundColor: '#F3F4F6', padding: '8px', borderRadius: '12px' }}><LineIcon size={20} color="#801515" /></div>
          <h3 style={{ fontSize: '16px', fontWeight: '900', color: '#1A1A1A' }}>Venta por Semana 2026</h3>
        </div>

        <div style={{ display: 'flex', gap: '24px', marginBottom: '20px', fontSize: '10px', fontWeight: '800', color: '#9CA3AF' }}>
           <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
             <div style={{ width: '12px', height: '2px', backgroundColor: '#801515' }}></div>
             <span>Venta 2026 (Acum {weeklyChartData.length} sem: {Math.round(weeklyTotal2026).toLocaleString('es-ES')} €)</span>
           </div>
           {showAverage && (
             <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
               <div style={{ width: '12px', height: '2px', backgroundColor: '#9CA3AF', borderStyle: 'dashed' }}></div>
               <span>Promedio: {Math.round(weeklyAvg2026).toLocaleString('es-ES')} €</span>
             </div>
           )}
        </div>

        <div style={{ width: '100%', height: '300px' }}>
          <ResponsiveContainer width="100%" height="100%">
            <AreaChart data={weeklyChartData} margin={{ top: 20, right: 30, left: 0, bottom: 0 }}>
              <defs>
                <linearGradient id="colorWeekly" x1="0" y1="0" x2="0" y2="1">
                  <stop offset="5%" stopColor="#801515" stopOpacity={0.1}/>
                  <stop offset="95%" stopColor="#801515" stopOpacity={0}/>
                </linearGradient>
              </defs>
              <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#F1F5F9" />
              <XAxis dataKey="name" axisLine={false} tickLine={false} tick={{ fontSize: 10, fontWeight: 700, fill: '#9CA3AF' }} dy={10} />
              <YAxis axisLine={false} tickLine={false} tick={{ fontSize: 10, fontWeight: 700, fill: '#9CA3AF' }} tickFormatter={(val) => `${val/1000}K €`} />
              <Tooltip content={<CustomTooltip />} />
              {showAverage && <ReferenceLine y={weeklyAvg2026} stroke="#9CA3AF" strokeDasharray="5 5" />}
              <Area type="monotone" dataKey="sales" name="VENTA" stroke="#801515" strokeWidth={3} fillOpacity={1} fill="url(#colorWeekly)" dot={{ r: 4, fill: '#801515', strokeWidth: 2, stroke: 'white' }}>
                <LabelList dataKey="sales" position="top" offset={10} style={{ fontSize: '10px', fontWeight: '900', fill: '#1A1A1A' }} formatter={(v: any) => `${Math.round(Number(v)).toLocaleString('es-ES')}€`} />
              </Area>
            </AreaChart>
          </ResponsiveContainer>
        </div>
      </div>

      {/* 4. Heat Map Section */}
      <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
        <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center', backgroundColor: '#FAF9F6' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '15px' }}>
            <h3 style={{ fontSize: '12px', fontWeight: '900', color: '#1A1A1A' }}>MAPA DE CALOR OPERATIVO</h3>
            <select 
              value={selectedWeek} 
              onChange={(e) => setSelectedWeek(e.target.value)}
              style={{ padding: '4px 12px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '11px', fontWeight: '800', outline: 'none' }}
            >
              {weeks.map(w => <option key={w} value={w}>SEMANA {w}</option>)}
            </select>
          </div>
          <div style={{ display: 'flex', backgroundColor: '#F3F4F6', padding: '3px', borderRadius: '10px' }}>
            <button 
              onClick={() => setMetric('quantity')}
              style={{ 
                padding: '4px 12px', borderRadius: '8px', fontSize: '10px', fontWeight: '900', border: 'none',
                backgroundColor: metric === 'quantity' ? 'white' : 'transparent',
                color: metric === 'quantity' ? '#801515' : '#9CA3AF',
                cursor: 'pointer', transition: 'all 0.2s'
              }}
            >
              CANTIDAD
            </button>
            <button 
              onClick={() => setMetric('total')}
              style={{ 
                padding: '4px 12px', borderRadius: '8px', fontSize: '10px', fontWeight: '900', border: 'none',
                backgroundColor: metric === 'total' ? 'white' : 'transparent',
                color: metric === 'total' ? '#801515' : '#9CA3AF',
                cursor: 'pointer', transition: 'all 0.2s'
              }}
            >
              VENTA TOTAL
            </button>
          </div>
        </div>

        <div style={{ overflowX: 'auto', padding: '10px' }}>
          <table style={{ width: '100%', borderCollapse: 'separate', borderSpacing: '2px' }}>
            <thead>
              <tr>
                <th style={{ width: '100px' }}></th>
                {hours.map(h => (
                  <th key={h} style={{ padding: '8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>{h}:00</th>
                ))}
                <th style={{ padding: '8px', fontSize: '10px', color: '#1A1A1A', fontWeight: '900', textAlign: 'center' }}>TOTAL</th>
              </tr>
            </thead>
            <tbody>
              {days.map((dayName, dayIdx) => {
                const sqliteDay = dayIdx === 6 ? 0 : dayIdx + 1;
                const rowTotal = weekData.filter((d: any) => parseInt(d.day) === sqliteDay).reduce((acc: number, curr: any) => acc + curr[metric], 0);

                return (
                  <tr key={dayName}>
                    <td style={{ padding: '8px', fontSize: '11px', fontWeight: '900', color: '#4B5563' }}>{dayName}</td>
                    {hours.map(h => {
                      const cell = weekData.find((d: any) => parseInt(d.day) === sqliteDay && d.hour === h);
                      const val = cell ? cell[metric] : 0;
                      const bgColor = getHeatMapColor(val, maxValue);
                      // Calculate if we need white text based on lightness
                      const ratio = val / maxValue;
                      const isDark = val > 0 && ratio > 0.5;
                      
                      const formatValue = (v: number) => {
                        const rounded = Math.round(v);
                        if (metric === 'total') {
                          return rounded.toLocaleString('es-ES') + ' €';
                        }
                        return rounded.toLocaleString('es-ES');
                      };

                      return (
                        <td key={h} style={{ 
                          padding: '10px', textAlign: 'center', fontSize: '11px', fontWeight: '900',
                          backgroundColor: bgColor,
                          borderRadius: '4px', color: isDark ? '#FFFFFF' : '#1A1A1A',
                          transition: 'all 0.3s'
                        }}>
                          {formatValue(val)}
                        </td>
                      );
                    })}
                    <td style={{ padding: '10px', textAlign: 'center', fontSize: '11px', fontWeight: '900', color: '#1A1A1A', backgroundColor: '#F9FAFB' }}>
                      {metric === 'total' ? Math.round(rowTotal).toLocaleString('es-ES') + ' €' : Math.round(rowTotal).toLocaleString('es-ES')}
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>

      {/* 5. Product Intelligence Grid */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(350px, 1fr))', gap: '24px' }}>
        
        {/* Top 5 Products */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center', backgroundColor: '#F0FDF4' }}>
            <h3 style={{ fontSize: '11px', fontWeight: '900', color: '#166534' }}>TOP 5 PRODUCTOS (VENTAS)</h3>
            <TrendingUp size={14} color="#166534" />
          </div>
          <div style={{ maxHeight: '400px', overflowY: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left', position: 'sticky', top: 0 }}>
                  <th style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900' }}>PRODUCTO</th>
                  <th 
                    onClick={() => { setSortField('quantity'); setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc'); }}
                    style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right', cursor: 'pointer' }}
                  >
                    CANT. {sortField === 'quantity' && (sortOrder === 'asc' ? <ArrowUp size={8} /> : <ArrowDown size={8} />)}
                  </th>
                  <th 
                    onClick={() => { setSortField('total'); setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc'); }}
                    style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right', cursor: 'pointer' }}
                  >
                    TOTAL {sortField === 'total' && (sortOrder === 'asc' ? <ArrowUp size={8} /> : <ArrowDown size={8} />)}
                  </th>
                </tr>
              </thead>
              <tbody>
                {(data?.topProducts || [])
                  .sort((a: any, b: any) => sortOrder === 'asc' ? a[sortField] - b[sortField] : b[sortField] - a[sortField])
                  .slice(0, 5)
                  .map((p: any, idx: number) => (
                    <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                      <td style={{ padding: '12px 24px', fontSize: '10px', fontWeight: '900', color: '#1A1A1A' }}>{idx + 1}. {p.product_name}</td>
                      <td style={{ padding: '12px 24px', textAlign: 'right', fontSize: '10px', fontWeight: '900', color: '#4B5563' }}>{p.quantity}</td>
                      <td style={{ padding: '12px 24px', textAlign: 'right', fontSize: '10px', fontWeight: '900', color: '#166534' }}>{Math.round(p.total).toLocaleString('es-ES')} €</td>
                    </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        {/* Bottom 5 Products */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center', backgroundColor: '#FEF2F2' }}>
            <h3 style={{ fontSize: '11px', fontWeight: '900', color: '#991B1B' }}>BOTTOM 5 PRODUCTOS (VENTAS)</h3>
            <AlertTriangle size={14} color="#991B1B" />
          </div>
          <div style={{ maxHeight: '400px', overflowY: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left', position: 'sticky', top: 0 }}>
                  <th style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900' }}>PRODUCTO</th>
                  <th 
                    onClick={() => { setSortField('quantity'); setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc'); }}
                    style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right', cursor: 'pointer' }}
                  >
                    CANT. {sortField === 'quantity' && (sortOrder === 'asc' ? <ArrowUp size={8} /> : <ArrowDown size={8} />)}
                  </th>
                  <th 
                    onClick={() => { setSortField('total'); setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc'); }}
                    style={{ padding: '10px 24px', fontSize: '9px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right', cursor: 'pointer' }}
                  >
                    TOTAL {sortField === 'total' && (sortOrder === 'asc' ? <ArrowUp size={8} /> : <ArrowDown size={8} />)}
                  </th>
                </tr>
              </thead>
              <tbody>
                {(data?.bottomProducts || [])
                  .sort((a: any, b: any) => sortOrder === 'asc' ? a[sortField] - b[sortField] : b[sortField] - a[sortField])
                  .slice(0, 5)
                  .map((p: any, idx: number) => (
                    <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                      <td style={{ padding: '12px 24px', fontSize: '10px', fontWeight: '900', color: '#1A1A1A' }}>{idx + 1}. {p.product_name}</td>
                      <td style={{ padding: '12px 24px', textAlign: 'right', fontSize: '10px', fontWeight: '900', color: '#4B5563' }}>{p.quantity}</td>
                      <td style={{ padding: '12px 24px', textAlign: 'right', fontSize: '10px', fontWeight: '900', color: '#991B1B' }}>{Math.round(p.total).toLocaleString('es-ES')} €</td>
                    </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        {/* Sales by Family Chart */}
        <div style={{ backgroundColor: 'white', borderRadius: '24px', border: '1px solid #E5E7EB', overflow: 'hidden' }}>
          <div style={{ padding: '16px 24px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center', backgroundColor: '#FAF9F6' }}>
            <h3 style={{ fontSize: '11px', fontWeight: '900', color: '#1A1A1A' }}>VENTA POR FAMILIA (2026)</h3>
            <PieChartIcon size={14} color="#801515" />
          </div>
          <div style={{ height: '300px', display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '20px' }}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={data?.salesByFamily || []}
                  cx="50%"
                  cy="50%"
                  innerRadius={60}
                  outerRadius={80}
                  fill="#801515"
                  paddingAngle={5}
                  dataKey="value"
                  label={({ name, percent }) => `${name} ${( (percent || 0) * 100).toFixed(0)}%`}
                >
                  {(data?.salesByFamily || []).map((entry: any, index: number) => (
                    <Cell key={`cell-${index}`} fill={[ '#801515', '#A52A2A', '#D2691E', '#CD5C5C', '#E9967A' ][index % 5]} />
                  ))}
                </Pie>
                <Tooltip formatter={(value: any) => `${Math.round(value).toLocaleString('es-ES')}€`} />
              </PieChart>
            </ResponsiveContainer>
          </div>
        </div>

      </div>
    </div>
  );
}
