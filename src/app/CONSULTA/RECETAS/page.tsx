'use client';

import React, { useState, useEffect } from 'react';
import { BookOpen, Hash, Calculator, Clipboard, Search, FileText, Download, Plus, ChevronDown, ChevronRight, ChefHat } from 'lucide-react';
import * as XLSX from 'xlsx';
import RecipeForm from '@/components/recipes/RecipeForm';

interface Ingredient {
  id: number;
  recipe_id: number;
  ingredient_name: string;
  is_sub_recipe: boolean;
  unit: string;
  quantity_dirty: number;
  quantity_clean: number;
  cost_dirty: number;
  cost_clean: number;
}

interface Recipe {
  id: number;
  micros_id: string;
  name: string;
  total_cost: number;
  ingredients: Ingredient[];
}

export default function RecetasPage() {
  const [recipes, setRecipes] = useState<Recipe[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [isFormOpen, setIsFormOpen] = useState(false);

  const handleExportExcel = () => {
    if (!filteredRecipes || filteredRecipes.length === 0) return;

    const exportData = filteredRecipes.flatMap(recipe => 
      recipe.ingredients.map(ing => ({
        'MICROS ID': recipe.micros_id || '',
        'RECETA': recipe.name || '',
        'COSTO RECETA (€)': recipe.total_cost || 0,
        'INGREDIENTE': ing.ingredient_name || '',
        'ES SUB-RECETA': ing.is_sub_recipe ? 'Sí' : 'No',
        'UNIDAD': ing.unit || '',
        'CANT. SUCIA': ing.quantity_dirty || 0,
        'CANT. LIMPIA': ing.quantity_clean || 0,
        'COSTO SUCIO (€)': ing.cost_dirty || 0,
        'COSTO LIMPIO (€)': ing.cost_clean || 0,
      }))
    );

    const ws = XLSX.utils.json_to_sheet(exportData);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, 'Recetas');
    XLSX.writeFile(wb, 'Recetas_Crosti.xlsx');
  };

  const fetchRecipes = async () => {
    setLoading(true);
    try {
      const response = await fetch('/api/recetas');
      const data = await response.json();
      
      if (Array.isArray(data)) {
        setRecipes(data);
      } else {
        console.error('API did not return an array:', data);
        setRecipes([]);
      }
    } catch (error) {
      console.error('Error fetching recipes:', error);
      setRecipes([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchRecipes();
  }, []);

  const filteredRecipes = (Array.isArray(recipes) ? recipes : []).filter(recipe => 
    (recipe.name || '').toLowerCase().includes(searchTerm.toLowerCase()) ||
    (recipe.micros_id || '').toLowerCase().includes(searchTerm.toLowerCase()) ||
    (recipe.ingredients || []).some(ing => (ing.ingredient_name || '').toLowerCase().includes(searchTerm.toLowerCase()))
  );

  const kpis = [
    { label: 'TOTAL RECETAS', value: recipes.length.toString(), subvalue: 'En base de datos', icon: <BookOpen size={24} color="#EF4444" /> },
    { label: 'INGREDIENTES TOTALES', value: recipes.reduce((sum, r) => sum + r.ingredients.length, 0).toString(), subvalue: 'Materias primas y subs', icon: <Hash size={24} color="#666" /> },
    { label: 'COSTO PROMEDIO', value: (recipes.length > 0 ? (recipes.reduce((sum, r) => sum + r.total_cost, 0) / recipes.length).toFixed(2) : '0') + ' €', subvalue: 'Promedio global', icon: <Calculator size={24} color="#EF4444" /> },
    { label: 'RESULTADOS', value: filteredRecipes.length.toString(), subvalue: 'Registros filtrados', icon: <Clipboard size={24} color="#666" /> },
  ];

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '24px', paddingBottom: '40px' }}>
      {/* KPI Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '20px' }}>
        {kpis.map((kpi, idx) => (
          <div key={idx} style={{ backgroundColor: 'white', padding: '24px', borderRadius: '16px', border: '1px solid #E5E7EB', boxShadow: '0 1px 2px rgba(0,0,0,0.05)' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '12px' }}>
              <div style={{ fontSize: '11px', fontWeight: 'bold', color: '#9CA3AF', letterSpacing: '0.5px' }}>{kpi.label}</div>
              {kpi.icon}
            </div>
            <div style={{ fontSize: '24px', fontWeight: '900', color: '#1A1A1A', marginBottom: '4px' }}>{kpi.value}</div>
            <div style={{ fontSize: '12px', color: '#6B7280' }}>{kpi.subvalue}</div>
          </div>
        ))}
      </div>

      {/* Actions Section */}
      <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '20px', border: '1px solid #E5E7EB', boxShadow: '0 1px 2px rgba(0,0,0,0.05)' }}>
        <div style={{ display: 'flex', gap: '20px', alignItems: 'center', flexWrap: 'wrap' }}>
          <div style={{ flex: 1, minWidth: '300px', position: 'relative' }}>
            <input 
              type="text" 
              placeholder="Buscar por receta, Micros ID o ingrediente..." 
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              style={{ width: '100%', padding: '12px 12px 12px 44px', borderRadius: '12px', border: '1px solid #E5E7EB', fontSize: '14px', backgroundColor: '#F9FAFB' }} 
            />
            <Search size={20} style={{ position: 'absolute', left: '14px', top: '50%', transform: 'translateY(-50%)', color: '#9CA3AF' }} />
          </div>
          
          <button 
            onClick={() => setIsFormOpen(true)}
            style={{ 
              backgroundColor: '#1A1A1A', 
              color: 'white', 
              padding: '12px 24px', 
              borderRadius: '12px', 
              fontSize: '14px', 
              fontWeight: 'bold', 
              display: 'flex', 
              alignItems: 'center', 
              gap: '8px', 
              cursor: 'pointer',
              border: 'none',
              transition: 'background-color 0.2s'
            }}
          >
            <Plus size={18} /> Nueva Receta
          </button>
          
          <div style={{ display: 'flex', gap: '8px' }}>
            <button 
              onClick={handleExportExcel}
              style={{ backgroundColor: '#F0FDF4', border: '1px solid #10B981', color: '#10B981', padding: '10px 16px', borderRadius: '10px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '6px', cursor: 'pointer' }}
            >
              <Download size={16} /> Excel
            </button>
            <button style={{ backgroundColor: '#FEF2F2', border: '1px solid #EF4444', color: '#EF4444', padding: '10px 16px', borderRadius: '10px', fontSize: '13px', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '6px', cursor: 'pointer' }}><FileText size={16} /> PDF</button>
          </div>
        </div>
      </div>

      {/* Table Section */}
      <div style={{ backgroundColor: 'white', padding: '0', borderRadius: '20px', border: '1px solid #E5E7EB', boxShadow: '0 4px 6px -1px rgba(0, 0, 0, 0.05)', overflow: 'hidden' }}>
        <div style={{ overflowX: 'auto' }}>
          <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '11px' }}>
            <thead>
              <tr style={{ textAlign: 'left', backgroundColor: '#1A1A1A', color: 'white' }}>
                <th style={{ padding: '16px 12px', width: '40px' }}>#</th>
                <th style={{ padding: '16px 12px' }}>MICROS ID</th>
                <th style={{ padding: '16px 12px' }}>SUB</th>
                <th style={{ padding: '16px 12px' }}>RECETA ▲</th>
                <th style={{ padding: '16px 12px' }}>INGREDIENTE</th>
                <th style={{ padding: '16px 12px' }}>UNIDAD</th>
                <th style={{ padding: '16px 12px', textAlign: 'right' }}>COSTO RECETA</th>
                <th style={{ padding: '16px 12px', textAlign: 'right' }}>CANT. SUCIA</th>
                <th style={{ padding: '16px 12px', textAlign: 'right' }}>CANT. LIMPIA</th>
                <th style={{ padding: '16px 12px', textAlign: 'right' }}>COSTO SUCIO</th>
                <th style={{ padding: '16px 12px', textAlign: 'right' }}>COSTO LIMPIO</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr>
                  <td colSpan={11} style={{ padding: '40px', textAlign: 'center', color: '#6B7280' }}>Cargando recetas...</td>
                </tr>
              ) : filteredRecipes.length === 0 ? (
                <tr>
                  <td colSpan={11} style={{ padding: '40px', textAlign: 'center', color: '#6B7280' }}>No se encontraron recetas.</td>
                </tr>
              ) : filteredRecipes.map((recipe, rIdx) => (
                <React.Fragment key={recipe.id}>
                  {/* Header Row for Recipe */}
                  <tr 
                    style={{ 
                      backgroundColor: '#FAF9F6', 
                      borderBottom: '1px solid #E5E7EB',
                      transition: 'background-color 0.2s'
                    }}
                  >
                    <td style={{ padding: '12px', textAlign: 'center' }}>
                    </td>
                    <td style={{ padding: '12px', color: '#9CA3AF' }}>{recipe.micros_id}</td>
                    <td style={{ padding: '12px' }}>
                      <span style={{ backgroundColor: '#F3F4F6', color: '#666', padding: '2px 6px', borderRadius: '4px', fontSize: '9px', fontWeight: 'bold' }}>RECETA</span>
                    </td>
                    <td style={{ padding: '12px', fontWeight: 'bold', fontSize: '13px' }}>{recipe.name}</td>
                    <td colSpan={2} style={{ padding: '12px', color: '#6B7280', fontStyle: 'italic' }}>{recipe.ingredients.length} ingredientes</td>
                    <td style={{ padding: '12px', textAlign: 'right', fontWeight: 'bold', color: '#EF4444', fontSize: '13px' }}>{recipe.total_cost.toFixed(3)} €</td>
                    <td colSpan={4} style={{ padding: '12px' }}></td>
                  </tr>
                  
                  {/* Ingredient Rows */}
                  {recipe.ingredients.map((ing, iIdx) => (
                    <tr key={ing.id} style={{ borderBottom: '1px solid #F3F4F6', color: '#1A1A1A' }}>
                      <td style={{ padding: '10px 12px', color: '#9CA3AF', textAlign: 'center' }}>{iIdx + 1}</td>
                      <td style={{ padding: '10px 12px', color: '#6B7280' }}>{recipe.micros_id}</td>
                      <td style={{ padding: '10px 12px' }}>
                        <span style={{ 
                          backgroundColor: ing.is_sub_recipe ? '#FEF3C7' : '#F0FDF4', 
                          color: ing.is_sub_recipe ? '#D97706' : '#10B981', 
                          padding: '2px 6px', 
                          borderRadius: '4px', 
                          fontSize: '9px', 
                          fontWeight: 'bold' 
                        }}>
                          {ing.is_sub_recipe ? 'Sí' : 'No'}
                        </span>
                      </td>
                      <td style={{ padding: '10px 12px', color: '#9CA3AF' }}>{recipe.name}</td>
                      <td style={{ padding: '10px 12px', fontWeight: '500' }}>{ing.ingredient_name}</td>
                      <td style={{ padding: '10px 12px', color: '#6B7280' }}>{ing.unit}</td>
                      <td style={{ padding: '10px 12px', textAlign: 'right', fontWeight: 'bold', color: '#D97706' }}>{recipe.total_cost.toFixed(3)} €</td>
                      <td style={{ padding: '10px 12px', textAlign: 'right', color: '#6B7280' }}>{ing.quantity_dirty.toFixed(3)}</td>
                      <td style={{ padding: '10px 12px', textAlign: 'right', color: '#6B7280' }}>{ing.quantity_clean.toFixed(3)}</td>
                      <td style={{ padding: '10px 12px', textAlign: 'right', fontWeight: '500' }}>{ing.cost_dirty.toFixed(3)} €</td>
                      <td style={{ padding: '10px 12px', textAlign: 'right', fontWeight: '500' }}>{ing.cost_clean.toFixed(3)} €</td>
                    </tr>
                  ))}
                </React.Fragment>
              ))}
            </tbody>
          </table>
        </div>
      </div>

      {isFormOpen && (
        <RecipeForm 
          onClose={() => setIsFormOpen(false)} 
          onSuccess={fetchRecipes}
        />
      )}
    </div>
  );
}
