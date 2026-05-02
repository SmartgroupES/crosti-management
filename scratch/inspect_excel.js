const XLSX = require('xlsx');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/crosti-management/Documentos y soportes/Recetas_históricas_20260426.xlsx';

try {
    const workbook = XLSX.readFile(filePath);
    const sheetName = workbook.SheetNames[0];
    const worksheet = workbook.Sheets[sheetName];
    const data = XLSX.utils.sheet_to_json(worksheet, { header: 1 });

    console.log('Sheet Name:', sheetName);
    console.log('Headers:', data[0]);
    console.log('First 5 Rows:', JSON.stringify(data.slice(1, 6), null, 2));
} catch (error) {
    console.error('Error reading Excel:', error.message);
}
