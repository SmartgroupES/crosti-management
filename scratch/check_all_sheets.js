const XLSX = require('xlsx');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx';

try {
  const workbook = XLSX.readFile(filePath);
  console.log('Sheets:', workbook.SheetNames);
  
  workbook.SheetNames.forEach(sheet => {
    const data = XLSX.utils.sheet_to_json(workbook.Sheets[sheet]);
    const years = [...new Set(data.map(row => {
      const dateStr = row.Fecha;
      if (!dateStr) return 'unknown';
      const date = new Date(dateStr);
      return date.getFullYear();
    }))];
    console.log(`Sheet "${sheet}" years:`, years);
  });
} catch (error) {
  console.error('Error:', error.message);
}
