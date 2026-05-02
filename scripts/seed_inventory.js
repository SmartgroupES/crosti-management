const fs = require('fs');

const materials = [
    { name: 'Harina de Trigo', stock: 50, unit: 'kg', min: 10, cost: 1.2 },
    { name: 'Mantequilla Sin Sal', stock: 30, unit: 'kg', min: 5, cost: 8.5 },
    { name: 'Azúcar Blanca', stock: 40, unit: 'kg', min: 8, cost: 1.1 },
    { name: 'Azúcar Moreno', stock: 25, unit: 'kg', min: 5, cost: 1.5 },
    { name: 'Chispas de Chocolate', stock: 20, unit: 'kg', min: 4, cost: 12.0 },
    { name: 'Huevos', stock: 500, unit: 'unidades', min: 100, cost: 0.15 },
    { name: 'Cacao en Polvo', stock: 10, unit: 'kg', min: 2, cost: 15.0 },
    { name: 'Extracto de Vainilla', stock: 5, unit: 'L', min: 1, cost: 25.0 },
    { name: 'Levadura', stock: 2, unit: 'kg', min: 0.5, cost: 5.0 },
    { name: 'Sal Fina', stock: 5, unit: 'kg', min: 1, cost: 0.8 },
    { name: 'Matcha Premium', stock: 2, unit: 'kg', min: 0.5, cost: 45.0 },
    { name: 'Nueces Picadas', stock: 5, unit: 'kg', min: 1, cost: 18.0 },
    { name: 'Café Grano', stock: 15, unit: 'kg', min: 3, cost: 22.0 },
    { name: 'Leche Entera', stock: 100, unit: 'L', min: 20, cost: 1.2 }
];

const recipes = [
    // Cookie Chocolate Chips
    { product: 1, ingredients: [
        { name: 'Harina de Trigo', qty: 0.05 },
        { name: 'Mantequilla Sin Sal', qty: 0.03 },
        { name: 'Azúcar Moreno', qty: 0.02 },
        { name: 'Chispas de Chocolate', qty: 0.025 },
        { name: 'Huevos', qty: 0.2 }
    ]},
    // Cookie Avena y Pasas (Assuming 2 is Avena)
    { product: 2, ingredients: [
        { name: 'Harina de Trigo', qty: 0.04 },
        { name: 'Mantequilla Sin Sal', qty: 0.03 },
        { name: 'Azúcar Moreno', qty: 0.025 },
        { name: 'Huevos', qty: 0.2 }
    ]},
    // Cookie Mantequilla
    { product: 4, ingredients: [
        { name: 'Harina de Trigo', qty: 0.06 },
        { name: 'Mantequilla Sin Sal', qty: 0.04 },
        { name: 'Azúcar Blanca', qty: 0.03 },
        { name: 'Huevos', qty: 0.2 }
    ]},
    // Cookie Doble Chocolate
    { product: 5, ingredients: [
        { name: 'Harina de Trigo', qty: 0.045 },
        { name: 'Mantequilla Sin Sal', qty: 0.03 },
        { name: 'Cacao en Polvo', qty: 0.015 },
        { name: 'Chispas de Chocolate', qty: 0.02 },
        { name: 'Huevos', qty: 0.2 }
    ]},
    // Cookie Matcha Blanco
    { product: 9, ingredients: [
        { name: 'Harina de Trigo', qty: 0.05 },
        { name: 'Matcha Premium', qty: 0.005 },
        { name: 'Mantequilla Sin Sal', qty: 0.03 },
        { name: 'Azúcar Blanca', qty: 0.025 }
    ]},
    // Brownie Clásico
    { product: 12, ingredients: [
        { name: 'Harina de Trigo', qty: 0.03 },
        { name: 'Mantequilla Sin Sal', qty: 0.05 },
        { name: 'Cacao en Polvo', qty: 0.04 },
        { name: 'Azúcar Blanca', qty: 0.06 },
        { name: 'Huevos', qty: 0.5 }
    ]},
    // Brownie Nueces
    { product: 15, ingredients: [
        { name: 'Harina de Trigo', qty: 0.03 },
        { name: 'Mantequilla Sin Sal', qty: 0.05 },
        { name: 'Cacao en Polvo', qty: 0.04 },
        { name: 'Nueces Picadas', qty: 0.02 },
        { name: 'Huevos', qty: 0.5 }
    ]},
    // Café Espresso
    { product: 3, ingredients: [
        { name: 'Café Grano', qty: 0.018 }
    ]},
    // Capuchino
    { product: 6, ingredients: [
        { name: 'Café Grano', qty: 0.018 },
        { name: 'Leche Entera', qty: 0.2 }
    ]}
];

let sql = "PRAGMA foreign_keys = OFF;\nDELETE FROM recipes;\nDELETE FROM raw_materials;\n";

// Materials
materials.forEach((m, idx) => {
    const supplierId = (idx % 3) + 1; // Round robin
    sql += `INSERT INTO raw_materials (id, name, current_stock, unit_measure, min_stock_alert, average_cost_per_unit, preferred_supplier_id) VALUES (${idx + 1}, '${m.name}', ${m.stock}, '${m.unit}', ${m.min}, ${m.cost}, ${supplierId});\n`;
});

// Map material name to ID
const matMap = {};
materials.forEach((m, idx) => matMap[m.name] = idx + 1);

// Recipes
recipes.forEach(r => {
    r.ingredients.forEach(ing => {
        const matId = matMap[ing.name];
        if (matId) {
            sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${r.product}, ${matId}, ${ing.qty});\n`;
        }
    });
});

sql += "PRAGMA foreign_keys = ON;\n";

fs.writeFileSync('seed_inventory.sql', sql);
console.log("Generated seed_inventory.sql");
