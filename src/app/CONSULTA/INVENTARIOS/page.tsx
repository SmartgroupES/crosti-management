'use client';

import React from 'react';
import { Box, Hash, Clipboard, Tag, Search, Filter } from 'lucide-react';

export default function InventariosPage() {
  const kpis = [
    { label: 'VALOR DEL INVENTARIO', value: '845.050 €', subvalue: 'Total período filtrado', icon: <Box size={24} color="#EF4444" /> },
    { label: 'CANTIDAD TOTAL', value: '3.825.434', subvalue: 'Unidades en inventario', icon: <Hash size={24} color="#666" /> },
    { label: 'REGISTROS', value: '24.241', subvalue: 'Ítems filtrados', icon: <Clipboard size={24} color="#666" /> },
    { label: 'ÍTEMS ÚNICOS', value: '871', subvalue: 'SKUs diferentes', icon: <Tag size={24} color="#666" /> },
  ];

  const inventoryData = [
    { fecha: '31/01/2026', mes: 'enero', tienda: 'VELÁZQUEZ', codigo: '00121', item: 'COCOA EN POLVO', tipo: 'MP', cantidad: '236', unidad: 'Kilo', precio: '€ 21.992', total: '€ 5.157' },
    { fecha: '31/08/2025', mes: 'agosto', tienda: 'VELÁZQUEZ', codigo: '00156', item: 'FLOR DE SAL', tipo: 'MP', cantidad: '300', unidad: 'Kilo', precio: '€ 15.866', total: '€ 4.760' },
    { fecha: '31/07/2025', mes: 'julio', tienda: 'RETIRO', codigo: '00608', item: 'GRANILLO DE PISTACHO', tipo: 'MP', cantidad: '107', unidad: 'Kilo', precio: '€ 24.895', total: '€ 2.663' },
    { fecha: '31/03/2025', mes: 'marzo', tienda: 'RETIRO', codigo: '00608', item: 'GRANILLO DE PISTACHO', tipo: 'MP', cantidad: '97', unidad: 'Kilo', precio: '€ 24.676', total: '€ 2.399' },
    { fecha: '28/02/2025', mes: 'febrero', tienda: 'RETIRO', codigo: '00608', item: 'GRANILLO DE PISTACHO', tipo: 'MP', cantidad: '93', unidad: 'Kilo', precio: '€ 24.182', total: '€ 2.251' },
    { fecha: '31/08/2025', mes: 'agosto', tienda: 'RETIRO', codigo: '01601', item: 'SUB BACON HORNEADO', tipo: 'PT', cantidad: '200', unidad: 'KG', precio: '€ 9.958', total: '€ 1.992' },
  ];

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
      {/* KPI Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(240px, 1fr))', gap: '20px' }}>
        {kpis.map((kpi, idx) => (
          <div key={idx} style={{ backgroundColor: 'white', padding: '24px', borderRadius: '16px', border: '1px solid #E5E7EB' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '12px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '0.5px' }}>{kpi.label}</div>
              {kpi.icon}
            </div>
            <div style={{ fontSize: '28px', fontWeight: '900', color: kpi.label === 'VALOR DEL INVENTARIO' ? '#EF4444' : '#1A1A1A', marginBottom: '4px' }}>{kpi.value}</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>{kpi.subvalue}</div>
          </div>
        ))}
      </div>

      {/* Filters Section */}
      <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB' }}>
        <button style={{ backgroundColor: 'white', border: '1px solid #EF4444', color: '#EF4444', padding: '6px 16px', borderRadius: '8px', fontSize: '12px', fontWeight: 'bold', marginBottom: '20px', cursor: 'pointer' }}>
          Seleccionar todo
        </button>
        
        <div style={{ display: 'flex', gap: '20px', alignItems: 'flex-end', flexWrap: 'wrap' }}>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textTransform: 'uppercase' }}>Año</label>
            <select style={{ padding: '10px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px', backgroundColor: '#F9FAFB', minWidth: '120px' }}>
              <option>Todos</option>
              <option>2026</option>
              <option>2025</option>
            </select>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textTransform: 'uppercase' }}>Mes</label>
            <select style={{ padding: '10px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px', backgroundColor: '#F9FAFB', minWidth: '120px' }}>
              <option>Todas</option>
              <option>Enero</option>
              <option>Febrero</option>
            </select>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textTransform: 'uppercase' }}>Tipo</label>
            <select style={{ padding: '10px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px', backgroundColor: '#F9FAFB', minWidth: '120px' }}>
              <option>Todas</option>
              <option>MP (Materia Prima)</option>
              <option>PT (Producto Terminado)</option>
            </select>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', flex: 1, minWidth: '300px' }}>
            <label style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', textTransform: 'uppercase' }}>Item</label>
            <div style={{ position: 'relative' }}>
              <input 
                type="text" 
                placeholder="Buscar código o ítem..." 
                style={{ width: '100%', padding: '10px 10px 10px 40px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '13px' }} 
              />
              <Search size={18} style={{ position: 'absolute', left: '12px', top: '50%', transform: 'translateY(-50%)', color: '#9CA3AF' }} />
            </div>
          </div>
          <button style={{ backgroundColor: 'white', border: '1px solid #E5E7EB', color: '#EF4444', padding: '10px 24px', borderRadius: '8px', fontSize: '13px', fontWeight: 'bold', cursor: 'pointer' }}>
            Limpiar
          </button>
        </div>
      </div>

      {/* Table Section */}
      <div style={{ backgroundColor: 'white', padding: '30px', borderRadius: '20px', border: '1px solid #E5E7EB', overflowX: 'auto' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '20px' }}>
           <div style={{ backgroundColor: '#F3F4F6', padding: '6px', borderRadius: '6px' }}><Clipboard size={16} color="#666" /></div>
           <h3 style={{ fontSize: '16px', fontWeight: 'bold', margin: 0 }}>Inventarios Mensuales</h3>
        </div>

        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '11px' }}>
          <thead>
            <tr style={{ textAlign: 'left', backgroundColor: '#D97706', color: 'white' }}>
              <th style={{ padding: '12px 8px' }}>FECHA</th>
              <th style={{ padding: '12px 8px' }}>MES</th>
              <th style={{ padding: '12px 8px' }}>TIENDA</th>
              <th style={{ padding: '12px 8px' }}>CÓDIGO</th>
              <th style={{ padding: '12px 8px' }}>ITEM</th>
              <th style={{ padding: '12px 8px' }}>TIPO</th>
              <th style={{ padding: '12px 8px', textAlign: 'right' }}>CANTIDAD</th>
              <th style={{ padding: '12px 8px' }}>UNIDAD</th>
              <th style={{ padding: '12px 8px', textAlign: 'right' }}>PRECIO PROMEDIO</th>
              <th style={{ padding: '12px 8px', textAlign: 'right' }}>TOTAL</th>
            </tr>
          </thead>
          <tbody>
            {inventoryData.map((row, idx) => (
              <tr key={idx} style={{ borderBottom: '1px solid #F3F4F6' }}>
                <td style={{ padding: '10px 8px', color: '#6B7280' }}>{row.fecha}</td>
                <td style={{ padding: '10px 8px', fontWeight: 'bold' }}>{row.mes}</td>
                <td style={{ padding: '10px 8px' }}>{row.tienda}</td>
                <td style={{ padding: '10px 8px', color: '#6B7280' }}>{row.codigo}</td>
                <td style={{ padding: '10px 8px', fontWeight: 'bold' }}>{row.item}</td>
                <td style={{ padding: '10px 8px', color: row.tipo === 'MP' ? '#2563EB' : '#059669', fontWeight: 'bold' }}>{row.tipo}</td>
                <td style={{ padding: '10px 8px', textAlign: 'right', fontWeight: 'bold' }}>{row.cantidad}</td>
                <td style={{ padding: '10px 8px', color: '#6B7280' }}>{row.unidad}</td>
                <td style={{ padding: '10px 8px', textAlign: 'right' }}>{row.precio}</td>
                <td style={{ padding: '10px 8px', textAlign: 'right', fontWeight: 'bold' }}>{row.total}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
