import "./globals.css";

export const metadata = {
  title: "Crosti Hub",
  description: "Gestión Smart de Galletas",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="es">
      <body>{children}</body>
    </html>
  );
}
