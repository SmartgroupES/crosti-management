-- 1. Limpieza de tablas operativas
DELETE FROM sales;
DELETE FROM sales_data;

-- 2. Ventas de los últimos 90 días (Simplificado para D1)
-- Simularemos ventas diarias promedio de 1500€
-- Generamos una base de productos para hoy
INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES 
('2026-05-01 10:00:00', 'CRUASÁN DE MANTEQUILLA', 45, 112.50, 'POBLENOU'),
('2026-05-01 11:30:00', 'COOKIE CHIPS CLÁSICA', 80, 240.00, 'POBLENOU'),
('2026-05-01 12:45:00', 'NAPOLITANA DE CHOCOLATE', 30, 96.00, 'POBLENOU'),
('2026-05-01 14:00:00', 'COOKIE RED VELVET', 55, 176.00, 'POBLENOU'),
('2026-05-01 16:20:00', 'PALMERA DE CHOCOLATE', 40, 140.00, 'POBLENOU'),
-- Datos de ayer (para promedios)
('2026-04-30 10:00:00', 'CRUASÁN DE MANTEQUILLA', 50, 125.00, 'POBLENOU'),
('2026-04-30 11:30:00', 'COOKIE CHIPS CLÁSICA', 90, 270.00, 'POBLENOU'),
-- Datos de la semana pasada (mismo día)
('2026-04-24 10:00:00', 'CRUASÁN DE MANTEQUILLA', 48, 120.00, 'POBLENOU'),
('2026-04-24 11:30:00', 'COOKIE CHIPS CLÁSICA', 85, 255.00, 'POBLENOU');

-- 3. Sincronizar sales_data (Analítica)
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour)
SELECT date(sale_date), product_name, quantity, total_amount, strftime('%H', sale_date) FROM sales;

-- 4. Costos Fijos Reales (Poblenou)
DELETE FROM fixed_costs;
INSERT INTO fixed_costs (name, amount, category) VALUES
('ALQUILER LOCAL POBLENOU', 2200.00, 'ESTRUCTURA'),
('SUMINISTROS (LUZ/AGUA)', 850.00, 'VARIABLE_FIJA'),
('PLANTILLA (4 PERSONAS)', 6800.00, 'PERSONAL'),
('MARKETING DIGITAL', 450.00, 'OPEX');

-- 5. Insumos con Precios de Mercado
DELETE FROM raw_materials;
INSERT INTO raw_materials (name, current_price, unit) VALUES
('HARINA TRIGO PRO', 1.25, 'KG'),
('MANTEQUILLA ARTESANAL', 8.40, 'KG'),
('CHOCOLATE 70%', 12.50, 'KG'),
('AZÚCAR MORENO', 0.95, 'KG'),
('HUEVOS CAMPEROS', 0.22, 'UD');
