const XLSX = require('xlsx');
const fs = require('fs');
const path = require('path');

const excelFilePath = '/Users/nelsoncarrillokosak/crosti-management/Documentos y soportes/Recetas_históricas_20260426.xlsx';
const outputSqlPath = 'scratch/import_data.sql';

try {
    const workbook = XLSX.readFile(excelFilePath);
    const sheetName = workbook.SheetNames[0];
    const worksheet = workbook.Sheets[sheetName];
    const data = XLSX.utils.sheet_to_json(worksheet);

    const recipes = {};

    data.forEach(row => {
        const recipeName = row['Receta'];
        const microsId = row['MICROS ID'] || '';
        const totalCost = row['Costo Receta (€)'] || 0;

        if (!recipes[recipeName]) {
            recipes[recipeName] = {
                micros_id: microsId,
                name: recipeName,
                total_cost: totalCost,
                ingredients: []
            };
        }

        recipes[recipeName].ingredients.push({
            ingredient_name: row['Ingrediente'],
            is_sub_recipe: row['Sub-Receta'] === 'Sí' ? 1 : 0,
            unit: row['Unidad'],
            quantity_dirty: row['Cant. Sucia'] || 0,
            quantity_clean: row['Cant. Limpia'] || 0,
            cost_dirty: row['Costo Sucio (€)'] || 0,
            cost_clean: row['Costo Limpio (€)'] || 0
        });
    });

    let sql = 'DELETE FROM historical_recipe_ingredients;\n';
    sql += 'DELETE FROM historical_recipes;\n';

    Object.values(recipes).forEach((recipe, index) => {
        const recipeId = index + 1;
        sql += `INSERT INTO historical_recipes (id, micros_id, name, total_cost) VALUES (${recipeId}, '${recipe.micros_id.toString().replace(/'/g, "''")}', '${recipe.name.replace(/'/g, "''")}', ${recipe.total_cost});\n`;
        
        recipe.ingredients.forEach(ing => {
            sql += `INSERT INTO historical_recipe_ingredients (recipe_id, ingredient_name, is_sub_recipe, unit, quantity_dirty, quantity_clean, cost_dirty, cost_clean) VALUES (${recipeId}, '${ing.ingredient_name.replace(/'/g, "''")}', ${ing.is_sub_recipe}, '${(ing.unit || '').replace(/'/g, "''")}', ${ing.quantity_dirty}, ${ing.quantity_clean}, ${ing.cost_dirty}, ${ing.cost_clean});\n`;
        });
    });

    fs.writeFileSync(outputSqlPath, sql);
    console.log(`Generated SQL with ${Object.keys(recipes).length} recipes and ${data.length} ingredient rows.`);
} catch (error) {
    console.error('Error generating SQL:', error.message);
    process.exit(1);
}
