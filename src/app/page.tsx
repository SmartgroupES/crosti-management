export const runtime = 'edge';

export default function Page() {
  return (
    <div style={{ padding: '100px', textAlign: 'center', fontFamily: 'sans-serif' }}>
      <h1 style={{ color: '#3E2723' }}>🍪 CROSTI HUB</h1>
      <h2 style={{ color: 'green' }}>CONEXIÓN ESTABLECIDA</h2>
      <p>Si lees esto, hemos roto el bucle de errores.</p>
      <div style={{ marginTop: '20px' }}>
        <a href="/admin/importar">PROBAR IMPORTADOR</a>
      </div>
    </div>
  );
}
