/**
 * BakeOS Anonymization & Multi-Tenancy Utility
 * This module ensures that sensitive brand data (Product Names, specific formulas)
 * is anonymized when viewed in the Global SaaS context.
 */

export const TenantAnonymizer = {
    /**
     * Replaces sensitive product names with generic identifiers.
     * Use this for global benchmarking or public-facing SaaS reports.
     */
    anonymizeProduct(productName: string, family: string): string {
        const familyMap: Record<string, string> = {
            'Cookies': 'BAKED_GOOD_TYPE_01',
            'Bollería': 'BAKED_GOOD_TYPE_02',
            'Salados': 'SAVORY_ITEM_TYPE_01',
            'Ensaladas': 'FRESH_ITEM_TYPE_01'
        };

        const prefix = familyMap[family] || 'ITEM';
        // Simple hash or ID generator based on name length and chars
        const hash = productName.split('').reduce((acc, char) => acc + char.charCodeAt(0), 0);
        return `${prefix}_${hash.toString(16).toUpperCase()}`;
    },

    /**
     * Filters any database result by the current tenant_id.
     * Essential for SaaS multi-tenancy isolation.
     */
    tenantFilter(tenantId: string) {
        return `WHERE tenant_id = '${tenantId}'`;
    },

    /**
     * Generates a unique Tenant ID from a brand name.
     */
    generateTenantId(name: string): string {
        return name.toLowerCase().replace(/\s+/g, '_').substring(0, 20);
    }
};
