-- BakeOS Schema Update
ALTER TABLE products ADD COLUMN shelf_life_hours INTEGER DEFAULT 24;
ALTER TABLE products ADD COLUMN maillard_scale_active BOOLEAN DEFAULT FALSE;

CREATE TABLE IF NOT EXISTS quality_standards (
    product_id INTEGER PRIMARY KEY,
    min_diameter REAL,
    max_diameter REAL,
    maillard_target INTEGER,
    topping_density REAL,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE IF NOT EXISTS vision_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    location TEXT,
    image_r2_key TEXT,
    analysis_json TEXT,
    quality_score INTEGER,
    merchandising_score REAL
);
