PRAGMA foreign_keys = OFF;

-- CATERING ORDERS DATASET (T+1 & T+2)

DELETE FROM catering_orders;

INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (1, 'Cliente Corporativo 1', '2026-05-02', '09:00', 'Pendiente', 219.45581250322414);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (2, 'Cliente Corporativo 2', '2026-05-02', '09:00', 'Listo', 259.23504639811307);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (3, 'Cliente Corporativo 3', '2026-05-02', '09:00', 'En Horno', 259.77047977097914);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (4, 'Cliente Corporativo 4', '2026-05-02', '09:00', 'Listo', 245.31320904627046);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (5, 'Cliente Corporativo 5', '2026-05-02', '09:00', 'Pendiente', 297.0737944126812);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (6, 'Cliente Corporativo 6', '2026-05-03', '09:00', 'En Horno', 226.1297679692001);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (7, 'Cliente Corporativo 7', '2026-05-03', '09:00', 'Pendiente', 250.22527254001324);
INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (8, 'Cliente Corporativo 8', '2026-05-03', '09:00', 'Listo', 215.81556694787247);

PRAGMA foreign_keys = ON;
