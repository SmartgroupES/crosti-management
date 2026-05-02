const fs = require('fs');

const products = [
  { name: 'COOKIE CHIPS CLÁSICA', price: 2.50 },
  { name: 'COOKIE DOBLE CHOCOLATE', price: 2.90 },
  { name: 'COOKIE RED VELVET RELLENA', price: 3.50 }
];

let sql = '-- GENERATED SALES DATA FOR 90 DAYS\n';
const today = new Date();

for (let i = 90; i >= 0; i--) {
  const date = new Date();
  date.setDate(today.getDate() - i);
  const dateStr = date.toISOString().split('T')[0];
  
  // Weekend boost
  const dayOfWeek = date.getDay();
  const multiplier = (dayOfWeek === 0 || dayOfWeek === 6) ? 2.5 : 1.0;

  products.forEach(p => {
    // Random quantity between 10 and 50 units per day, with growth trend
    const baseQty = Math.floor(Math.random() * 40) + 10;
    const growth = 1 + (90 - i) / 200; // Slight growth over time
    const qty = Math.floor(baseQty * multiplier * growth);
    const total = qty * p.price;
    
    // Multiple entries per day to simulate different hours
    sql += `INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) VALUES ('${dateStr}', '${p.name}', ${qty}, ${total.toFixed(2)}, 14);\n`;
  });
}

fs.writeFileSync('scripts/seed_sales.sql', sql);
console.log('Seeding SQL generated successfully.');
