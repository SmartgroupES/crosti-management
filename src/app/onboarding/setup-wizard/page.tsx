'use client';

import React, { useState } from 'react';
import { Camera, Sparkles, CheckCircle2, ChevronRight, Loader2, ArrowLeft, UploadCloud } from 'lucide-react';
import Link from 'next/link';

export default function OnboardingWizard() {
  const [step, setStep] = useState(1);
  const [loading, setLoading] = useState(false);
  const [productName, setProductName] = useState('');
  const [category, setCategory] = useState('Cookies');
  const [images, setImages] = useState<string[]>([]);
  const [result, setResult] = useState<any>(null);

  const handleFileUpload = (e: React.ChangeEvent<HTMLInputElement>) => {
    const files = Array.from(e.target.files || []);
    files.forEach(file => {
      const reader = new FileReader();
      reader.onloadend = () => {
        setImages(prev => [...prev, reader.result as string]);
      };
      reader.readAsDataURL(file);
    });
  };

  const handleTrain = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/onboarding/train-standards', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ productName, category, images })
      });
      const data = await res.json();
      setResult(data);
      setStep(3);
    } catch (e) {
      alert("Error en el entrenamiento. Revisa la consola.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{ backgroundColor: '#0A0A0A', minHeight: '100vh', color: 'white', fontFamily: 'Inter, system-ui, sans-serif', display: 'flex', flexDirection: 'column' }}>
      
      {/* Background Gradient */}
      <div style={{ position: 'fixed', top: 0, left: 0, right: 0, bottom: 0, background: 'radial-gradient(circle at 50% 0%, #1E1E1E 0%, #0A0A0A 100%)', zIndex: 0 }}></div>

      {/* Header */}
      <header style={{ position: 'relative', zIndex: 10, padding: '30px 50px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
          <div style={{ backgroundColor: '#801515', width: '32px', height: '32px', borderRadius: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: '900', fontSize: '18px' }}>B</div>
          <span style={{ fontWeight: '800', letterSpacing: '-0.5px' }}>BAKEOS <span style={{ color: '#801515' }}>ONBOARDING</span></span>
        </div>
        <Link href="/" style={{ color: '#666', fontSize: '13px', textDecoration: 'none', fontWeight: '600' }}>Salir del Setup</Link>
      </header>

      <main style={{ position: 'relative', zIndex: 10, flex: 1, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '50px' }}>
        
        <div style={{ maxWidth: '600px', width: '100%' }}>
          
          {/* Progress Bar */}
          <div style={{ display: 'flex', gap: '8px', marginBottom: '40px' }}>
            {[1, 2, 3].map(i => (
              <div key={i} style={{ flex: 1, height: '4px', borderRadius: '2px', backgroundColor: step >= i ? '#801515' : '#262626', transition: 'all 0.5s ease' }}></div>
            ))}
          </div>

          {step === 1 && (
            <div style={{ animation: 'fadeIn 0.5s ease' }}>
              <h1 style={{ fontSize: '42px', fontWeight: '900', marginBottom: '15px', letterSpacing: '-1px' }}>Hagamos que BakeOS aprenda tu arte.</h1>
              <p style={{ color: '#94A3B8', fontSize: '18px', marginBottom: '40px', lineHeight: '1.6' }}>Para empezar, dinos qué producto quieres automatizar hoy. BakeOS creará un estándar único para tu marca.</p>
              
              <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
                <div>
                  <label style={{ display: 'block', fontSize: '12px', fontWeight: 'bold', color: '#475569', textTransform: 'uppercase', marginBottom: '10px' }}>Nombre del Producto</label>
                  <input 
                    type="text" 
                    placeholder="Ej. Croissant de Mantequilla"
                    value={productName}
                    onChange={(e) => setProductName(e.target.value)}
                    style={{ width: '100%', backgroundColor: '#171717', border: '1px solid #262626', padding: '15px 20px', borderRadius: '15px', color: 'white', fontSize: '16px' }}
                  />
                </div>
                <div>
                  <label style={{ display: 'block', fontSize: '12px', fontWeight: 'bold', color: '#475569', textTransform: 'uppercase', marginBottom: '10px' }}>Categoría</label>
                  <select 
                    value={category}
                    onChange={(e) => setCategory(e.target.value)}
                    style={{ width: '100%', backgroundColor: '#171717', border: '1px solid #262626', padding: '15px 20px', borderRadius: '15px', color: 'white', fontSize: '16px' }}
                  >
                    <option>Cookies</option>
                    <option>Bollería</option>
                    <option>Salados</option>
                    <option>Panes</option>
                  </select>
                </div>
              </div>

              <button 
                onClick={() => setStep(2)}
                disabled={!productName}
                style={{ marginTop: '40px', width: '100%', backgroundColor: '#801515', color: 'white', border: 'none', padding: '18px', borderRadius: '15px', fontSize: '16px', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px', opacity: productName ? 1 : 0.5 }}
              >
                Continuar <ChevronRight size={20} />
              </button>
            </div>
          )}

          {step === 2 && (
            <div style={{ animation: 'fadeIn 0.5s ease' }}>
              <h1 style={{ fontSize: '42px', fontWeight: '900', marginBottom: '15px', letterSpacing: '-1px' }}>Sube tu "Gold Standard".</h1>
              <p style={{ color: '#94A3B8', fontSize: '18px', marginBottom: '40px', lineHeight: '1.6' }}>Sube 3-5 fotos de tus mejores unidades. BakeOS analizará el color, tamaño y acabado para crear el estándar.</p>
              
              <div 
                onClick={() => document.getElementById('gold-upload')?.click()}
                style={{ border: '2px dashed #262626', borderRadius: '30px', padding: '60px 40px', textAlign: 'center', cursor: 'pointer', transition: 'all 0.3s ease', backgroundColor: 'rgba(255,255,255,0.02)' }}
                onMouseOver={(e) => e.currentTarget.style.borderColor = '#801515'}
                onMouseOut={(e) => e.currentTarget.style.borderColor = '#262626'}
              >
                <input type="file" id="gold-upload" multiple hidden onChange={handleFileUpload} />
                <UploadCloud size={48} color="#801515" style={{ marginBottom: '20px' }} />
                <p style={{ margin: 0, fontWeight: 'bold', fontSize: '18px' }}>Sueltas tus fotos aquí</p>
                <p style={{ margin: '5px 0 0 0', color: '#666', fontSize: '14px' }}>PNG, JPG de alta resolución</p>
              </div>

              {images.length > 0 && (
                <div style={{ display: 'flex', gap: '10px', marginTop: '20px', overflowX: 'auto', paddingBottom: '10px' }}>
                  {images.map((img, i) => (
                    <img key={i} src={img} style={{ width: '80px', height: '80px', borderRadius: '12px', objectFit: 'cover', border: '2px solid #801515' }} />
                  ))}
                </div>
              )}

              <div style={{ display: 'flex', gap: '15px', marginTop: '40px' }}>
                <button onClick={() => setStep(1)} style={{ flex: 1, backgroundColor: 'transparent', color: '#666', border: '1px solid #262626', padding: '18px', borderRadius: '15px', fontSize: '16px', fontWeight: 'bold', cursor: 'pointer' }}>Atrás</button>
                <button 
                  onClick={handleTrain}
                  disabled={images.length < 2 || loading}
                  style={{ flex: 2, backgroundColor: '#801515', color: 'white', border: 'none', padding: '18px', borderRadius: '15px', fontSize: '16px', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px', opacity: images.length >= 2 ? 1 : 0.5 }}
                >
                  {loading ? <><Loader2 className="animate-spin" /> Analizando Estándar...</> : <><Sparkles size={20} /> Entrenar BakeOS IA</>}
                </button>
              </div>
            </div>
          )}

          {step === 3 && result && (
            <div style={{ animation: 'fadeIn 0.5s ease', textAlign: 'center' }}>
              <div style={{ width: '80px', height: '80px', backgroundColor: '#166534', borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 30px auto', color: '#22C55E' }}>
                <CheckCircle2 size={48} />
              </div>
              <h1 style={{ fontSize: '42px', fontWeight: '900', marginBottom: '15px', letterSpacing: '-1px' }}>¡Estándar Aprendido!</h1>
              <p style={{ color: '#94A3B8', fontSize: '18px', marginBottom: '40px', lineHeight: '1.6' }}>BakeOS ya sabe qué buscar en tu <strong>{productName}</strong>. Aquí tienes el ADN de tu producto:</p>
              
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '15px', textAlign: 'left', marginBottom: '40px' }}>
                <div style={{ backgroundColor: '#171717', padding: '20px', borderRadius: '20px', border: '1px solid #262626' }}>
                  <p style={{ margin: 0, fontSize: '11px', color: '#666', fontWeight: 'bold', textTransform: 'uppercase' }}>Punto de Tueste (Maillard)</p>
                  <p style={{ margin: '5px 0 0 0', fontSize: '24px', fontWeight: '900' }}>{result.standards.maillard_target}<span style={{ fontSize: '14px', color: '#444' }}>/5</span></p>
                </div>
                <div style={{ backgroundColor: '#171717', padding: '20px', borderRadius: '20px', border: '1px solid #262626' }}>
                  <p style={{ margin: 0, fontSize: '11px', color: '#666', fontWeight: 'bold', textTransform: 'uppercase' }}>Tamaño Sugerido</p>
                  <p style={{ margin: '5px 0 0 0', fontSize: '24px', fontWeight: '900' }}>{result.standards.min_diameter}-{result.standards.max_diameter}<span style={{ fontSize: '14px', color: '#444' }}>cm</span></p>
                </div>
              </div>

              <Link href="/ANALISIS/calidad" style={{ display: 'block', backgroundColor: 'white', color: 'black', textDecoration: 'none', padding: '18px', borderRadius: '15px', fontSize: '16px', fontWeight: 'bold' }}>
                Ir al Dashboard de Calidad
              </Link>
            </div>
          )}

        </div>
      </main>

      <style jsx>{`
        @keyframes fadeIn {
          from { opacity: 0; transform: translateY(20px); }
          to { opacity: 1; transform: translateY(0); }
        }
        .animate-spin {
          animation: spin 1s linear infinite;
        }
        @keyframes spin {
          from { transform: rotate(0deg); }
          to { transform: rotate(360deg); }
        }
      `}</style>
    </div>
  );
}
