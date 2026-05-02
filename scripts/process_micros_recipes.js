const fs = require('fs');
const data = JSON.parse(fs.readFileSync('scratch/recipes_data.json', 'utf8'));

const recipes = {};

data.forEach(row => {
    const name = row['Receta'];
    if (!recipes[name]) {
        recipes[name] = {
            micros_id: row['MICROS ID'],
            total_cost: row['Costo Receta (€)'],
            ingredients: []
        };
    }
    recipes[name].ingredients.push({
        name: row['Ingrediente'],
        is_sub: row['Sub-Receta'] === 'Sí',
        unit: row['Unidad'],
        q_dirty: row['Cant. Sucia'],
        q_clean: row['Cant. Limpia'],
        c_dirty: row['Costo Sucio (€)'],
        c_clean: row['Costo Limpio (€)']
    });
});

let sql = "DELETE FROM historical_recipe_ingredients;\nDELETE FROM historical_recipes;\n";

Object.entries(recipes).forEach(([name, info], index) => {
    const recipeId = index + 1;
    sql += `INSERT INTO historical_recipes (id, micros_id, name, total_cost) VALUES (${recipeId}, '${info.micros_id}', '${name.replace(/'/g, "''")}', ${info.total_cost});\n`;
    
    info.ingredients.forEach(ing => {
        sql += `INSERT INTO historical_recipe_ingredients (recipe_id, ingredient_name, is_sub_recipe, unit, quantity_dirty, quantity_clean, cost_dirty, cost_clean) VALUES (${recipeId}, '${ing.name.replace(/'/g, "''")}', ${ing.is_sub ? 1 : 0}, '${ing.unit}', ${ing.q_dirty}, ${ing.q_clean}, ${ing.c_dirty}, ${ing.c_clean});\n`;
    });
});

fs.writeFileSync('scripts/seed_micros_recipes.sql', sql);
