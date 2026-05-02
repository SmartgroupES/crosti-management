import { NextRequest, NextResponse } from "next/server";

export const runtime = "edge";
export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, context: any) {
  // Simulate Global SaaS Data
  const tenants = [
    {
      id: "tenant_01",
      name: "Crosti Cookies",
      location: "Barcelona, ES",
      status: "active",
      qualityScore: 4.8,
      revenueMonthly: 12500,
      wasteAvoided: 850,
      activeNodes: 3,
      lastAudit: "Hace 5 min"
    },
    {
      id: "tenant_02",
      name: "Artisan Bread Co",
      location: "Madrid, ES",
      status: "active",
      qualityScore: 4.2,
      revenueMonthly: 18400,
      wasteAvoided: 1200,
      activeNodes: 5,
      lastAudit: "Hace 12 min"
    },
    {
      id: "tenant_03",
      name: "Gourmet Pastry",
      location: "Paris, FR",
      status: "onboarding",
      qualityScore: 0,
      revenueMonthly: 0,
      wasteAvoided: 0,
      activeNodes: 1,
      lastAudit: "En configuración"
    }
  ];

  const globalMetrics = {
    totalARR: tenants.reduce((acc, t) => acc + t.revenueMonthly, 0) * 12,
    totalWasteAvoided: tenants.reduce((acc, t) => acc + t.wasteAvoided, 0),
    activeAIInstances: tenants.reduce((acc, t) => acc + t.activeNodes, 0),
    uptime: "99.99%"
  };

  return NextResponse.json({ tenants, globalMetrics });
}
