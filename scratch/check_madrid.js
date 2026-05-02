const XLSX = require('xlsx');
const filePath = '/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/Ventas_Madrid_Por_Hora.xlsx';

try {
  const workbook = XLSX.readFile(filePath);
  console.log('Sheets:', workbook.SheetNames);
  
  const data = XLSX.utils.sheet_to_json(workbook.Sheets[workbook.SheetNames[0]]);
  const years = [...new Set(data.map(row => {
    const dateStr = row.Fecha || row.Date;
    if (!dateStr) return 'unknown';
    const date = new Date(dateStr);
    return date.getFullYear();
  }))];
  console.log('Years:', years);
} catch (error) {
  console.error('Error:', error.message);
}
