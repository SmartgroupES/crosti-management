export const runtime = 'edge';

export default function Page() {
  return (
    <div style={{ padding: '50px', textAlign: 'center', fontFamily: 'sans-serif' }}>
      <h1>🍪 Crosti Hub está VIVO</h1>
      <p>Si ves esto, la conexión es correcta.</p>
      <a href="/admin/importar">Ir a Importar</a>
    </div>
  );
}
