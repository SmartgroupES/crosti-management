
const XLSX = require('xlsx');
const workbook = XLSX.readFile("/Users/nelsoncarrillokosak/Library/CloudStorage/Dropbox/Crosti Cookies/final.xlsx");
const sheetName = workbook.SheetNames[0];
const worksheet = workbook.Sheets[sheetName];
const data = XLSX.utils.sheet_to_json(worksheet);
const dates = data.map(r => r.Fecha).filter(Boolean);
console.log("Range:", Math.min(...dates.map(d => new Date(d).getTime())), "to", Math.max(...dates.map(d => new Date(d).getTime())));
console.log("Sample Date:", data[0].Fecha);
console.log("Total rows:", data.length);
