
const XLSX = require('xlsx');
const workbook = XLSX.readFile("/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx");
const sheetName = workbook.SheetNames[0];
const worksheet = workbook.Sheets[sheetName];
const data = XLSX.utils.sheet_to_json(worksheet);
console.log(JSON.stringify(data.slice(0, 5), null, 2));
