export const runtime = 'edge';
import { ShoppingBag, TrendingUp, Package, UploadCloud } from 'lucide-react';
import Link from 'next/link';

export default function Dashboard() {
  return (
    <div style={{ backgroundColor: '#FDF5E6', minHeight: '100vh', padding: '40px', fontFamily: 'sans-serif', color: '#3E2723' }}>
      <header style={{ display: 'flex', justifyContent: 'between', alignItems: 'center', marginBottom: '40px' }}>
        <h1 style={{ fontSize: '32px', fontWeight: 'bold' }}>🍪 Crosti Hub <span style={{ fontSize: '14px', background: '#FEF3C7', padding: '4px 12px', borderRadius: '20px', marginLeft: '10px' }}>Madrid-BCN</span></h1>
        <div style={{ marginLeft: 'auto' }}>
          <Link href="/admin/importar" style={{ backgroundColor: '#3E2723', color: 'white', padding: '12px 24px', borderRadius: '30px', textDecoration: 'none', fontWeight: 'bold', display: 'flex', alignItems: 'center' }}>
            <UploadCloud style={{ marginRight: '8px' }} size={20} /> Subir Excel
          </Link>
        </div>
      </header>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(250px, 1fr))', gap: '24px' }}>
        <div style={{ background: 'white', padding: '30px', borderRadius: '24px', borderBottom: '8px solid #FBBF24' }}>
          <ShoppingBag color="#B45309" size={32} />
          <p style={{ color: '#6B7280', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase', marginTop: '10px' }}>Ventas Hoy</p>
          <p style={{ fontSize: '36px', fontWeight: '900', margin: '0' }}>0.00€</p>
        </div>
        
        <div style={{ background: 'white', padding: '30px', borderRadius: '24px', borderBottom: '8px solid #4ADE80' }}>
          <TrendingUp color="#15803D" size={32} />
          <p style={{ color: '#6B7280', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase', marginTop: '10px' }}>Margen Bruto</p>
          <p style={{ fontSize: '36px', fontWeight: '900', margin: '0' }}>68%</p>
        </div>

        <div style={{ background: 'white', padding: '30px', borderRadius: '24px', borderBottom: '8px solid #F87171' }}>
          <Package color="#B91C1C" size={32} />
          <p style={{ color: '#6B7280', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase', marginTop: '10px' }}>Stock Crítico</p>
          <p style={{ fontSize: '36px', fontWeight: '900', margin: '0' }}>OK</p>
        </div>
      </div>

      <div style={{ marginTop: '40px', background: 'white', padding: '40px', borderRadius: '40px', textAlign: 'center', border: '1px solid #FEF3C7' }}>
        <h2 style={{ fontStyle: 'italic' }}>📊 Actividad Reciente</h2>
        <p style={{ color: '#9CA3AF' }}>Sistema listo para recibir datos de Barcelona.</p>
      </div>
    </div>
  );
}
