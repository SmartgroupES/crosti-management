'use client';

import React from 'react';
import Header from './Header';
import { ChevronLeft } from 'lucide-react';
import { useRouter } from 'next/navigation';

interface SubPageLayoutProps {
  children: React.ReactNode;
  title: string;
  subtitle?: string;
}

export default function SubPageLayout({ children, title, subtitle }: SubPageLayoutProps) {
  const router = useRouter();

  return (
    <div className="page-transition-enter" style={{ 
      minHeight: '100vh', 
      width: '100%',
      padding: '140px 4% 60px 4%',
      display: 'flex',
      flexDirection: 'column',
      backgroundColor: '#EDE8D0', 
      position: 'relative',
      color: '#2D2926'
    }}>
      <Header />

      <div style={{ maxWidth: '1500px', margin: '0 auto', width: '100%' }}>
        {/* Back Bar */}
        <div 
          onClick={() => router.push('/')}
          className="back-bar"
        >
          <div className="back-bar-icon">
            <ChevronLeft size={20} />
          </div>
          <div style={{ display: 'flex', flexDirection: 'column' }}>
            <span style={{ fontSize: '12px', fontWeight: '800', opacity: 0.6, letterSpacing: '1px', textTransform: 'uppercase' }}>VOLVER</span>
            <span style={{ fontSize: '18px', fontWeight: '900', textTransform: 'uppercase' }}>{title}</span>
          </div>
        </div>

        {/* Content Area */}
        <div style={{ marginTop: '24px' }}>
          {children}
        </div>
      </div>
    </div>
  );
}
