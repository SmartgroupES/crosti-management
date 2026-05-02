const fs = require('fs');

// Configuration
const DAYS = 30;
const EMPLOYEES = [
  { id: 1, name: 'Ana Garcia', pos: 'Pastelera', rate: 12.5 },
  { id: 2, name: 'Carlos Ruiz', pos: 'Dependiente', rate: 10.0 },
  { id: 3, name: 'Elena Sanz', pos: 'Encargada', rate: 15.0 },
  { id: 4, name: 'Juan Lopez', pos: 'Pastelero', rate: 12.0 },
  { id: 5, name: 'Sofia Marín', pos: 'Dependiente', rate: 10.0 }
];

const PRODUCTS = [
  { id: 1, name: 'Cookie Chocolate Chips', price: 3.5, category: 'Cookies' },
  { id: 2, name: 'Cookie Avena y Pasas', price: 3.2, category: 'Cookies' },
  { id: 3, name: 'Café Espresso', price: 2.0, category: 'Cafetería' },
  { id: 4, name: 'Cookie Mantequilla', price: 3.0, category: 'Cookies' },
  { id: 5, name: 'Cookie Doble Chocolate', price: 3.8, category: 'Cookies' },
  { id: 6, name: 'Capuchino', price: 3.5, category: 'Cafetería' },
  { id: 9, name: 'Cookie Matcha Blanco', price: 4.0, category: 'Cookies' },
  { id: 12, name: 'Brownie Clásico', price: 4.5, category: 'Bollería' },
  { id: 15, name: 'Brownie Nueces', price: 4.8, category: 'Bollería' }
];

const EQUIPMENT = [
  { id: 1, name: 'Nevera Principal', min: 2, max: 5 },
  { id: 2, name: 'Congelador Cookies', min: -22, max: -18 },
  { id: 3, name: 'Mostrador Vitrina', min: 4, max: 8 }
];

let sql = "PRAGMA foreign_keys = OFF;\n";
sql += "DELETE FROM sales_data;\nDELETE FROM production_plans;\nDELETE FROM employees;\nDELETE FROM schedules;\nDELETE FROM purchase_orders;\nDELETE FROM purchase_order_items;\nDELETE FROM temperature_logs;\nDELETE FROM cleaning_logs;\n";

const today = new Date();

for (let i = 0; i < DAYS; i++) {
  const date = new Date(today);
  date.setDate(date.getDate() - i);
  const dateStr = date.toISOString().split('T')[0];

  // 1. Sales Data (Random but logical)
  const isWeekend = date.getDay() === 0 || date.getDay() === 6;
  const multiplier = isWeekend ? 1.5 : 1.0;

  PRODUCTS.forEach(p => {
    const qty = Math.floor((Math.random() * 20 + 10) * multiplier);
    sql += `INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) VALUES ('${dateStr}', '${p.name}', ${qty}, ${qty * p.price}, ${9 + Math.floor(Math.random() * 10)});\n`;
  });

  // 2. Production Plans
  PRODUCTS.forEach(p => {
    if (p.category !== 'Cafetería') {
      const planned = Math.floor((Math.random() * 30 + 20) * multiplier);
      const produced = planned - Math.floor(Math.random() * 3);
      sql += `INSERT INTO production_plans (product_id, plan_date, planned_quantity, approved_quantity, status) VALUES (${p.id}, '${dateStr}', ${planned}, ${produced}, 'completed');\n`;
    }
  });

  // 3. Personnel Schedules
  EMPLOYEES.forEach(emp => {
    const startHour = emp.pos === 'Pastelero' ? 7 : 10;
    const endHour = startHour + 8;
    sql += `INSERT INTO schedules (employee_id, date, start_time, end_time, location) VALUES (${emp.id}, '${dateStr}', '${startHour}:00', '${endHour}:00', 'Sede Central');\n`;
  });

  // 4. APPCC Logs (Temperatures)
  EQUIPMENT.forEach(eq => {
    const temp = eq.min + (Math.random() * (eq.max - eq.min));
    sql += `INSERT INTO temperature_logs (equipment_id, employee_id, timestamp, temperature) VALUES (${eq.id}, ${Math.floor(Math.random() * 5) + 1}, '${dateStr} 10:00:00', ${temp.toFixed(1)});\n`;
  });
}

// 5. Employees
EMPLOYEES.forEach(e => {
  sql += `INSERT INTO employees (id, name, position, hourly_rate) VALUES (${e.id}, '${e.name}', '${e.pos}', ${e.rate});\n`;
});

// 6. Purchase Orders (One per week)
for (let w = 0; w < 4; w++) {
  const date = new Date(today);
  date.setDate(date.getDate() - (w * 7));
  const dateStr = date.toISOString().split('T')[0];
  sql += `INSERT INTO purchase_orders (id, supplier_id, order_date, status, total_estimated_cost) VALUES (${w + 1}, 1, '${dateStr}', 'received', ${200 + Math.random() * 300});\n`;
  sql += `INSERT INTO purchase_order_items (po_id, material_id, quantity, unit_cost) VALUES (${w + 1}, 1, 50, 1.2);\n`;
}

sql += "PRAGMA foreign_keys = ON;\n";

fs.writeFileSync('seed_demo.sql', sql);
console.log("Demo data generated successfully in seed_demo.sql");
