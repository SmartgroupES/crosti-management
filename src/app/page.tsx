export const runtime = 'edge';
import { ShoppingBag, TrendingUp, Package, UploadCloud } from 'lucide-react';
import Link from 'next/link';

export default function Dashboard() {
  return (
    <div className="p-8 bg-[#FDF5E6] min-h-screen font-sans text-[#3E2723]">
      <header className="mb-10 flex justify-between items-center">
        <h1 className="text-4xl font-bold">Crosti Hub <span className="text-sm font-normal bg-amber-200 px-3 py-1 rounded-full text-amber-900 ml-2">Madrid-BCN</span></h1>
        <Link href="/admin/importar" className="flex items-center bg-[#3E2723] text-white px-6 py-3 rounded-full font-bold hover:bg-black transition-all text-sm md:text-base">
          <UploadCloud className="mr-2" size={20} /> Subir Excel
        </Link>
      </header>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div className="bg-white p-8 rounded-3xl shadow-sm border-b-8 border-amber-400">
          <ShoppingBag className="text-amber-700 mb-4" size={32} />
          <p className="text-gray-500 uppercase text-xs font-bold tracking-widest text-[10px]">Ventas Hoy</p>
          <p className="text-4xl font-black italic">0.00€</p>
        </div>
        <div className="bg-white p-8 rounded-3xl shadow-sm border-b-8 border-green-400">
          <TrendingUp className="text-green-700 mb-4" size={32} />
          <p className="text-gray-500 uppercase text-xs font-bold tracking-widest text-[10px]">Margen Bruto</p>
          <p className="text-4xl font-black italic">0%</p>
        </div>
        <div className="bg-white p-8 rounded-3xl shadow-sm border-b-8 border-red-400">
          <Package className="text-red-700 mb-4" size={32} />
          <p className="text-gray-500 uppercase text-xs font-bold tracking-widest text-[10px]">Stock Crítico</p>
          <p className="text-4xl font-black italic text-2xl md:text-4xl">S/D</p>
        </div>
      </div>
      <div className="mt-12 bg-white p-10 rounded-[40px] border border-amber-100 shadow-inner text-center">
        <h2 className="text-2xl font-bold mb-4 italic">📊 Actividad Reciente</h2>
        <p className="text-gray-400 font-medium text-lg">Esperando carga de datos desde Barcelona...</p>
      </div>
    </div>
  );
}
