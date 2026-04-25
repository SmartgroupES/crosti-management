export const runtime = 'edge';

export default async function Dashboard({ searchParams, context }: any) {
  let dbStatus = "Buscando...";
  let tables = [];

  try {
    // Intentamos una consulta simple a la base de datos
    const { results } = await process.env.DB.prepare("SELECT name FROM sqlite_master WHERE type='table'").all();
    dbStatus = "✅ CONECTADA";
    tables = results.map(r => r.name);
  } catch (e) {
    dbStatus = "❌ ERROR: " + (e instanceof Error ? e.message : "No se encuentra el binding DB");
  }

  return (
    <div style={{ backgroundColor: '#FDF5E6', minHeight: '100vh', padding: '40px', fontFamily: 'sans-serif', color: '#3E2723' }}>
      <h1>Crosti Hub - Diagnóstico</h1>
      <div style={{ background: 'white', padding: '20px', borderRadius: '15px', border: '1px solid #ddd' }}>
        <p>Estado Base de Datos: <strong>{dbStatus}</strong></p>
        <p>Tablas encontradas: {tables.join(', ') || "Ninguna"}</p>
      </div>
      <br />
      <a href="/admin/importar" style={{ background: '#3E2723', color: 'white', padding: '10px 20px', borderRadius: '8px', textDecoration: 'none' }}>
        PROBAR PÁGINA DE IMPORTAR
      </a>
    </div>
  );
}
