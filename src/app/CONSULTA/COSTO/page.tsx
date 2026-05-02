'use client';

import React from 'react';
import { Calculator, ShoppingCart, Percent, TrendingUp, TrendingDown, Search, Filter } from 'lucide-react';

export default function CostoTeoricoPage() {
  const kpis = [
    { label: 'REGISTROS', value: '0', subvalue: 'Filtrados', icon: <Calculator size={24} color="#EF4444" /> },
    { label: 'USO REAL (€)', value: '0 €', subvalue: 'Total período filtrado', icon: <TrendingDown size={24} color="#1A1A1A" /> },
    { label: 'USO TEÓRICO (€)', value: '0 €', subvalue: 'Total período filtrado', icon: <ShoppingCart size={24} color="#1A1A1A" /> },
    { label: 'VARIACIÓN (€)', value: '0 €', subvalue: 'Real - Teórico', icon: <TrendingDown size={24} color="#10B981" /> },
    { label: 'VARIACIÓN %', value: '0 %', subvalue: 'Sobre ventas', icon: <Percent size={24} color="#EF4444" /> },
  ];

  const tableData = [
    { cod: '00671', item: 'ACEITE DE TR...', und: 'Litro', invIni: '0.25', compra: '0', transIn: '1', merma: '0', comP: '0', trOut: '0', invFin: '0.25', costU: '€ 44.79', totFin: '€ 11.2', uReal: '1.0', uTeor: '0.00', realE: '€ 45', teorE: '€ 0', varE: '45 €', varP: '0.00%' },
    { cod: '00671', item: 'ACEITE DE TR...', und: 'Litro', invIni: '0', compra: '0', transIn: '3', merma: '0', comP: '0', trOut: '0', invFin: '0.03', costU: '€ 44.79', totFin: '€ 1.3', uReal: '3.0', uTeor: '0.00', realE: '€ 133', teorE: '€ 0', varE: '133 €', varP: '0.00%' },
  ];

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
      {/* KPI Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '20px' }}>
        {kpis.map((kpi, idx) => (
          <div key={idx} style={{ backgroundColor: 'white', padding: '24px', borderRadius: '16px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '12px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '0.5px' }}>{kpi.label}</div>
              {kpi.icon}
            </div>
            <div style={{ fontSize: '22px', fontWeight: '900', color: kpi.value.startsWith('-') ? '#10B981' : '#1A1A1A', marginBottom: '4px' }}>{kpi.value}</div>
            <div style={{ fontSize: '11px', color: '#6B7280' }}>{kpi.subvalue}</div>
          </div>
        ))}
      </div>

      {/* Filters Section */}
      <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(140px, 1fr))', gap: '20px', alignItems: 'flex-end' }}>
          {['AÑO', 'MES', 'TIENDA', 'ITEM'].map(label => (
            <div key={label} style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>{label}</label>
              <select style={{ padding: '10px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px', backgroundColor: '#F9FAFB' }}>
                <option>Todos</option>
              </select>
            </div>
          ))}
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', gridColumn: 'span 2' }}>
            <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>BUSCAR</label>
            <div style={{ position: 'relative' }}>
              <input type="text" placeholder="Código o ítem..." style={{ width: '100%', padding: '10px 10px 10px 12px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px' }} />
            </div>
          </div>
          <button style={{ backgroundColor: 'white', border: '1px solid #EF4444', color: '#EF4444', padding: '10px', borderRadius: '8px', fontSize: '13px', fontWeight: 'bold', cursor: 'pointer' }}>Limpiar</button>
        </div>

        <div style={{ marginTop: '20px', display: 'flex', gap: '10px', alignItems: 'center' }}>
          <div style={{ backgroundColor: '#FAF9F6', padding: '4px 12px', borderRadius: '20px', fontSize: '11px', fontWeight: 'bold', border: '1px solid #E5E7EB' }}>Todo</div>
        </div>

        <div style={{ marginTop: '20px', display: 'flex', gap: '12px', alignItems: 'center' }}>
           <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF' }}>SEGMENTAR ITEM:</label>
           <input type="text" placeholder="Buscar ítem..." style={{ padding: '8px 12px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '12px', minWidth: '250px' }} />
           <button style={{ backgroundColor: 'white', border: '1px solid #E5E7EB', padding: '8px 16px', borderRadius: '8px', fontSize: '12px', color: '#666' }}>Limpiar</button>
        </div>
      </div>

      {/* Table Section */}
      <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '20px', border: '1px solid #E5E7EB', overflowX: 'auto' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '20px' }}>
           <div style={{ backgroundColor: '#F3F4F6', padding: '6px', borderRadius: '6px' }}><Calculator size={16} color="#666" /></div>
           <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Costo Teórico Detalle</h3>
        </div>

        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '9px' }}>
          <thead>
            <tr style={{ textAlign: 'left', backgroundColor: '#F9FAFB', borderBottom: '2px solid #E5E7EB' }}>
              <th style={{ padding: '8px' }}>COD</th>
              <th style={{ padding: '8px' }}>ITEM ▲</th>
              <th style={{ padding: '8px' }}>UND</th>
              <th style={{ padding: '8px' }}>INV INI</th>
              <th style={{ padding: '8px' }}>COMPRA</th>
              <th style={{ padding: '8px' }}>TRANS IN</th>
              <th style={{ padding: '8px' }}>MERMA</th>
              <th style={{ padding: '8px' }}>COM P</th>
              <th style={{ padding: '8px' }}>TR OUT</th>
              <th style={{ padding: '8px' }}>INV FIN</th>
              <th style={{ padding: '8px' }}>COSTO/U</th>
              <th style={{ padding: '8px' }}>TOT FIN €</th>
              <th style={{ padding: '8px' }}>U. REAL</th>
              <th style={{ padding: '8px' }}>U. TEÓR</th>
              <th style={{ padding: '8px' }}>REAL €</th>
              <th style={{ padding: '8px' }}>TEÓR €</th>
              <th style={{ padding: '8px' }}>VAR €</th>
              <th style={{ padding: '8px' }}>VAR %</th>
            </tr>
          </thead>
          <tbody>
            {tableData.map((row, idx) => (
              <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                <td style={{ padding: '8px', color: '#6B7280' }}>{row.cod}</td>
                <td style={{ padding: '8px', fontWeight: 'bold' }}>{row.item}</td>
                <td style={{ padding: '8px', color: '#6B7280' }}>{row.und}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.invIni}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.compra}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.transIn}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.merma}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.comP}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.trOut}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.invFin}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.costU}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.totFin}</td>
                <td style={{ padding: '8px', textAlign: 'right', fontWeight: 'bold' }}>{row.uReal}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.uTeor}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.realE}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.teorE}</td>
                <td style={{ padding: '8px', textAlign: 'right', color: '#EF4444', fontWeight: 'bold' }}>{row.varE}</td>
                <td style={{ padding: '8px', textAlign: 'right' }}>{row.varP}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
