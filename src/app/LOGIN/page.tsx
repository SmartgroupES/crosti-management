'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { Loader2, Lock, User, Shield } from 'lucide-react';

export default function LoginPage() {
  const router = useRouter();
  const [login, setLogin] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    setIsVisible(true);
  }, []);

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    try {
      const res = await fetch('/api/auth/login', {
        method: 'POST',
        body: JSON.stringify({ login, password }),
        headers: { 'Content-Type': 'application/json' }
      });

      const data = await res.json();
      if (data.success) {
        setIsVisible(false);
        setTimeout(() => {
          router.push('/');
        }, 600);
      } else {
        setError(data.error || 'Acceso denegado');
      }
    } catch (err) {
      setError('Error de conexión con el servidor de seguridad');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{
      backgroundColor: '#EDE8D0', 
      minHeight: '100vh',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      fontFamily: '"Outfit", sans-serif',
      padding: '24px',
      overflow: 'hidden',
      transition: 'opacity 0.8s ease-in-out',
      opacity: isVisible ? 1 : 0
    }}>
      {/* Contenedor Central: Tarjeta de Cristal Claro */}
      <div style={{
        backgroundColor: 'rgba(255, 255, 255, 0.7)', 
        backdropFilter: 'blur(20px)',
        WebkitBackdropFilter: 'blur(20px)',
        width: '100%',
        maxWidth: '440px',
        padding: '60px 48px',
        borderRadius: '40px',
        border: '1px solid rgba(0, 0, 0, 0.05)', 
        boxShadow: '0 30px 60px rgba(0, 0, 0, 0.05)',
        textAlign: 'center',
        position: 'relative',
        transform: isVisible ? 'translateY(0) scale(1)' : 'translateY(20px) scale(0.95)',
        transition: 'all 0.8s cubic-bezier(0.2, 0.8, 0.2, 1)'
      }}>
        {/* Logotipo: Centrado con Sombreado */}
        <div style={{ marginBottom: '48px', position: 'relative' }}>
          <img 
            src="/logo-crosti.jpg" 
            alt="Crosti Logo" 
            style={{ 
              height: '90px', 
              borderRadius: '20px', 
              boxShadow: '0 15px 30px rgba(0,0,0,0.1)',
              display: 'inline-block'
            }} 
          />
        </div>

        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px', marginBottom: '40px' }}>
          <Shield size={20} color="#801515" />
          <h1 style={{ 
            fontSize: '12px', 
            fontWeight: '900', 
            color: 'rgba(0,0,0,0.4)', 
            letterSpacing: '5px',
            textTransform: 'uppercase',
            margin: 0
          }}>
            ALTA SEGURIDAD
          </h1>
        </div>

        <form onSubmit={handleLogin} style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
          <div style={{ position: 'relative' }}>
            <User size={18} style={{ position: 'absolute', left: '20px', top: '50%', transform: 'translateY(-50%)', color: 'rgba(0,0,0,0.3)' }} />
            <input
              type="text"
              placeholder="USUARIO"
              value={login}
              onChange={(e) => setLogin(e.target.value.toUpperCase())}
              required
              style={{
                width: '100%',
                padding: '20px 20px 20px 58px',
                fontSize: '13px',
                borderRadius: '16px',
                border: '1px solid rgba(0,0,0,0.05)',
                backgroundColor: 'white',
                color: '#2D2926',
                outline: 'none',
                transition: 'all 0.3s',
                letterSpacing: '1.5px',
                fontWeight: '600',
                textTransform: 'uppercase'
              }}
              onFocus={(e) => e.currentTarget.style.borderColor = 'rgba(128,21,21,0.2)'}
              onBlur={(e) => e.currentTarget.style.borderColor = 'rgba(0,0,0,0.05)'}
            />
          </div>

          {/* Campo Contraseña */}
          <div style={{ position: 'relative' }}>
            <Lock size={18} style={{ position: 'absolute', left: '20px', top: '50%', transform: 'translateY(-50%)', color: 'rgba(0,0,0,0.3)' }} />
            <input
              type="password"
              placeholder="CONTRASEÑA"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
              style={{
                width: '100%',
                padding: '20px 20px 20px 58px',
                fontSize: '13px',
                borderRadius: '16px',
                border: '1px solid rgba(0,0,0,0.05)',
                backgroundColor: 'white',
                color: '#2D2926',
                outline: 'none',
                transition: 'all 0.3s',
                letterSpacing: '1.5px',
                fontWeight: '600'
              }}
              onFocus={(e) => e.currentTarget.style.borderColor = 'rgba(128,21,21,0.2)'}
              onBlur={(e) => e.currentTarget.style.borderColor = 'rgba(0,0,0,0.05)'}
            />
          </div>

          {error && (
            <div style={{ 
              color: '#801515', 
              fontSize: '12px', 
              fontWeight: '800', 
              backgroundColor: 'rgba(128, 21, 21, 0.05)', 
              padding: '16px', 
              borderRadius: '16px',
              border: '1px solid rgba(128, 21, 21, 0.1)'
            }}>
              {error}
            </div>
          )}

          {/* Botón de Acción: Rojo Intenso con Glow */}
          <button
            type="submit"
            disabled={loading}
            style={{
              width: '100%',
              padding: '22px',
              fontSize: '14px',
              fontWeight: '900',
              borderRadius: '18px',
              border: 'none',
              backgroundColor: '#801515', 
              color: 'white',
              cursor: loading ? 'not-allowed' : 'pointer',
              transition: 'all 0.3s ease',
              boxShadow: '0 10px 25px rgba(128, 21, 21, 0.2)',
              marginTop: '12px',
              letterSpacing: '3px',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              gap: '12px'
            }}
            onMouseOver={(e) => {
              if (!loading) {
                e.currentTarget.style.backgroundColor = '#A11E26';
                e.currentTarget.style.boxShadow = '0 15px 30px rgba(128, 21, 21, 0.3)';
                e.currentTarget.style.transform = 'translateY(-2px)';
              }
            }}
            onMouseOut={(e) => {
              if (!loading) {
                e.currentTarget.style.backgroundColor = '#801515';
                e.currentTarget.style.boxShadow = '0 10px 25px rgba(128, 21, 21, 0.2)';
                e.currentTarget.style.transform = 'translateY(0)';
              }
            }}
          >
            {loading ? <Loader2 className="animate-spin" size={20} /> : 'ENTRAR AL SISTEMA'}
          </button>
        </form>

        <div style={{ 
          marginTop: '60px', 
          fontSize: '10px', 
          color: 'rgba(0,0,0,0.2)', 
          fontWeight: '800',
          letterSpacing: '3px',
          textTransform: 'uppercase'
        }}>
          &copy; 2026 CROSTI MANAGEMENT
        </div>
      </div>

      <style jsx global>{`
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;800;900&display=swap');
        @keyframes spin {
          from { transform: rotate(0deg); }
          to { transform: rotate(360deg); }
        }
        .animate-spin {
          animation: spin 1s linear infinite;
        }
      `}</style>
    </div>
  );
}
