-- BakeOS Phase 4: Catering & Operations
CREATE TABLE IF NOT EXISTS catering_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    delivery_date DATE NOT NULL,
    delivery_time TIME,
    total_amount REAL,
    status TEXT DEFAULT 'pending', -- pending, preparing, delivered, cancelled
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS catering_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES catering_orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
