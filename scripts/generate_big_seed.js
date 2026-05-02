const fs = require('fs');

const products = [
  { id: 1, name: 'Choco Chip Classic', price: 3.50, family: 'Cookies' },
  { id: 2, name: 'Red Velvet Stuffed', price: 3.90, family: 'Cookies' },
  { id: 3, name: 'Cheesecake Frutos Rojos', price: 4.50, family: 'Cakes' },
  { id: 4, name: 'Pistacho Gourmet', price: 4.20, family: 'Cookies' },
  { id: 5, name: 'Mantequilla Original', price: 3.20, family: 'Cookies' }
];

const materials = [
  { id: 1, name: 'Harina de Trigo', stock: 120, unit: 'kg', cost: 0.85 },
  { id: 2, name: 'Mantequilla Sin Sal', stock: 45, unit: 'kg', cost: 6.50 },
  { id: 3, name: 'Azúcar Moreno', stock: 60, unit: 'kg', cost: 1.20 },
  { id: 4, name: 'Pepitas Chocolate 70%', stock: 25, unit: 'kg', cost: 12.00 },
  { id: 5, name: 'Pistacho Pelado', stock: 8, unit: 'kg', cost: 24.00 },
  { id: 6, name: 'Queso Crema', stock: 30, unit: 'kg', cost: 5.50 },
  { id: 7, name: 'Huevos', stock: 300, unit: 'uds', cost: 0.15 }
];

const suppliers = [
  { id: 1, name: 'EuroHarinas S.L.', cif: 'B88223344' },
  { id: 2, name: 'Lácteos del Norte', cif: 'B99334455' },
  { id: 3, name: 'Frutos Secos Premium', cif: 'B77445566' }
];

let sql = `-- SIMULATED DATASET FOR CROSTI HUB (FEB-APR 2026)\n\n`;

// 0. Disable constraints for cleanup
sql += `PRAGMA foreign_keys = OFF;\n\n`;

// 0. Cleanup
sql += `DELETE FROM sales_data;\n`;
sql += `DELETE FROM recipes;\n`;
sql += `DELETE FROM products;\n`;
sql += `DELETE FROM raw_materials;\n`;
sql += `DELETE FROM suppliers;\n`;
sql += `DELETE FROM product_families;\n`;
sql += `DELETE FROM vision_logs;\n`;
sql += `DELETE FROM employees;\n`;
sql += `DELETE FROM schedules;\n`;
sql += `DELETE FROM fixed_costs;\n\n`;

// 1. Families
sql += `INSERT INTO product_families (id, name) VALUES (1, 'Cookies'), (2, 'Cakes'), (3, 'Beverages');\n`;

// 2. Suppliers
suppliers.forEach(s => {
  sql += `INSERT INTO suppliers (id, name, cif) VALUES (${s.id}, '${s.name}', '${s.cif}');\n`;
});

// 3. Materials
materials.forEach(m => {
  sql += `INSERT INTO raw_materials (id, name, current_stock, unit_measure, average_cost_per_unit, preferred_supplier_id, min_stock_alert) 
          VALUES (${m.id}, '${m.name}', ${m.stock}, '${m.unit}', ${m.cost}, ${Math.floor(Math.random() * 3) + 1}, ${m.stock * 0.15});\n`;
});

// 4. Products
products.forEach(p => {
  sql += `INSERT INTO products (id, name, sale_price, family_id, target_margin, is_active) 
          VALUES (${p.id}, '${p.name}', ${p.price}, ${p.family === 'Cookies' ? 1 : 2}, 0.70, 1);\n`;
});

// 5. Recipes
products.forEach(p => {
  sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 1, 0.150);\n`;
  sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 2, 0.080);\n`;
  sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 3, 0.050);\n`;
  if (p.name.includes('Chocolate')) sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 4, 0.040);\n`;
  if (p.name.includes('Pistacho')) sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 5, 0.035);\n`;
  if (p.name.includes('Cheesecake')) sql += `INSERT INTO recipes (product_id, material_id, quantity_needed) VALUES (${p.id}, 6, 0.200);\n`;
});

// 6. Sales Data
const startDate = new Date('2026-02-01');
const endDate = new Date('2026-05-01');

for (let d = new Date(startDate); d < endDate; d.setDate(d.getDate() + 1)) {
  const dateStr = d.toISOString().split('T')[0];
  const isWeekend = d.getDay() === 0 || d.getDay() === 6;
  
  products.forEach(p => {
    let baseQty = 15 + Math.floor(Math.random() * 10);
    if (isWeekend) baseQty *= 1.8;
    
    for (let h = 9; h <= 21; h++) {
      let hourlyQty = Math.floor(baseQty / 12);
      if (h >= 16 && h <= 19) hourlyQty = Math.floor(baseQty * 0.4 / 3);
      
      if (hourlyQty > 0) {
        const totalSales = hourlyQty * p.price;
        sql += `INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) 
                VALUES ('${dateStr}', '${p.name}', ${hourlyQty}, ${totalSales}, ${h});\n`;
      }
    }
  });
}

// 7. Quality Logs
for (let i = 0; i < 50; i++) {
  const score = (Math.random() * (5 - 3.5) + 3.5).toFixed(1);
  sql += `INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) 
          VALUES (datetime('now', '-${i} days'), 'Velázquez', ${score}, ${Math.random().toFixed(2)});\n`;
}

// 8. Employees
sql += `INSERT INTO employees (name, position, hourly_rate) VALUES ('Lucía Fernández', 'Manager', 18.50), ('Carlos Ruiz', 'Baker', 14.00), ('Ana Belén', 'Sales', 12.00);\n`;

// 9. Re-enable constraints
sql += `\nPRAGMA foreign_keys = ON;\n`;

fs.writeFileSync('seed_full_simulation.sql', sql);
console.log("Seed file 'seed_full_simulation.sql' generated successfully.");
