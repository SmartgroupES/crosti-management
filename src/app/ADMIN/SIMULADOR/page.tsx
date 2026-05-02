'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { ArrowLeft, Calculator, TrendingUp, DollarSign, Users, Zap, Home, Package, RefreshCcw } from 'lucide-react';

export default function SimuladorCostosPage() {
  const [fixedCosts, setFixedCosts] = useState<any[]>([]);
  const [ingredients, setIngredients] = useState<any[]>([]);
  const [escandallos, setEscandallos] = useState<any[]>([]);
  const [productionVolume, setProductionVolume] = useState(5000);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    Promise.all([
      fetch('/api/admin/fixed-costs').then(res => res.json()),
      fetch('/api/admin/raw-materials').then(res => res.json()),
      fetch('/api/escandallos').then(res => res.json())
    ]).then(([costsData, ingData, escandallosData]) => {
      setFixedCosts(costsData.fixedCosts || []);
      setIngredients(ingData.materials || []);
      setEscandallos(escandallosData || []);
      if (costsData.realMonthlyVolume > 0) {
        setProductionVolume(costsData.realMonthlyVolume);
      }
      setLoading(false);
    }).catch(e => console.error(e));
  }, []);

  const handleCostChange = (id: number, newValue: number) => {
    setFixedCosts(prev => prev.map(c => c.id === id ? { ...c, amount: newValue } : c));
  };

  const handleIngredientChange = (id: number, newPrice: number) => {
    setIngredients(prev => prev.map(i => i.id === id ? { ...i, average_cost_per_unit: newPrice } : i));
  };

  const totalFixedCosts = fixedCosts.reduce((acc, curr) => acc + curr.amount, 0);
  const unitFixedCost = productionVolume > 0 ? totalFixedCosts / productionVolume : 0;

  // Calculate adjusted escandallos based on simulated ingredient prices
  const simulatedEscandallos = escandallos.map(recipe => {
    // This is a simplified simulation: it assumes the 'total_cost' from API is the baseline
    // and adjusts it based on the ratio of simulated ingredients.
    // For a perfect simulation, we would need the full recipe breakdown here.
    // For now, we'll simulate an "inflation factor" based on the main ingredients.
    const mainIngs = ingredients.filter(i => ['Harina de trigo', 'Mantequilla', 'Chocolate 72%'].includes(i.name));
    const avgInflation = mainIngs.length > 0 ? (mainIngs.reduce((acc, curr) => acc + (curr.average_cost_per_unit / (curr.baseline || curr.average_cost_per_unit)), 0) / mainIngs.length) : 1;
    
    return {
      ...recipe,
      simulated_cost: recipe.total_cost * avgInflation
    };
  });

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Cargando simulador estratégico...</div>;

  return (
    <div style={{ backgroundColor: '#FAF9F6', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      {/* Header */}
      <header style={{ padding: '30px 40px', backgroundColor: 'white', borderBottom: '1px solid #E5E7EB', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div>
          <Link href="/" style={{ display: 'flex', alignItems: 'center', gap: '8px', color: '#666', fontSize: '12px', textDecoration: 'none', marginBottom: '8px', fontWeight: 'bold' }}>
            <ArrowLeft size={14} /> VOLVER AL PANEL
          </Link>
          <h1 style={{ fontSize: '24px', fontWeight: 'bold', margin: 0 }}>Simulador Estratégico BakeOS</h1>
          <p style={{ fontSize: '13px', color: '#9CA3AF', margin: '4px 0 0 0' }}>Análisis de sensibilidad: Impacto de materias primas y gastos en el beneficio</p>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
            <div style={{ textAlign: 'right' }}>
                <div style={{ fontSize: '10px', fontWeight: '900', color: '#801515', letterSpacing: '1px' }}>MODO SIMULACIÓN</div>
                <div style={{ fontSize: '12px', fontWeight: '700' }}>POBLENOU | BCN</div>
            </div>
            <Calculator size={32} color="#801515" />
        </div>
      </header>

      <main style={{ padding: '40px', maxWidth: '1400px', margin: '0 auto', display: 'grid', gridTemplateColumns: '400px 1fr', gap: '40px' }}>
        
        {/* Left Sidebar: Controls */}
        <aside style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
          
          {/* 1. Volumen */}
          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '24px', border: '1px solid #E5E7EB', boxShadow: '0 4px 6px rgba(0,0,0,0.02)' }}>
            <h3 style={{ fontSize: '14px', fontWeight: '900', marginBottom: '20px', display: 'flex', alignItems: 'center', gap: '8px', color: '#2D2926' }}>
              <Package size={16} color="#801515" /> VENTAS ESTIMADAS
            </h3>
            <input 
              type="range" 
              min="1000" 
              max="15000" 
              step="500"
              value={productionVolume}
              onChange={(e) => setProductionVolume(parseInt(e.target.value))}
              style={{ width: '100%', accentColor: '#801515', marginBottom: '12px' }}
            />
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <span style={{ fontSize: '20px', fontWeight: '900' }}>{productionVolume.toLocaleString()}</span>
              <span style={{ fontSize: '11px', color: '#9CA3AF', fontWeight: '700' }}>UNIDADES/MES</span>
            </div>
          </div>

          {/* 2. Inflación Materias Primas */}
          <div style={{ backgroundColor: '#1A1A1A', padding: '24px', borderRadius: '24px', color: 'white' }}>
            <h3 style={{ fontSize: '14px', fontWeight: '900', marginBottom: '20px', display: 'flex', alignItems: 'center', gap: '8px' }}>
              <RefreshCcw size={16} color="#801515" /> COSTO MATERIAS PRIMAS
            </h3>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
              {ingredients.filter(i => ['Harina de trigo', 'Mantequilla', 'Chocolate 72%'].includes(i.name)).map(ing => (
                <div key={ing.id}>
                  <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '8px' }}>
                    <label style={{ fontSize: '11px', color: 'rgba(255,255,255,0.6)', fontWeight: '800', textTransform: 'uppercase' }}>{ing.name}</label>
                    <span style={{ fontSize: '12px', fontWeight: '900', color: '#801515' }}>{ing.average_cost_per_unit.toFixed(2)} €/kg</span>
                  </div>
                  <input 
                    type="range" 
                    min={ing.average_cost_per_unit * 0.5} 
                    max={ing.average_cost_per_unit * 2} 
                    step="0.05"
                    value={ing.average_cost_per_unit}
                    onChange={(e) => handleIngredientChange(ing.id, parseFloat(e.target.value))}
                    style={{ width: '100%', accentColor: '#801515' }}
                  />
                </div>
              ))}
            </div>
          </div>

          {/* 3. Gastos Fijos */}
          <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '24px', border: '1px solid #E5E7EB' }}>
            <h3 style={{ fontSize: '14px', fontWeight: '900', marginBottom: '20px', color: '#2D2926' }}>GASTOS OPERATIVOS</h3>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
              {fixedCosts.map(cost => (
                <div key={cost.id}>
                  <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '8px' }}>
                    <label style={{ fontSize: '11px', color: '#666', fontWeight: '800' }}>{cost.category.toUpperCase()}</label>
                    <span style={{ fontSize: '12px', fontWeight: '900' }}>{cost.amount.toLocaleString()} €</span>
                  </div>
                  <input 
                    type="range" 
                    min="0" 
                    max={cost.amount * 2} 
                    step="100"
                    value={cost.amount}
                    onChange={(e) => handleCostChange(cost.id, parseInt(e.target.value))}
                    style={{ width: '100%', accentColor: '#2D2926' }}
                  />
                </div>
              ))}
            </div>
            <div style={{ marginTop: '24px', paddingTop: '20px', borderTop: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between' }}>
              <span style={{ fontSize: '12px', fontWeight: '900' }}>TOTAL GASTOS</span>
              <span style={{ fontSize: '18px', fontWeight: '900', color: '#EF4444' }}>{totalFixedCosts.toLocaleString()} €</span>
            </div>
          </div>
        </aside>

        {/* Right Content: Analysis */}
        <section style={{ display: 'flex', flexDirection: 'column', gap: '30px' }}>
          {/* Summary Cards */}
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '20px' }}>
            <div style={{ backgroundColor: '#1A1A1A', color: 'white', padding: '30px', borderRadius: '24px', boxShadow: '0 10px 25px rgba(0,0,0,0.1)' }}>
              <div style={{ fontSize: '11px', fontWeight: '900', opacity: 0.6, marginBottom: '8px', letterSpacing: '1.5px', textTransform: 'uppercase' }}>Costo Fijo / Unidad</div>
              <div style={{ fontSize: '36px', fontWeight: '900' }}>{unitFixedCost.toFixed(3)} €</div>
              <div style={{ fontSize: '12px', opacity: 0.8, marginTop: '8px', fontWeight: '600' }}>Impacto operativo por producto vendido</div>
            </div>
            <div style={{ backgroundColor: '#F0FDF4', border: '1px solid #BBF7D0', padding: '30px', borderRadius: '24px', boxShadow: '0 10px 25px rgba(22, 101, 52, 0.05)' }}>
              <div style={{ fontSize: '11px', fontWeight: '900', color: '#166534', marginBottom: '8px', letterSpacing: '1.5px', textTransform: 'uppercase' }}>Beneficio Neto Mensual</div>
              <div style={{ fontSize: '36px', fontWeight: '900', color: '#166534' }}>
                {simulatedEscandallos.length > 0 ? (
                  (simulatedEscandallos.reduce((acc, curr) => acc + (curr.sale_price - curr.simulated_cost - unitFixedCost), 0) / simulatedEscandallos.length * productionVolume).toLocaleString('es-ES', { maximumFractionDigits: 0 })
                ) : 0} €
              </div>
              <div style={{ fontSize: '12px', color: '#166534', opacity: 0.8, marginTop: '8px', fontWeight: '600' }}>Resultado neto proyectado (Simulación)</div>
            </div>
          </div>

          {/* Impact Table */}
          <div style={{ backgroundColor: 'white', borderRadius: '32px', border: '1px solid #E5E7EB', overflow: 'hidden', boxShadow: '0 4px 6px rgba(0,0,0,0.02)' }}>
            <div style={{ padding: '24px 32px', borderBottom: '1px solid #F3F4F6', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <h3 style={{ fontSize: '16px', fontWeight: '900', margin: 0, color: '#2D2926' }}>Impacto en Productos Estrella</h3>
              <div style={{ fontSize: '10px', fontWeight: '900', color: '#10B981', backgroundColor: '#DCFCE7', padding: '4px 10px', borderRadius: '10px' }}>ESTIMACIÓN IA ACTIVA</div>
            </div>
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr style={{ backgroundColor: '#F9FAFB', textAlign: 'left' }}>
                  <th style={{ padding: '20px 32px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', letterSpacing: '1px' }}>PRODUCTO</th>
                  <th style={{ padding: '20px 32px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', letterSpacing: '1px', textAlign: 'center' }}>COSTO MP</th>
                  <th style={{ padding: '20px 32px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', letterSpacing: '1px', textAlign: 'center' }}>COSTO FIJO</th>
                  <th style={{ padding: '20px 32px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', letterSpacing: '1px', textAlign: 'center' }}>TOTAL UNIT.</th>
                  <th style={{ padding: '20px 32px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', letterSpacing: '1px', textAlign: 'right' }}>BENEFICIO NETO</th>
                </tr>
              </thead>
              <tbody>
                {simulatedEscandallos.slice(0, 8).map((p, idx) => {
                  const totalUnitCost = p.simulated_cost + unitFixedCost;
                  const netProfit = p.sale_price - totalUnitCost;
                  const marginPercent = (netProfit / p.sale_price) * 100;
                  
                  return (
                    <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6', transition: 'background-color 0.2s' }}>
                      <td style={{ padding: '24px 32px' }}>
                        <div style={{ fontSize: '14px', fontWeight: '900', color: '#2D2926' }}>{p.name.toUpperCase()}</div>
                        <div style={{ fontSize: '11px', color: '#9CA3AF', fontWeight: '700', marginTop: '4px' }}>PV: {p.sale_price.toFixed(2)}€</div>
                      </td>
                      <td style={{ padding: '24px 32px', textAlign: 'center', fontSize: '14px', fontWeight: '700', color: p.simulated_cost > p.total_cost ? '#EF4444' : '#2D2926' }}>
                        {p.simulated_cost.toFixed(2)} €
                      </td>
                      <td style={{ padding: '24px 32px', textAlign: 'center', color: '#9CA3AF', fontSize: '13px', fontWeight: '600' }}>
                        {unitFixedCost.toFixed(2)} €
                      </td>
                      <td style={{ padding: '24px 32px', textAlign: 'center', fontWeight: '800', fontSize: '14px' }}>
                        {totalUnitCost.toFixed(2)} €
                      </td>
                      <td style={{ padding: '24px 32px', textAlign: 'right' }}>
                        <div style={{ fontSize: '16px', fontWeight: '900', color: netProfit > 0 ? '#10B981' : '#EF4444' }}>
                          {netProfit.toFixed(2)} €
                        </div>
                        <div style={{ fontSize: '10px', fontWeight: '800', color: marginPercent > 15 ? '#10B981' : '#F59E0B', marginTop: '4px' }}>
                          {marginPercent.toFixed(1)}% MARGEN
                        </div>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>

          {/* Break-even Info */}
          <div style={{ backgroundColor: '#FFF7ED', border: '1px solid #FFEDD5', padding: '32px', borderRadius: '32px', display: 'flex', alignItems: 'center', gap: '24px', boxShadow: '0 4px 6px rgba(154, 52, 18, 0.05)' }}>
            <div style={{ backgroundColor: '#801515', color: 'white', width: '64px', height: '64px', borderRadius: '20px', display: 'flex', alignItems: 'center', justifyContent: 'center', boxShadow: '0 10px 20px rgba(249, 115, 22, 0.3)' }}>
              <TrendingUp size={32} />
            </div>
            <div>
              <div style={{ fontSize: '12px', fontWeight: '900', color: '#9A3412', letterSpacing: '1px', textTransform: 'uppercase', marginBottom: '4px' }}>Punto de Equilibrio Estratégico</div>
              <div style={{ fontSize: '15px', color: '#C2410C', fontWeight: '600', lineHeight: '1.5' }}>
                Con estos costos, necesitas vender <strong style={{ fontSize: '20px', color: '#9A3412' }}>{(totalFixedCosts / (simulatedEscandallos.reduce((a,c) => a + (c.sale_price - c.simulated_cost), 0) / (simulatedEscandallos.length || 1))).toFixed(0)}</strong> unidades al mes para cubrir gastos.
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
  );
}
