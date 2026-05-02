const fs = require('fs');

let sql = `PRAGMA foreign_keys = OFF;\n\n`;
sql += `-- CATERING ORDERS DATASET (T+1 & T+2)\n\n`;

const today = new Date();
const t1 = new Date(today); t1.setDate(today.getDate() + 1);
const t2 = new Date(today); t2.setDate(today.getDate() + 2);

const dates = [t1.toISOString().split('T')[0], t2.toISOString().split('T')[0]];

sql += `DELETE FROM catering_orders;\n\n`;

for (let i = 1; i <= 8; i++) {
  const deliveryDate = i <= 5 ? dates[0] : dates[1];
  const customer = `Cliente Corporativo ${i}`;
  const status = i % 3 === 0 ? 'En Horno' : (i % 2 === 0 ? 'Listo' : 'Pendiente');
  
  sql += `INSERT INTO catering_orders (id, customer_name, delivery_date, delivery_time, status, total_amount) 
          VALUES (${i}, '${customer}', '${deliveryDate}', '09:00', '${status}', ${200 + Math.random() * 100});\n`;
}

sql += `\nPRAGMA foreign_keys = ON;\n`;

fs.writeFileSync('seed_catering.sql', sql);
console.log("Catering seed generated with correct schema.");
