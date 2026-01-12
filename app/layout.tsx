import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Heavenly AFH - One-Stop Service Portal",
  description: "Easy access to all related links and resources",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}

