const XLSX = require('xlsx');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx';

try {
  const workbook = XLSX.readFile(filePath);
  const data = XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]]);

  const years = [...new Set(data.map(row => {
    const dateStr = row.Fecha;
    if (!dateStr) return 'unknown';
    // Handle both string and Date objects if necessary
    const date = new Date(dateStr);
    return date.getFullYear();
  }))];

  console.log('Available years:', years);
  console.log('Total rows:', data.length);
} catch (error) {
  console.error('Error:', error.message);
}
