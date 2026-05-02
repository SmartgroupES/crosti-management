const XLSX = require('xlsx');

try {
    const workbook = XLSX.readFile('/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/Recetas Top5 Productos.xlsx');
    const sheetName = workbook.SheetNames[0];
    const sheet = workbook.Sheets[sheetName];
    const data = XLSX.utils.sheet_to_json(sheet);
    console.log(JSON.stringify(data, null, 2));
} catch (e) {
    console.error("Error reading excel:", e.message);
}
