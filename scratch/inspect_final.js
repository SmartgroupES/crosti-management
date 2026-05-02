const XLSX = require('xlsx');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx';

try {
  const workbook = XLSX.readFile(filePath);
  const sheetName = workbook.SheetNames[0];
  const worksheet = workbook.Sheets[sheetName];
  const data = XLSX.utils.sheet_to_json(worksheet);

  console.log('Total rows:', data.length);
  console.log('Sample row:', JSON.stringify(data[0], null, 2));
} catch (error) {
  console.error('Error reading file:', error.message);
}
