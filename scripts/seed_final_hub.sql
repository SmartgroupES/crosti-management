-- 1. EXTERMINIO TOTAL EN ORDEN DE JERARQUÍA
DELETE FROM catering_items;
DELETE FROM catering_orders;
DELETE FROM notifications;
DELETE FROM historical_recipe_ingredients;
DELETE FROM historical_recipes;
DELETE FROM quality_standards;
DELETE FROM vision_logs;
DELETE FROM temperature_logs;
DELETE FROM cleaning_logs;
DELETE FROM schedules;
DELETE FROM purchase_order_items;
DELETE FROM purchase_orders;
DELETE FROM purchases;
DELETE FROM production_plans;
DELETE FROM daily_operations;
DELETE FROM recipes;
DELETE FROM products;
DELETE FROM raw_materials;
DELETE FROM suppliers;
DELETE FROM employees;
DELETE FROM cleaning_tasks;
DELETE FROM equipment;
DELETE FROM product_families;
DELETE FROM locations;
DELETE FROM fixed_costs;
DELETE FROM sales;
DELETE FROM sales_data;

-- 2. RE-INYECCIÓN MAESTRA (Dataset v110)
INSERT INTO product_families (id, name) VALUES (1, 'BOLLERÍA'), (2, 'GALLETERÍA');
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit) VALUES
(1, 'HARINA TRIGO', 500, 'KG', 0.95),
(2, 'MANTEQUILLA', 100, 'KG', 9.20),
(3, 'CHOCOLATE 70%', 50, 'KG', 13.50),
(4, 'AZÚCAR', 200, 'KG', 0.85);
INSERT INTO products (id, family_id, name, sale_price, target_margin) VALUES
(1, 1, 'CRUASÁN CLÁSICO', 2.50, 0.75),
(2, 2, 'COOKIE DOBLE CHOCO', 3.50, 0.75),
(3, 1, 'NAPOLITANA CREMA', 2.80, 0.75);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES
(1, 1, 0.100), (1, 2, 0.050), (2, 4, 0.040), (2, 3, 0.030), (3, 1, 0.080);
INSERT INTO fixed_costs (category, amount) VALUES ('LOCAL', 2400.00), ('EQUIPO', 7200.00), ('SUMINISTROS', 950.00);
INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES 
(date('now'), 'CRUASÁN CLÁSICO', 150, 375.00, 'POBLENOU'),
(date('now'), 'COOKIE DOBLE CHOCO', 90, 315.00, 'POBLENOU'),
(date('now', '-1 day'), 'CRUASÁN CLÁSICO', 140, 350.00, 'POBLENOU');
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour)
SELECT date(sale_date), product_name, quantity, total_amount, strftime('%H', sale_date) FROM sales;
