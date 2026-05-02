'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { Globe, LogOut, User, ChevronDown, MapPin } from 'lucide-react';

export default function Header() {
  const router = useRouter();
  const [lang, setLang] = useState('ES');
  const [showLangMenu, setShowLangMenu] = useState(false);
  const [userName, setUserName] = useState('Usuario');

  useEffect(() => {
    const name = document.cookie
      .split('; ')
      .find(row => row.startsWith('user_name='))
      ?.split('=')[1];
    if (name) setUserName(decodeURIComponent(name));

    // Initialize language from localStorage
    const savedLang = localStorage.getItem('crosti_lang');
    if (savedLang) setLang(savedLang);
  }, []);

  const handleLanguageChange = (newLang: string) => {
    setLang(newLang);
    localStorage.setItem('crosti_lang', newLang);
    window.dispatchEvent(new Event('languageChanged'));
    setShowLangMenu(false);
  };

  const handleLogout = async () => {
    await fetch('/api/auth/login', { method: 'DELETE' });
    router.push('/LOGIN');
  };

  return (
    <header style={{
      width: '96%',
      margin: '16px 2%',
      padding: '12px 24px',
      display: 'flex',
      justifyContent: 'space-between',
      alignItems: 'center',
      position: 'fixed',
      top: 0,
      left: 0,
      zIndex: 1000,
      borderRadius: '16px',
      backgroundColor: 'rgba(254, 253, 251, 0.85)', 
      backdropFilter: 'blur(20px)',
      WebkitBackdropFilter: 'blur(20px)',
      border: '1px solid rgba(0, 0, 0, 0.05)',
      boxShadow: '0 8px 32px rgba(0,0,0,0.04)'
    }}>
      {/* Left: Crosti Logo & Title */}
      <Link 
        href="/"
        style={{ 
          display: 'flex', 
          alignItems: 'center', 
          gap: '12px', 
          cursor: 'pointer',
          textDecoration: 'none'
        }}
      >
        <img 
          src="/logo-crosti.jpg" 
          alt="Crosti Logo" 
          style={{ 
            height: '40px', 
            borderRadius: '8px'
          }} 
        />
        <div style={{ display: 'flex', flexDirection: 'column' }}>
          <span style={{ 
            fontSize: '16px', 
            fontWeight: '900', 
            color: '#2D2926',
            letterSpacing: '0.5px'
          }}>
            CROSTI COOKIES
          </span>
          <span style={{ 
            fontSize: '9px', 
            fontWeight: '600', 
            color: 'rgba(0,0,0,0.5)',
            textTransform: 'uppercase',
            letterSpacing: '1px'
          }}>
            v118 | 26-05-01 | 18:40
          </span>
        </div>
      </Link>

      {/* Right: Actions & Profile */}
      <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
        {/* Language */}
        <div style={{ position: 'relative' }}>
          <button 
            onClick={() => setShowLangMenu(!showLangMenu)}
            style={{
              background: 'none',
              border: 'none',
              color: '#2D2926',
              fontSize: '12px',
              fontWeight: '700',
              display: 'flex',
              alignItems: 'center',
              gap: '6px',
              cursor: 'pointer'
            }}
          >
            <Globe size={16} />
            {lang}
            <ChevronDown size={12} />
          </button>
          
          {showLangMenu && (
            <div style={{
              position: 'absolute',
              top: '40px',
              right: 0,
              backgroundColor: '#1A1A1A',
              borderRadius: '8px',
              overflow: 'hidden',
              minWidth: '100px',
              border: '1px solid rgba(255,255,255,0.1)'
            }}>
              {['ES', 'EN'].map((l) => (
                <div 
                  key={l}
                  onClick={() => handleLanguageChange(l)}
                  style={{ 
                    padding: '10px 16px', 
                    color: 'white', 
                    fontSize: '12px', 
                    cursor: 'pointer' 
                  }}
                >
                  {l === 'ES' ? 'ESPAÑOL' : 'ENGLISH'}
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Profile */}
        <div 
          onMouseDown={() => {
            const timer = setTimeout(() => {
              router.push('/admin/hidden');
            }, 3000);
            (window as any)._adminTimer = timer;
          }}
          onMouseUp={() => {
            clearTimeout((window as any)._adminTimer);
          }}
          onMouseLeave={() => {
            clearTimeout((window as any)._adminTimer);
          }}
          onTouchStart={() => {
            const timer = setTimeout(() => {
              router.push('/admin/hidden');
            }, 3000);
            (window as any)._adminTimer = timer;
          }}
          onTouchEnd={() => {
            clearTimeout((window as any)._adminTimer);
          }}
          style={{ 
            display: 'flex', 
            alignItems: 'center', 
            gap: '10px',
            paddingLeft: '16px',
            borderLeft: '1px solid rgba(255,255,255,0.1)',
            cursor: 'help'
          }}
        >
          <div style={{ textAlign: 'right' }}>
            <div style={{ fontSize: '12px', fontWeight: '800', color: '#2D2926', textTransform: 'uppercase' }}>{userName}</div>
            <div style={{ fontSize: '9px', fontWeight: '600', color: 'rgba(0,0,0,0.4)', textTransform: 'uppercase' }}>SUPERADMIN</div>
          </div>
          <div style={{
            width: '32px',
            height: '32px',
            borderRadius: '8px',
            backgroundColor: 'rgba(0,0,0,0.05)',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center'
          }}>
            <User size={18} color="#2D2926" />
          </div>
        </div>

        {/* Logout Button */}
        <button 
          onClick={handleLogout}
          style={{ 
            background: 'rgba(239, 68, 68, 0.15)', 
            border: '1px solid rgba(239, 68, 68, 0.3)', 
            color: '#EF4444', 
            padding: '8px',
            borderRadius: '8px',
            cursor: 'pointer',
            display: 'flex'
          }}
          title="Cerrar Sesión"
        >
          <LogOut size={16} />
        </button>
      </div>
    </header>
  );
}
