
const XLSX = require('xlsx');
const fs = require('fs');

const excelPath = "/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx";
const sqlPath = "update_sales.sql";

console.log("Reading Excel...");
const workbook = XLSX.readFile(excelPath);
const sheetName = workbook.SheetNames[0];
const data = XLSX.utils.sheet_to_json(workbook.Sheets[sheetName]);

console.log(`Processing ${data.length} rows with 2-year date shift...`);

// We'll shift 2024 -> 2026
// And we'll adjust so the last date (May 15 2024) becomes May 1 2026.
// May 15 2024 is Day 136 of 2024.
// May 1 2026 is Day 121 of 2026.
// But let's just do a simple replacement of "2024" with "2026" for now to see.
// Actually, let's calculate the offset in days.
const originalLastDate = new Date("2024-05-15").getTime();
const targetLastDate = new Date("2026-05-01").getTime();
const offsetMs = targetLastDate - originalLastDate;

let sql = "DELETE FROM sales;\n";
sql += "DELETE FROM sales_data;\n";

data.forEach((row, idx) => {
  if (!row.Fecha) return;
  
  const originalDate = new Date(row.Fecha);
  const shiftedDate = new Date(originalDate.getTime() + offsetMs);
  
  const dateStr = shiftedDate.toISOString().split('T')[0];
  const hourStr = row.Hora || "00:00"; 
  const fullDate = `${dateStr} ${hourStr}:00`;
  
  const productName = (row.Producto || "").replace(/'/g, "''");
  const quantity = row.Cantidad || 0;
  const total = row.Total || 0;
  const hour = parseInt(hourStr.split(':')[0]) || 0;

  // Insert into sales
  sql += `INSERT INTO sales (sale_date, product_name, quantity, total_amount) VALUES ('${fullDate}', '${productName}', ${quantity}, ${total});\n`;
  
  // Insert into sales_data
  sql += `INSERT INTO sales_data (date, product_name, quantity, total_sales, hour) VALUES ('${dateStr}', '${productName}', ${quantity}, ${total}, ${hour});\n`;
  
  if (idx % 1000 === 0 && idx > 0) {
    console.log(`Processed ${idx} rows...`);
  }
});

fs.writeFileSync(sqlPath, sql);
console.log(`SQL script generated at ${sqlPath}`);
