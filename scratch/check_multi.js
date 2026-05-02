const XLSX = require('xlsx');
const path = require('path');

const filePath = '/Users/nelsoncarrillokosak/crosti-management/Documentos y soportes/Recetas_históricas_20260426.xlsx';

try {
    const workbook = XLSX.readFile(filePath);
    const sheetName = workbook.SheetNames[0];
    const worksheet = workbook.Sheets[sheetName];
    const data = XLSX.utils.sheet_to_json(worksheet);

    const recipeCounts = {};
    data.forEach(row => {
        const name = row['Receta'];
        recipeCounts[name] = (recipeCounts[name] || 0) + 1;
    });

    const multiIngredientRecipes = Object.entries(recipeCounts).filter(([name, count]) => count > 1);
    console.log('Recipes with multiple rows:', multiIngredientRecipes.slice(0, 5));
    
    if (multiIngredientRecipes.length > 0) {
        const firstMulti = multiIngredientRecipes[0][0];
        console.log(`Rows for recipe "${firstMulti}":`, JSON.stringify(data.filter(r => r['Receta'] === firstMulti), null, 2));
    }
} catch (error) {
    console.error('Error:', error.message);
}
