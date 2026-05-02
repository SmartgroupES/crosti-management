'use client';

import React from 'react';

export default function ConsultaLayout({ children }: { children: React.ReactNode }) {
  return (
    <div style={{ backgroundColor: '#FFFFFF', minHeight: '100vh', fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif' }}>
      <main style={{ padding: '0' }}>
        {children}
      </main>
    </div>
  );
}

