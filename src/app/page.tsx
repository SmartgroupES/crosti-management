export const runtime = 'edge';

export default function Page() {
  return (
    <div style={{ backgroundColor: '#FDF5E6', minHeight: '100vh', padding: '40px', fontFamily: 'system-ui, sans-serif', color: '#3E2723' }}>
      <header style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '40px' }}>
        <h1 style={{ fontSize: '32px', fontWeight: 'bold' }}>🍪 Crosti Hub</h1>
        <a href="/admin/importar" style={{ backgroundColor: '#3E2723', color: 'white', padding: '12px 24px', borderRadius: '30px', textDecoration: 'none', fontWeight: 'bold' }}>
          Subir Excel
        </a>
      </header>

      <div style={{ display: 'flex', gap: '20px', flexWrap: 'wrap' }}>
        <div style={{ background: 'white', padding: '30px', borderRadius: '24px', borderBottom: '8px solid #FBBF24', flex: '1', minWidth: '200px' }}>
          <p style={{ color: '#6B7280', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase' }}>Ventas Hoy</p>
          <p style={{ fontSize: '36px', fontWeight: '900', margin: '0' }}>0.00€</p>
        </div>
        <div style={{ background: 'white', padding: '30px', borderRadius: '24px', borderBottom: '8px solid #4ADE80', flex: '1', minWidth: '200px' }}>
          <p style={{ color: '#6B7280', fontSize: '12px', fontWeight: 'bold', textTransform: 'uppercase' }}>Margen Bruto</p>
          <p style={{ fontSize: '36px', fontWeight: '900', margin: '0' }}>68%</p>
        </div>
      </div>

      <div style={{ marginTop: '40px', background: 'white', padding: '40px', borderRadius: '40px', textAlign: 'center' }}>
        <h2>📊 Estado del Sistema</h2>
        <p>Si ves este mensaje, la infraestructura en la nube está funcionando perfectamente.</p>
      </div>
    </div>
  );
}
