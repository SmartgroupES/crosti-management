const XLSX = require('xlsx');
const fs = require('fs');
const path = require('path');

const filePath = "/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/Crosti Cookies Analisis Completo.xlsx";
const outputSql = "seed_simulation.sql";

const workbook = XLSX.readFile(filePath);
const locations = ['Downtown', 'Residencial', 'Hub Aeropuerto'];

const familyInserts = [];
const productInserts = [];
const saleInserts = [];
const costInserts = [];
const fixedCostInserts = [];

const families = new Set();
const products = new Map(); // name -> {price, family}

// Margin estimation from 'Leyenda'
const familyMargins = {
    "Cookies Clásicas": 0.68,
    "Cookies Premium": 0.58,
    "Brownies": 0.60,
    "Bebidas": 0.75, // Estimated
    "Combos": 0.55   // Estimated
};

locations.forEach(location => {
    const sheet = workbook.Sheets[location];
    const data = XLSX.utils.sheet_to_json(sheet);
    
    let baseDate = new Date("2025-01-01");
    let currentHour = "00:00";
    
    const headerKey = Object.keys(data[0])[0];

    for (let dayOffset = 0; dayOffset < 28; dayOffset++) {
        let currentDate = new Date(baseDate);
        currentDate.setDate(baseDate.getDate() + dayOffset);
        const dateStr = currentDate.toISOString().split('T')[0];

        for (let i = 1; i < data.length; i++) {
            const row = data[i];
            if (!row["__EMPTY"] || row["__EMPTY"] === "TOTAL" || row[headerKey] === "TOTAL") continue;
            if (row[headerKey] === "Hora") continue;

            if (row[headerKey] && row[headerKey].includes(":")) {
                currentHour = row[headerKey];
            }

            const productName = row["__EMPTY"];
            const category = row["__EMPTY_1"];
            const price = row["__EMPTY_2"];
            const quantity = row["__EMPTY_3"];
            const total = row["__EMPTY_4"];

            if (dayOffset === 0) {
                if (category) families.add(category);
                if (productName && !products.has(productName)) {
                    products.set(productName, { price, family: category });
                }
            }

            const simQuantity = Math.max(1, Math.round(quantity * (0.8 + Math.random() * 0.4)));
            const simTotal = Number((simQuantity * price).toFixed(2));

            const saleDate = `${dateStr} ${currentHour}:00`;
            saleInserts.push(`INSERT INTO sales (sale_date, product_name, quantity, total_amount, location) VALUES ('${saleDate}', '${productName.replace(/'/g, "''")}', ${simQuantity}, ${simTotal}, '${location}');`);
        }
    }
});

let familyMap = {};
let fId = 1;
families.forEach(f => {
    familyInserts.push(`INSERT INTO product_families (id, name) VALUES (${fId}, '${f.replace(/'/g, "''")}');`);
    familyMap[f] = fId++;
});

let pId = 1;
products.forEach((val, name) => {
    const famId = familyMap[val.family] || 'NULL';
    productInserts.push(`INSERT INTO products (id, name, sale_price, family_id) VALUES (${pId++}, '${name.replace(/'/g, "''")}', ${val.price}, ${famId});`);
    
    // Seed estimated costs
    const margin = familyMargins[val.family] || 0.6;
    const unitCost = Number((val.price * (1 - margin)).toFixed(2));
    costInserts.push(`INSERT INTO historical_recipes (name, total_cost) VALUES ('${name.replace(/'/g, "''")}', ${unitCost});`);
});

// Seed some realistic fixed costs for simulation
fixedCostInserts.push(`INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('Alquiler Local', 2500.00, 'monthly');`);
fixedCostInserts.push(`INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('Nómina Personal', 4800.00, 'monthly');`);
fixedCostInserts.push(`INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('Suministros (Luz/Agua)', 650.00, 'monthly');`);
fixedCostInserts.push(`INSERT INTO fixed_costs (category, amount, recurrence) VALUES ('Marketing Digital', 300.00, 'monthly');`);

const finalSql = [
    "DELETE FROM sales;",
    "DELETE FROM products;",
    "DELETE FROM product_families;",
    "DELETE FROM historical_recipes;",
    "DELETE FROM fixed_costs;",
    ...familyInserts,
    ...productInserts,
    ...costInserts,
    ...fixedCostInserts,
    ...saleInserts
];

fs.writeFileSync(outputSql, finalSql.join("\n"));
console.log(`Generated ${finalSql.length} SQL statements in ${outputSql}`);
