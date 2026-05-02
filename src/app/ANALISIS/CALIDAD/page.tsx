'use client';

import React, { useState, useEffect, useRef, Suspense } from 'react';
import { 
  Camera, 
  RotateCcw, 
  CheckCircle2, 
  ArrowLeft,
  Zap,
  ShieldCheck,
  AlertTriangle,
  Loader2,
  Package,
  Apple,
  Wind,
  LayoutGrid
} from 'lucide-react';
import { useRouter, useSearchParams } from 'next/navigation';

function QualityAIContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const orderId = searchParams.get('order_id');
  
  const videoRef = useRef<HTMLVideoElement>(null);
  const [step, setStep] = useState<'searching' | 'detecting' | 'analyzing' | 'result'>('searching');
  const [selectedProduct, setSelectedProduct] = useState('Cookies');
  const [analysisResult, setAnalysisResult] = useState<null | {
    presence: number;
    aesthetics: number;
    freshness: number;
    score: number;
    details: string;
    error?: string;
  }>(null);

  const products = [
    { name: 'Cookies', icon: <Package size={18} /> },
    { name: 'Ensaladas', icon: <Apple size={18} /> },
    { name: 'Focaccias', icon: <Wind size={18} /> },
    { name: 'Catering', icon: <LayoutGrid size={18} /> },
  ];

  useEffect(() => {
    const setupCamera = async () => {
      try {
        const constraints = {
          video: { facingMode: 'environment' }
        };
        const stream = await navigator.mediaDevices.getUserMedia(constraints);
        if (videoRef.current) videoRef.current.srcObject = stream;
      } catch (err) {
        console.error("Camera access denied:", err);
      }
    };
    setupCamera();
  }, []);

  useEffect(() => {
    if (step === 'searching') {
      const timer = setTimeout(() => setStep('detecting'), 1500);
      return () => clearTimeout(timer);
    }
  }, [step]);

  const handleCapture = () => {
    setStep('analyzing');
    setTimeout(() => {
      const isError = Math.random() < 0.3; 
      const score = isError ? 2.5 : (4.0 + Math.random()).toFixed(1);
      
      let details = '';
      if (selectedProduct === 'Cookies') {
        details = isError ? 'Diámetro detectado: 8.9cm (Fuera de rango 9.5-10.5cm)' : 'Diámetro detectado: 9.8cm (Óptimo)';
      } else if (selectedProduct === 'Ensaladas') {
        details = isError ? 'Oxidación detectada: 0.35 (Límite 0.20)' : 'Oxidación detectada: 0.05 (Excelente)';
      } else {
        details = isError ? 'Inconsistencia estética detectada' : 'Parámetros de horneado validados';
      }

      setAnalysisResult({
        presence: isError ? 80 : 100,
        aesthetics: isError ? 40 : 95,
        freshness: isError ? 60 : 98,
        score: parseFloat(score as string),
        details: details,
        error: isError ? 'Acción requerida: Producto no apto para vitrina' : undefined
      });
      setStep('result');
    }, 2000);
  };

  const reset = () => {
    setStep('searching');
    setAnalysisResult(null);
  };

  const getGuideColor = () => {
    if (step === 'searching') return 'rgba(255, 255, 255, 0.3)';
    if (step === 'detecting') return '#FF8000'; 
    return '#10B981'; 
  };

  const Indicator = ({ value, label, color }: { value: number; label: string; color: string }) => (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '12px' }}>
      <div style={{ position: 'relative', width: '90px', height: '90px' }}>
        <svg width="90" height="90" viewBox="0 0 100 100">
          <circle cx="50" cy="50" r="45" fill="none" stroke="rgba(255,255,255,0.05)" strokeWidth="4" />
          <circle 
            cx="50" cy="50" r="45" fill="none" stroke={color} strokeWidth="6" 
            strokeDasharray="283" strokeDashoffset={283 - (value / 100) * 283} 
            strokeLinecap="round" style={{ transition: 'all 1.5s ease-out', transform: 'rotate(-90deg)', transformOrigin: '50% 50%' }}
          />
        </svg>
        <div style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', display: 'flex', alignItems: 'center', justifyContent: 'center', fontSize: '18px', fontWeight: '900' }}>
          {value}%
        </div>
      </div>
      <span style={{ fontSize: '10px', fontWeight: '900', color: 'rgba(255,255,255,0.4)', textTransform: 'uppercase', letterSpacing: '2px' }}>{label}</span>
    </div>
  );

  return (
    <div style={{ width: '100vw', height: '100vh', backgroundColor: '#000', overflow: 'hidden', position: 'relative', color: 'white', fontFamily: '"Outfit", sans-serif' }}>
      
      <div style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', zIndex: 1 }}>
        <video ref={videoRef} autoPlay playsInline muted style={{ width: '100%', height: '100%', objectFit: 'cover' }} />
        <div style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', background: 'radial-gradient(circle, transparent 30%, rgba(0,0,0,0.5) 100%)' }} />
      </div>

      <div style={{ position: 'absolute', top: '50%', left: '50%', transform: 'translate(-50%, -50%)', width: '320px', height: '320px', zIndex: 10, transition: 'all 0.4s ease' }}>
        <div style={{ position: 'absolute', top: 0, left: 0, width: '40px', height: '40px', borderTop: `4px solid ${getGuideColor()}`, borderLeft: `4px solid ${getGuideColor()}`, borderRadius: '4px' }} />
        <div style={{ position: 'absolute', top: 0, right: 0, width: '40px', height: '40px', borderTop: `4px solid ${getGuideColor()}`, borderRight: `4px solid ${getGuideColor()}`, borderRadius: '4px' }} />
        <div style={{ position: 'absolute', bottom: 0, left: 0, width: '40px', height: '40px', borderBottom: `4px solid ${getGuideColor()}`, borderLeft: `4px solid ${getGuideColor()}`, borderRadius: '4px' }} />
        <div style={{ position: 'absolute', bottom: 0, right: 0, width: '40px', height: '40px', borderBottom: `4px solid ${getGuideColor()}`, borderRight: `4px solid ${getGuideColor()}`, borderRadius: '4px' }} />
        
        {step === 'detecting' && (
          <div style={{ position: 'absolute', top: '-60px', left: '50%', transform: 'translateX(-50%)', backgroundColor: '#FF8000', padding: '8px 20px', borderRadius: '20px', fontSize: '11px', fontWeight: '900', whiteSpace: 'nowrap', animation: 'pulse 1s infinite' }}>
            SCANNING {selectedProduct.toUpperCase()}...
          </div>
        )}
      </div>

      <div style={{ position: 'absolute', top: '40px', left: '40px', zIndex: 20, display: 'flex', alignItems: 'center', gap: '20px' }}>
        <button onClick={() => router.back()} style={{ background: 'rgba(0,0,0,0.4)', backdropFilter: 'blur(10px)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', padding: '12px', borderRadius: '14px', cursor: 'pointer' }}>
          <ArrowLeft size={20} />
        </button>
        {orderId && (
          <div style={{ background: 'rgba(255,215,0,0.15)', backdropFilter: 'blur(10px)', border: '1px solid #FFD700', color: '#FFD700', padding: '10px 20px', borderRadius: '14px', fontSize: '11px', fontWeight: '900' }}>
            REF: {orderId}
          </div>
        )}
      </div>

      <div style={{ position: 'absolute', top: '40px', right: '40px', zIndex: 20, display: 'flex', gap: '12px' }}>
        <div style={{ background: 'rgba(0,0,0,0.4)', backdropFilter: 'blur(10px)', border: '1px solid rgba(255,255,255,0.1)', color: '#FF8000', padding: '10px 20px', borderRadius: '14px', fontSize: '10px', fontWeight: '900', display: 'flex', alignItems: 'center', gap: '8px' }}>
          <Zap size={14} /> LIDAR_CALIBRATED
        </div>
      </div>

      {step !== 'result' && step !== 'analyzing' && (
        <div style={{ position: 'absolute', bottom: '40px', width: '100%', zIndex: 20, display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '40px' }}>
          <div style={{ display: 'flex', gap: '12px', overflowX: 'auto', padding: '0 20px', width: '100%', justifyContent: 'center' }}>
            {products.map(p => (
              <button key={p.name} onClick={() => setSelectedProduct(p.name)} style={{ flex: '0 0 auto', padding: '16px 24px', borderRadius: '20px', backgroundColor: selectedProduct === p.name ? 'rgba(255, 128, 0, 0.3)' : 'rgba(0,0,0,0.5)', backdropFilter: 'blur(20px)', border: `1px solid ${selectedProduct === p.name ? '#FF8000' : 'rgba(255,255,255,0.1)'}`, color: 'white', fontSize: '12px', fontWeight: '800', display: 'flex', alignItems: 'center', gap: '10px', transition: 'all 0.3s' }}>
                {p.icon} {p.name}
              </button>
            ))}
          </div>
          
          <button onClick={handleCapture} style={{ width: '84px', height: '84px', borderRadius: '50%', backgroundColor: '#FF8000', border: '10px solid rgba(255,255,255,0.2)', cursor: 'pointer', boxShadow: '0 0 40px rgba(255, 128, 0, 0.4)', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <div style={{ width: '20px', height: '20px', borderRadius: '50%', backgroundColor: 'white' }} />
          </button>
        </div>
      )}

      <div style={{ position: 'absolute', bottom: 0, left: 0, width: '100%', height: '80%', backgroundColor: 'rgba(30, 5, 5, 0.95)', backdropFilter: 'blur(60px)', borderTop: '1px solid rgba(255,255,255,0.1)', borderRadius: '40px 40px 0 0', transform: step === 'result' ? 'translateY(0)' : 'translateY(100%)', transition: 'transform 0.7s cubic-bezier(0.16, 1, 0.3, 1)', zIndex: 100, padding: '40px' }}>
        <div style={{ width: '40px', height: '4px', backgroundColor: 'rgba(255,255,255,0.1)', borderRadius: '2px', margin: '0 auto 40px auto' }} />

        {analysisResult && (
          <div style={{ maxWidth: '800px', margin: '0 auto' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '60px' }}>
              <div>
                <h2 style={{ fontSize: '36px', fontWeight: '900', margin: 0, color: '#FFD700' }}>{analysisResult.score >= 3 ? 'CALIDAD VALIDADA' : 'RECHAZO IA'}</h2>
                <div style={{ fontSize: '12px', color: 'rgba(255,255,255,0.3)', marginTop: '8px', letterSpacing: '2px' }}>AUDITORÍA DE {selectedProduct.toUpperCase()}</div>
              </div>
              
              <div style={{ textAlign: 'center' }}>
                <div style={{ fontSize: '72px', fontWeight: '900', color: analysisResult.score < 3 ? '#EF4444' : '#10B981', lineHeight: 0.8 }}>
                  {analysisResult.score}
                </div>
                <div style={{ fontSize: '10px', fontWeight: '900', opacity: 0.4, marginTop: '16px', letterSpacing: '1px' }}>BakeOS Score</div>
              </div>
            </div>

            <div style={{ display: 'flex', justifyContent: 'space-around', marginBottom: '60px' }}>
              <Indicator value={analysisResult.presence} label="Presencia" color="#10B981" />
              <Indicator value={analysisResult.aesthetics} label="Estética" color={analysisResult.aesthetics < 50 ? '#EF4444' : '#FF8000'} />
              <Indicator value={analysisResult.freshness} label="Frescura" color="#FF8000" />
            </div>

            <div style={{ backgroundColor: analysisResult.score < 3 ? 'rgba(239, 68, 68, 0.1)' : 'rgba(16, 185, 129, 0.1)', border: `1px solid ${analysisResult.score < 3 ? 'rgba(239, 68, 68, 0.2)' : 'rgba(16, 185, 129, 0.2)'}`, padding: '24px', borderRadius: '20px', marginBottom: '60px', display: 'flex', alignItems: 'center', gap: '16px' }}>
              {analysisResult.score < 3 ? <AlertTriangle color="#EF4444" size={24} /> : <ShieldCheck color="#10B981" size={24} />}
              <div>
                <div style={{ fontSize: '10px', fontWeight: '900', color: analysisResult.score < 3 ? '#EF4444' : '#10B981', textTransform: 'uppercase', marginBottom: '4px' }}>
                  {analysisResult.score < 3 ? 'ALERTA DE SEGURIDAD ALIMENTARIA' : 'CUMPLIMIENTO DE ESTÁNDAR'}
                </div>
                <div style={{ fontSize: '16px', fontWeight: '800' }}>{analysisResult.score < 3 ? analysisResult.error : analysisResult.details}</div>
              </div>
            </div>

            <div style={{ display: 'flex', gap: '20px' }}>
              <button onClick={reset} style={{ flex: 1, padding: '22px', borderRadius: '20px', backgroundColor: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.1)', color: 'white', fontWeight: '900', cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '12px' }}>
                <RotateCcw size={18} /> REINTENTAR
              </button>
              <button onClick={() => router.back()} style={{ flex: 2, padding: '22px', borderRadius: '20px', backgroundColor: analysisResult.score < 3 ? '#601010' : '#10B981', border: 'none', color: 'white', fontWeight: '900', cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '12px' }}>
                <CheckCircle2 size={18} /> {analysisResult.score < 3 ? 'NOTIFICAR INCIDENCIA' : 'SUBIR A VITRINA'}
              </button>
            </div>
          </div>
        )}
      </div>

      {step === 'analyzing' && (
        <div style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.85)', zIndex: 150, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: '24px' }}>
          <Loader2 className="animate-spin" size={48} color="#FF8000" />
          <div style={{ fontSize: '14px', fontWeight: '900', letterSpacing: '4px', textTransform: 'uppercase', color: '#FF8000' }}>Ejecutando Visión Artificial...</div>
        </div>
      )}

      <style jsx global>{`
        @keyframes pulse {
          0% { opacity: 0.5; }
          50% { opacity: 1; }
          100% { opacity: 0.5; }
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

export default function QualityAIModule() {
  return (
    <Suspense fallback={
      <div style={{ width: '100vw', height: '100vh', backgroundColor: '#000', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <Loader2 className="animate-spin" size={48} color="#FF8000" />
      </div>
    }>
      <QualityAIContent />
    </Suspense>
  );
}
