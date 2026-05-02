'use client';
import { useEffect } from 'react';
import { useRouter } from 'next/navigation';

export default function RedirectToHub() {
  const router = useRouter();
  useEffect(() => {
    router.replace('/HUB?tab=recetas');
  }, [router]);
  return <div style={{ padding: '60px', textAlign: 'center', fontWeight: '800' }}>REDIRECCIONANDO AL HUB CENTRAL...</div>;
}
