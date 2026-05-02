import { NextResponse } from 'next/server';
import { cookies } from 'next/headers';

export const runtime = 'edge';
export const dynamic = 'force-dynamic';

export async function POST(request: Request) {
  try {
    const { login, password, pin } = await request.json();
    
    // Normalizing login for case-insensitive check
    const normalizedLogin = login?.toUpperCase();

    // SUPERADMIN CREDENTIALS (Traditional & PIN-based)
    const isAdmin1 = normalizedLogin === 'NELSONCARRILLO' && password === '10334346';
    const isAdmin2 = normalizedLogin === 'STEPHANOKOSAK' && password === '04248748406';
    const isVaultAccess = (pin === '1234' || password === '1234'); // Handle quick PIN access

    if (isAdmin1 || isAdmin2 || isVaultAccess) {
      let userDisplay = 'Superadmin';
      if (isAdmin1) userDisplay = 'Nelson Carrillo';
      if (isAdmin2) userDisplay = 'Stephano Kosak';
      if (isVaultAccess) userDisplay = 'Superadmin (Vault)';

      const response = NextResponse.json({ success: true, user: userDisplay });
      
      // Set auth cookie
      response.cookies.set('auth_token', 'session_active_superadmin', {
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax',
        maxAge: 60 * 60 * 24 * 7, // 1 week
        path: '/',
      });

      // Set user cookie for the UI
      response.cookies.set('user_name', userDisplay, {
        httpOnly: false,
        maxAge: 60 * 60 * 24 * 7,
        path: '/',
      });

      return response;
    }

    return NextResponse.json({ success: false, error: 'Credenciales inválidas' }, { status: 401 });
  } catch (error) {
    return NextResponse.json({ success: false, error: 'Error en el servidor' }, { status: 500 });
  }
}

export async function DELETE() {
  const response = NextResponse.json({ success: true });
  response.cookies.delete('auth_token');
  response.cookies.delete('user_name');
  return response;
}
