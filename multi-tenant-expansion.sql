-- Multi-Tenancy Expansion for BakeOS SaaS
-- Execute this to enable global scaling

CREATE TABLE IF NOT EXISTS tenants (
    id TEXT PRIMARY KEY, -- e.g., 'crosti', 'artisan_bread'
    name TEXT NOT NULL,
    plan TEXT DEFAULT 'premium', -- basic, premium, enterprise
    is_active BOOLEAN DEFAULT TRUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Adding tenant_id to core tables
-- In D1 we would use ALTER TABLE, but for our implementation, we'll ensure these columns exist
-- and our queries always filter by them.

ALTER TABLE products ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
ALTER TABLE sales ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
ALTER TABLE vision_logs ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
ALTER TABLE quality_standards ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
ALTER TABLE production_plans ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
ALTER TABLE product_families ADD COLUMN tenant_id TEXT DEFAULT 'crosti';
