export const runtime = 'edge';

export default function Page() {
  return (
    <div style={{ backgroundColor: '#FDF5E6', minHeight: '100vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', fontFamily: 'sans-serif', color: '#3E2723' }}>
      <h1 style={{ fontSize: '48px', marginBottom: '10px' }}>🍪 Crosti Hub</h1>
      <p style={{ fontSize: '20px', color: '#666' }}>Si ves esto, la web está ONLINE.</p>
      <div style={{ marginTop: '30px' }}>
        <a href="/admin/importar" style={{ backgroundColor: '#3E2723', color: 'white', padding: '15px 30px', borderRadius: '12px', textDecoration: 'none', fontWeight: 'bold' }}>
          PROBAR IMPORTADOR
        </a>
      </div>
    </div>
  );
}
