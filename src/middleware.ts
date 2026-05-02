import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;
  const authToken = request.cookies.get('auth_token')?.value;

  // 1. Force UPPERCASE & NO ACCENTS for all UI paths (BakeOS Stability)
  // Normalize path: UpperCase + Remove Accents for server compatibility
  const normalizedPath = pathname
    .toUpperCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "");
    
  if (pathname !== normalizedPath && !pathname.startsWith('/api') && !pathname.includes('.')) {
    return NextResponse.redirect(new URL(normalizedPath, request.url));
  }

  // 2. Paths that don't require authentication (Case insensitive check for /LOGIN)
  if (normalizedPath === '/LOGIN' || pathname.startsWith('/api/auth')) {
    return NextResponse.next();
  }

  // 3. Redirect to login if not authenticated
  if (!authToken) {
    return NextResponse.redirect(new URL('/LOGIN', request.url));
  }

  return NextResponse.next();
}

export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     * - public assets (images, etc)
     */
    '/((?!_next/static|_next/image|favicon.ico|.*\\.jpg|.*\\.png|.*\\.svg|.*\\.webp).*)',
  ],
};
