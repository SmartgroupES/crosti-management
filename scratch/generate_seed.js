const fs = require('fs');

function generateSales() {
  const startDate = new Date('2026-02-01');
  const endDate = new Date('2026-05-01');
  const products = [
    { name: 'Cookie Chocochip', price: 3.5 },
    { name: 'Cookie Red Velvet', price: 4.2 },
    { name: 'Focaccia Romero', price: 6.5 },
    { name: 'Ensalada Cesar', price: 8.9 },
    { name: 'Croissant Mantequilla', price: 2.8 }
  ];

  let sql = '-- Simulated Sales Data Feb-Apr 2026\n';
  sql += 'DELETE FROM sales;\n';
  sql += 'DELETE FROM daily_operations;\n';
  sql += 'DELETE FROM vision_logs;\n';

  let currentMonth = startDate.getMonth();
  let baseDailySales = 300; // Base daily sales in euros

  for (let d = new Date(startDate); d < endDate; d.setDate(d.getDate() + 1)) {
    // 5% monthly growth
    if (d.getMonth() !== currentMonth) {
      baseDailySales *= 1.05;
      currentMonth = d.getMonth();
    }

    const isWeekend = d.getDay() === 0 || d.getDay() === 6;
    const dailyMultiplier = isWeekend ? 1.5 : 1.0;
    const dailyVolume = baseDailySales * dailyMultiplier * (0.9 + Math.random() * 0.2);

    let dayRevenue = 0;
    while (dayRevenue < dailyVolume) {
      const product = products[Math.floor(Math.random() * products.length)];
      const qty = Math.floor(Math.random() * 3) + 1;
      const total = product.price * qty;
      
      // Hourly distribution
      let hour;
      const rand = Math.random();
      if (isWeekend) {
        // Peaks 16:00 - 19:00
        if (rand < 0.6) hour = 16 + Math.floor(Math.random() * 4);
        else hour = 9 + Math.floor(Math.random() * 7);
      } else {
        hour = 9 + Math.floor(Math.random() * 12);
      }

      const saleDate = new Date(d);
      saleDate.setHours(hour, Math.floor(Math.random() * 60));
      
      const formattedDate = saleDate.toISOString().replace('T', ' ').substring(0, 19);
      sql += `INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES ('${formattedDate}', '${product.name}', ${qty}, ${total}, 'Crosti_Velazquez');\n`;
      dayRevenue += total;
    }

    // Daily Operations (Mermas) - Use INSERT OR REPLACE
    const waste = Math.floor(Math.random() * 10);
    const prod = Math.floor(dailyVolume / 4) + 10;
    sql += `INSERT OR REPLACE INTO daily_operations (date, product_id, location, waste_units, production_actual) VALUES ('${d.toISOString().substring(0, 10)}', 1, 'Crosti_Velazquez', ${waste}, ${prod});\n`;

    // Vision Logs (Quality)
    const score = Math.floor(Math.random() * 3) + 3; // 3 to 5
    sql += `INSERT INTO vision_logs (timestamp, location, quality_score, merchandising_score) VALUES ('${d.toISOString().replace('T', ' ').substring(0, 19)}', 'Crosti_Velazquez', ${score}, ${Math.random().toFixed(2)});\n`;
  }

  fs.writeFileSync('seed_simulated_data.sql', sql);
  console.log('Seed file generated: seed_simulated_data.sql');
}

generateSales();
