
-- 1. DISABLE CONSTRAINTS FOR CLEANUP
PRAGMA foreign_keys = OFF;

-- 2. CLEANUP
DELETE FROM sales_data;
DELETE FROM recipes;
DELETE FROM raw_materials;
DELETE FROM products;
DELETE FROM product_families;
DELETE FROM fixed_costs;

-- 3. FAMILIES
INSERT INTO product_families (id, name, description) VALUES (1, 'COOKIES CLÁSICAS', 'GALLETAS DE 100G TRADICIONALES');
INSERT INTO product_families (id, name, description) VALUES (2, 'COOKIES RELLENAS', 'GALLETAS GOURMET CON RELLENO FLUIDO');

-- 4. RAW MATERIALS
INSERT INTO raw_materials (id, name, unit_measure, average_cost_per_unit, current_stock) VALUES (1, 'HARINA DE TRIGO', 'KG', 1.20, 500);
INSERT INTO raw_materials (id, name, unit_measure, average_cost_per_unit, current_stock) VALUES (2, 'CHOCOLATE NEGRO 54%', 'KG', 12.50, 100);
INSERT INTO raw_materials (id, name, unit_measure, average_cost_per_unit, current_stock) VALUES (3, 'MANTEQUILLA SIN SAL', 'KG', 8.90, 200);
INSERT INTO raw_materials (id, name, unit_measure, average_cost_per_unit, current_stock) VALUES (4, 'AZÚCAR MORENO', 'KG', 1.80, 150);
INSERT INTO raw_materials (id, name, unit_measure, average_cost_per_unit, current_stock) VALUES (5, 'HUEVOS L', 'UD', 0.15, 600);

-- 5. PRODUCTS
INSERT INTO products (id, family_id, name, sale_price, target_margin) VALUES (1, 1, 'COOKIE CHIPS CLÁSICA', 2.50, 0.70);
INSERT INTO products (id, family_id, name, sale_price, target_margin) VALUES (2, 1, 'COOKIE DOBLE CHOCOLATE', 2.90, 0.65);
INSERT INTO products (id, family_id, name, sale_price, target_margin) VALUES (3, 2, 'COOKIE RED VELVET RELLENA', 3.50, 0.60);

-- 6. RECIPES
-- Chips Clásica
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 1, 0.05);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 2, 0.02);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 3, 0.02);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 4, 0.01);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 5, 0.5);

-- 7. FIXED COSTS
INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('ALQUILER LOCAL', 1500.00, 'monthly');
INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('PERSONAL (BASE)', 2500.00, 'monthly');
INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('SUMINISTROS (LUZ/AGUA)', 450.00, 'monthly');

-- RE-ENABLE CONSTRAINTS
PRAGMA foreign_keys = ON;
