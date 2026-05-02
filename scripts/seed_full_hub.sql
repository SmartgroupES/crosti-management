-- Desactivar temporalmente para limpieza profunda (si fuera posible en D1, pero usaremos orden manual)
-- 1. Borrar dependencias primero
DELETE FROM recipe_ingredients;
DELETE FROM recipes;
DELETE FROM raw_materials;
DELETE FROM fixed_costs;
DELETE FROM sales;
DELETE FROM sales_data;

-- 2. Insumos
INSERT INTO raw_materials (name, current_price, unit) VALUES
('HARINA DE TRIGO ESPECIAL', 0.95, 'KG'),
('MANTEQUILLA DE SORIA', 9.20, 'KG'),
('CHOCOLATE BELGA 70%', 13.50, 'KG'),
('AZÚCAR BLANCO', 0.85, 'KG'),
('HUEVOS CAMPEROS L', 0.24, 'UD'),
('LECHE ENTERA', 0.90, 'L'),
('LEVADURA FRESCA', 4.50, 'KG');

-- 3. Recetas (Escandallos)
INSERT INTO recipes (name, description, base_unit, cost_per_unit) VALUES
('CRUASÁN CLÁSICO', 'Receta tradicional con 24 capas de mantequilla.', 'UD', 0.45),
('COOKIE DOBLE CHOCO', 'Masa de cacao con trozos de chocolate belga.', 'UD', 0.65),
('NAPOLITANA CREMA', 'Hojaldre relleno de crema pastelera artesana.', 'UD', 0.52),
('PALMERA DE CHOCOLATE', 'Hojaldre caramelizado bañado en chocolate.', 'UD', 0.75);

-- 4. Costos Fijos
INSERT INTO fixed_costs (name, amount, category) VALUES
('ALQUILER LOCAL POBLENOU', 2400.00, 'LOCAL'),
('NÓMINAS EQUIPO (X4)', 7200.00, 'PERSONAL'),
('ELECTRICIDAD Y AGUA', 950.00, 'SUMINISTROS'),
('SEGUROS Y TASAS', 120.00, 'ADMINISTRATIVO');

-- 5. Ventas Recientes
INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES 
(date('now'), 'CRUASÁN CLÁSICO', 120, 300.00, 'POBLENOU'),
(date('now'), 'COOKIE DOBLE CHOCO', 85, 255.00, 'POBLENOU'),
(date('now'), 'NAPOLITANA CREMA', 60, 180.00, 'POBLENOU'),
(date('now', '-1 day'), 'CRUASÁN CLÁSICO', 140, 350.00, 'POBLENOU'),
(date('now', '-1 day'), 'COOKIE DOBLE CHOCO', 100, 300.00, 'POBLENOU');

-- 6. Sincronizar analítica
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour)
SELECT date(sale_date), product_name, quantity, total_amount, strftime('%H', sale_date) FROM sales;
