-- SIMULATED DATASET FOR CROSTI HUB (FEB-APR 2026)

PRAGMA foreign_keys = OFF;

DELETE FROM sales_data;
DELETE FROM recipes;
DELETE FROM products;
DELETE FROM raw_materials;
DELETE FROM suppliers;
DELETE FROM product_families;
DELETE FROM vision_logs;
DELETE FROM employees;
DELETE FROM schedules;
DELETE FROM fixed_costs;

INSERT INTO product_families (id, name) VALUES (1, 'Cookies'), (2, 'Cakes'), (3, 'Beverages');
INSERT INTO suppliers (id, name, cif) VALUES (1, 'EuroHarinas S.L.', 'B88223344');
INSERT INTO suppliers (id, name, cif) VALUES (2, 'Lácteos del Norte', 'B99334455');
INSERT INTO suppliers (id, name, cif) VALUES (3, 'Frutos Secos Premium', 'B77445566');
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (1, 'Harina de Trigo', 120, 'kg', 0.85, 1, 18);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (2, 'Mantequilla Sin Sal', 45, 'kg', 6.5, 3, 6.75);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (3, 'Azúcar Moreno', 60, 'kg', 1.2, 3, 9);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (4, 'Pepitas Chocolate 70%', 25, 'kg', 12, 2, 3.75);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (5, 'Pistacho Pelado', 8, 'kg', 24, 2, 1.2);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (6, 'Queso Crema', 30, 'kg', 5.5, 1, 4.5);
INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (7, 'Huevos', 300, 'uds', 0.15, 1, 45);
INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (1, 'Choco Chip Classic', 3.5, 1, 0.70, 1);
INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (2, 'Red Velvet Stuffed', 3.9, 1, 0.70, 1);
INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (3, 'Cheesecake Frutos Rojos', 4.5, 2, 0.70, 1);
INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (4, 'Pistacho Gourmet', 4.2, 1, 0.70, 1);
INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (5, 'Mantequilla Original', 3.2, 1, 0.70, 1);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 1, 0.150);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 2, 0.080);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (1, 3, 0.050);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (2, 1, 0.150);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (2, 2, 0.080);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (2, 3, 0.050);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (3, 1, 0.150);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (3, 2, 0.080);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (3, 3, 0.050);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (3, 6, 0.200);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (4, 1, 0.150);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (4, 2, 0.080);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (4, 3, 0.050);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (4, 5, 0.035);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (5, 1, 0.150);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (5, 2, 0.080);
INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (5, 3, 0.050);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-01', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-02', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-03', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-04', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-05', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-06', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-07', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-08', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-09', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-10', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-11', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-12', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-13', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-14', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-15', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-16', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-17', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-18', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-19', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-20', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-21', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-22', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-23', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-24', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-25', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-26', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-27', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-02-28', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-01', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-02', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-03', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-04', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-05', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-06', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-07', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-08', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-09', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-10', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-11', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-12', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-13', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-14', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-15', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-16', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-17', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-18', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-19', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-20', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-21', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-22', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-23', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-24', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-25', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-26', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-27', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-28', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-29', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-30', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-03-31', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-01', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-02', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-03', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-04', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-05', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-06', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-07', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-08', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-09', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-10', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-11', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-12', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-13', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-14', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-15', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-16', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 5, 21, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 5, 21, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 5, 21, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 5, 21, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Pistacho Gourmet', 3, 12.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-17', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 5, 22.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 5, 22.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 5, 22.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 5, 22.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Cheesecake Frutos Rojos', 3, 13.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-18', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-19', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-20', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 3, 9.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 3, 9.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 3, 9.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 3, 9.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-21', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-22', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-23', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 4, 14, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 4, 14, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 4, 14, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 4, 14, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Choco Chip Classic', 2, 7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 4, 15.6, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 4, 15.6, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 4, 15.6, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 4, 15.6, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Red Velvet Stuffed', 2, 7.8, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 4, 12.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 4, 12.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 4, 12.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 4, 12.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-24', 'Mantequilla Original', 2, 6.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 5, 17.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 5, 17.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 5, 17.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 5, 17.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Choco Chip Classic', 3, 10.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 5, 19.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 5, 19.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 5, 19.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 5, 19.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Red Velvet Stuffed', 3, 11.7, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 4, 18, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 4, 18, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 4, 18, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 4, 18, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 4, 16.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 4, 16.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 4, 16.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 4, 16.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Pistacho Gourmet', 2, 8.4, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 5, 16, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 5, 16, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 5, 16, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 5, 16, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-25', 'Mantequilla Original', 3, 9.600000000000001, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-26', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 3, 10.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 3, 10.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 3, 10.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 3, 10.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 3, 11.7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 3, 11.7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 3, 11.7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 3, 11.7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Cheesecake Frutos Rojos', 2, 9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-27', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-28', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 3, 13.5, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 3, 13.5, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 3, 13.5, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 3, 13.5, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 3, 12.600000000000001, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 3, 12.600000000000001, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 3, 12.600000000000001, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 3, 12.600000000000001, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-29', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 2, 7, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 2, 7, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 2, 7, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 2, 7, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Choco Chip Classic', 1, 3.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 2, 7.8, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 2, 7.8, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 2, 7.8, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 2, 7.8, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Red Velvet Stuffed', 1, 3.9, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 2, 9, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 2, 9, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 2, 9, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 2, 9, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Cheesecake Frutos Rojos', 1, 4.5, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 2, 8.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 2, 8.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 2, 8.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 2, 8.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Pistacho Gourmet', 1, 4.2, 21);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 9);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 10);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 11);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 12);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 13);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 14);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 15);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 2, 6.4, 16);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 2, 6.4, 17);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 2, 6.4, 18);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 2, 6.4, 19);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 20);
INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('2026-04-30', 'Mantequilla Original', 1, 3.2, 21);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-0 days'), 'Velázquez', 4.1, 0.55);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-1 days'), 'Velázquez', 4.1, 0.19);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-2 days'), 'Velázquez', 4.6, 0.56);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-3 days'), 'Velázquez', 4.2, 0.27);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-4 days'), 'Velázquez', 4.5, 0.98);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-5 days'), 'Velázquez', 3.7, 0.08);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-6 days'), 'Velázquez', 5.0, 0.16);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-7 days'), 'Velázquez', 3.9, 0.61);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-8 days'), 'Velázquez', 5.0, 0.50);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-9 days'), 'Velázquez', 4.5, 0.06);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-10 days'), 'Velázquez', 4.5, 0.27);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-11 days'), 'Velázquez', 3.6, 0.39);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-12 days'), 'Velázquez', 4.4, 0.25);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-13 days'), 'Velázquez', 4.3, 0.06);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-14 days'), 'Velázquez', 3.6, 0.98);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-15 days'), 'Velázquez', 4.1, 0.57);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-16 days'), 'Velázquez', 3.7, 0.43);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-17 days'), 'Velázquez', 4.5, 0.62);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-18 days'), 'Velázquez', 4.0, 0.87);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-19 days'), 'Velázquez', 4.6, 0.52);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-20 days'), 'Velázquez', 4.3, 0.01);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-21 days'), 'Velázquez', 3.8, 0.68);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-22 days'), 'Velázquez', 4.0, 0.39);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-23 days'), 'Velázquez', 4.5, 0.45);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-24 days'), 'Velázquez', 4.5, 0.79);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-25 days'), 'Velázquez', 4.3, 0.95);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-26 days'), 'Velázquez', 3.8, 0.88);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-27 days'), 'Velázquez', 3.7, 0.76);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-28 days'), 'Velázquez', 4.2, 0.40);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-29 days'), 'Velázquez', 3.7, 0.62);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-30 days'), 'Velázquez', 4.8, 0.26);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-31 days'), 'Velázquez', 4.1, 0.74);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-32 days'), 'Velázquez', 3.7, 0.07);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-33 days'), 'Velázquez', 3.6, 0.41);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-34 days'), 'Velázquez', 4.8, 0.26);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-35 days'), 'Velázquez', 3.7, 0.02);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-36 days'), 'Velázquez', 3.8, 0.97);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-37 days'), 'Velázquez', 3.5, 0.20);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-38 days'), 'Velázquez', 4.5, 0.64);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-39 days'), 'Velázquez', 3.5, 0.48);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-40 days'), 'Velázquez', 3.8, 0.53);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-41 days'), 'Velázquez', 4.6, 0.64);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-42 days'), 'Velázquez', 3.5, 0.61);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-43 days'), 'Velázquez', 4.0, 0.55);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-44 days'), 'Velázquez', 4.2, 0.77);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-45 days'), 'Velázquez', 4.1, 0.80);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-46 days'), 'Velázquez', 4.1, 0.68);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-47 days'), 'Velázquez', 3.6, 0.07);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-48 days'), 'Velázquez', 3.7, 0.16);
INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-49 days'), 'Velázquez', 4.2, 0.68);
INSERT INTO employees (name, position, hourly_rate) VALUES ('Lucía Fernández', 'Manager', 18.50), ('Carlos Ruiz', 'Baker', 14.00), ('Ana Belén', 'Sales', 12.00);

PRAGMA foreign_keys = ON;
