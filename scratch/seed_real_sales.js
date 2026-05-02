const XLSX = require('xlsx');
const fs = require('fs');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx';

try {
  const workbook = XLSX.readFile(filePath);
  const data = XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]]);

  let sql = 'DELETE FROM sales;\n';
  
  data.forEach((row, idx) => {
    // Fecha is likely a serial number or string
    let dateStr = row.Fecha;
    if (typeof dateStr === 'number') {
      // Excel date serial
      const date = new Date(Date.UTC(0, 0, dateStr - 1));
      dateStr = date.toISOString().split('T')[0];
    }
    
    const dateTime = `${dateStr} ${row.Hora}:00`;
    const productName = row.Producto.replace(/'/g, "''");
    const quantity = row.Cantidad;
    const total = row.Total;
    
    // Original 2024
    sql += `INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES ('${dateTime}', '${productName}', ${quantity}, ${total}, 'MADRID');\n`;
    
    // Project 2025 (approx same day of week by adding 52 weeks)
    const date2025 = new Date(dateTime);
    date2025.setFullYear(2025);
    const dt2025 = date2025.toISOString().replace('T', ' ').split('.')[0];
    sql += `INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES ('${dt2025}', '${productName}', ${quantity}, ${total * 1.1}, 'MADRID');\n`;

    // Project 2026
    const date2026 = new Date(dateTime);
    date2026.setFullYear(2026);
    const dt2026 = date2026.toISOString().replace('T', ' ').split('.')[0];
    sql += `INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES ('${dt2026}', '${productName}', ${quantity}, ${total * 1.21}, 'MADRID');\n`;
  });

  fs.writeFileSync('seed_real_sales.sql', sql);
  console.log('SQL generated: seed_real_sales.sql');
} catch (error) {
  console.error('Error:', error.message);
}
