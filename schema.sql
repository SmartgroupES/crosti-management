CREATE TABLE IF NOT EXISTS product_families (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS raw_materials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    current_stock REAL DEFAULT 0,
    unit_measure TEXT,
    min_stock_alert REAL,
    average_cost_per_unit REAL DEFAULT 0,
    preferred_supplier_id INTEGER,
    FOREIGN KEY (preferred_supplier_id) REFERENCES suppliers(id)
);

CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    family_id INTEGER,
    name TEXT NOT NULL,
    sale_price REAL NOT NULL,
    target_margin REAL DEFAULT 0.75,
    stock_available INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    v_index REAL DEFAULT 0, -- Visibility index for AI Vision
    shelf_life_hours INTEGER DEFAULT 24,
    maillard_scale_active BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (family_id) REFERENCES product_families(id)
);


CREATE TABLE IF NOT EXISTS recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER,
    material_id INTEGER,
    quantity_needed REAL,
    waste_factor REAL DEFAULT 1.0,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (material_id) REFERENCES raw_materials(id)
);

CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    product_name TEXT,
    quantity INTEGER DEFAULT 1,
    total_amount REAL,
    ticket_number TEXT,
    location TEXT
);

CREATE TABLE IF NOT EXISTS fixed_costs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT NOT NULL,
    amount REAL NOT NULL,
    recurrence TEXT DEFAULT 'monthly',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS daily_operations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE DEFAULT (DATE('now')),
    product_id INTEGER,
    location TEXT,
    closing_stock INTEGER DEFAULT 0,
    waste_units INTEGER DEFAULT 0,
    production_planned INTEGER DEFAULT 0,
    production_actual INTEGER DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES products(id),
    UNIQUE(date, product_id, location)
);

CREATE TABLE IF NOT EXISTS production_plans (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    plan_date DATE NOT NULL,
    product_id INTEGER,
    suggested_quantity INTEGER,
    approved_quantity INTEGER,
    status TEXT DEFAULT 'pending',
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE IF NOT EXISTS purchases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    material_id INTEGER,
    quantity REAL,
    total_cost REAL,
    invoice_date DATE,
    invoice_file_key TEXT
);

CREATE TABLE IF NOT EXISTS suppliers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    cif TEXT
);

CREATE TABLE IF NOT EXISTS historical_recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    micros_id TEXT,
    name TEXT NOT NULL,
    total_cost REAL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS historical_recipe_ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    recipe_id INTEGER,
    ingredient_name TEXT NOT NULL,
    is_sub_recipe BOOLEAN DEFAULT FALSE,
    unit TEXT,
    quantity_dirty REAL,
    quantity_clean REAL,
    cost_dirty REAL,
    cost_clean REAL,
    FOREIGN KEY (recipe_id) REFERENCES historical_recipes(id)
);

CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    position TEXT,
    hourly_rate REAL DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    location TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS purchase_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT DEFAULT 'draft', -- draft, sent, received, cancelled
    total_estimated_cost REAL DEFAULT 0,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

CREATE TABLE IF NOT EXISTS purchase_order_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    po_id INTEGER,
    material_id INTEGER,
    quantity REAL,
    unit_cost REAL,
    FOREIGN KEY (po_id) REFERENCES purchase_orders(id),
    FOREIGN KEY (material_id) REFERENCES raw_materials(id)
);

CREATE TABLE IF NOT EXISTS equipment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT NOT NULL, -- 'fridge', 'freezer', 'oven', 'room'
    location TEXT,
    min_temp REAL,
    max_temp REAL
);

CREATE TABLE IF NOT EXISTS temperature_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    employee_id INTEGER,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    temperature REAL NOT NULL,
    notes TEXT,
    FOREIGN KEY (equipment_id) REFERENCES equipment(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS cleaning_tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    frequency TEXT DEFAULT 'daily', -- daily, weekly, monthly
    area TEXT
);

CREATE TABLE IF NOT EXISTS cleaning_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    task_id INTEGER,
    employee_id INTEGER,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT DEFAULT 'completed',
    FOREIGN KEY (task_id) REFERENCES cleaning_tasks(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS sales_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT,
    product_name TEXT,
    quantity INTEGER,
    total_sales REAL,
    hour INTEGER
);

CREATE TABLE IF NOT EXISTS quality_standards (
    product_id INTEGER PRIMARY KEY,
    min_diameter REAL, -- e.g., 9.5cm
    max_diameter REAL, -- e.g., 10.5cm
    maillard_target INTEGER, -- 1-5 scale
    topping_density REAL, -- percentage
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE IF NOT EXISTS vision_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    location TEXT,
    image_r2_key TEXT,
    analysis_json TEXT, -- Store raw AI output (bboxes, scores)
    quality_score INTEGER, -- 1-5
    merchandising_score REAL -- 0-1
);


CREATE TABLE IF NOT EXISTS recipe_status (
    recipe_name TEXT PRIMARY KEY,
    is_active BOOLEAN DEFAULT FALSE
);
