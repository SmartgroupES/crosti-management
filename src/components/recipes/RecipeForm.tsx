'use client';

import React, { useState } from 'react';
import { Plus, Trash2, Save, X, ChefHat } from 'lucide-react';

interface Ingredient {
  ingredient_name: string;
  is_sub_recipe: boolean;
  unit: string;
  quantity_dirty: number;
  quantity_clean: number;
  cost_dirty: number;
  cost_clean: number;
}

interface RecipeFormProps {
  onClose: () => void;
  onSuccess: () => void;
}

export default function RecipeForm({ onClose, onSuccess }: RecipeFormProps) {
  const [name, setName] = useState('');
  const [grupo, setGrupo] = useState('PANADERIA');
  const [familia, setFamilia] = useState('');
  const [microsId, setMicrosId] = useState('');
  const [ingredients, setIngredients] = useState<Ingredient[]>([]);
  const [isSubmitting, setIsSubmitting] = useState(false);

  const addIngredient = () => {
    setIngredients([...ingredients, {
      ingredient_name: '',
      is_sub_recipe: false,
      unit: '',
      quantity_dirty: 0,
      quantity_clean: 0,
      cost_dirty: 0,
      cost_clean: 0
    }]);
  };

  const removeIngredient = (index: number) => {
    setIngredients(ingredients.filter((_, i) => i !== index));
  };

  const updateIngredient = (index: number, field: keyof Ingredient, value: any) => {
    const newIngredients = [...ingredients];
    newIngredients[index] = { ...newIngredients[index], [field]: value };
    setIngredients(newIngredients);
  };

  const calculateTotalCost = () => {
    return ingredients.reduce((sum, ing) => sum + (Number(ing.cost_dirty) || 0), 0);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);

    try {
      const response = await fetch('/api/recetas', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          name,
          grupo,
          familia,
          micros_id: microsId,
          total_cost: calculateTotalCost(),
          ingredients
        }),
      });

      if (response.ok) {
        onSuccess();
        onClose();
      } else {
        alert('Error al guardar la receta');
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Error de conexión');
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div style={{
      position: 'fixed',
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      backgroundColor: 'rgba(0,0,0,0.5)',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      zIndex: 1000,
      padding: '20px',
      backdropFilter: 'blur(4px)'
    }}>
      <div style={{
        backgroundColor: 'white',
        borderRadius: '24px',
        width: '100%',
        maxWidth: '1000px',
        maxHeight: '90vh',
        overflowY: 'auto',
        padding: '40px',
        boxShadow: '0 25px 50px -12px rgba(0, 0, 0, 0.25)'
      }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '32px' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
            <div style={{ backgroundColor: '#FAF9F6', padding: '10px', borderRadius: '12px', border: '1px solid #E5E7EB' }}>
              <ChefHat size={20} color="#801515" />
            </div>
            <h2 style={{ fontSize: '14px', fontWeight: '900', margin: 0 }}>NUEVA RECETA / SUB-RECETA</h2>
          </div>
          <button onClick={onClose} style={{ background: 'none', border: 'none', cursor: 'pointer', color: '#9CA3AF' }}>
            <X size={20} />
          </button>
        </div>

        <form onSubmit={handleSubmit}>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1.5fr', gap: '16px', marginBottom: '16px' }}>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
              <label style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF' }}>CÓDIGO (AUTO)</label>
              <input
                disabled
                type="text"
                placeholder="AUTOGENERADO"
                style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '800', backgroundColor: '#F9FAFB' }}
              />
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
              <label style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF' }}>SUB-RECETA</label>
              <select
                style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '800' }}
              >
                <option value="NO">NO</option>
                <option value="SI">SI</option>
              </select>
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
              <label style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF' }}>DESCRIPCIÓN PROD. TERMINADO</label>
              <input
                required
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="NOMBRE DEL PRODUCTO FINAL"
                style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '800' }}
              />
            </div>
          </div>

          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px', marginBottom: '24px' }}>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
              <label style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF' }}>GRUPO</label>
              <select
                value={grupo}
                onChange={(e) => setGrupo(e.target.value)}
                style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '800' }}
              >
                <option value="PANADERIA">PANADERIA</option>
                <option value="BOLLERIA">BOLLERIA</option>
                <option value="REPOSTERIA">REPOSTERIA</option>
                <option value="SALADO">SALADO</option>
                <option value="BEBIDAS">BEBIDAS</option>
                <option value="OTROS">OTROS</option>
              </select>
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
              <label style={{ fontSize: '10px', fontWeight: '900', color: '#9CA3AF' }}>FAMILIA</label>
              <input
                type="text"
                value={familia}
                onChange={(e) => setFamilia(e.target.value)}
                placeholder="FAMILIA (EJ: HOGAZAS, CROISSANTS...)"
                style={{ padding: '10px', borderRadius: '10px', border: '1px solid #E5E7EB', fontSize: '13px', fontWeight: '800' }}
              />
            </div>
          </div>

          <div style={{ marginBottom: '20px' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '16px' }}>
              <h3 style={{ fontSize: '12px', fontWeight: '900', color: '#1A1A1A' }}>INGREDIENTES Y COSTOS</h3>
              <button
                type="button"
                onClick={addIngredient}
                style={{
                  display: 'flex',
                  alignItems: 'center',
                  gap: '6px',
                  backgroundColor: '#1A1A1A',
                  color: 'white',
                  padding: '8px 16px',
                  borderRadius: '10px',
                  fontSize: '11px',
                  fontWeight: '900',
                  border: 'none',
                  cursor: 'pointer'
                }}
              >
                <Plus size={14} /> AGREGAR INGREDIENTE
              </button>
            </div>

            <div style={{ overflowX: 'auto' }}>
              <table style={{ width: '100%', borderCollapse: 'collapse' }}>
                <thead>
                  <tr style={{ textAlign: 'left', borderBottom: '1px solid #F3F4F6' }}>
                    <th style={{ padding: '12px 8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>INGREDIENTE</th>
                    <th style={{ padding: '12px 8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900' }}>UNIDAD</th>
                    <th style={{ padding: '12px 8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'center' }}>CANTIDAD</th>
                    <th style={{ padding: '12px 8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right' }}>COSTO</th>
                    <th style={{ padding: '12px 8px', fontSize: '10px', color: '#9CA3AF', fontWeight: '900', textAlign: 'right' }}>TOTAL</th>
                    <th style={{ padding: '12px 8px' }}></th>
                  </tr>
                </thead>
                <tbody>
                  {ingredients.map((ing, index) => (
                    <tr key={index} style={{ borderBottom: '1px solid #F3F4F6' }}>
                      <td style={{ padding: '8px' }}>
                        <input
                          required
                          type="text"
                          value={ing.ingredient_name}
                          onChange={(e) => updateIngredient(index, 'ingredient_name', e.target.value)}
                          placeholder="NOMBRE"
                          style={{ width: '100%', padding: '8px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '12px', fontWeight: '700' }}
                        />
                      </td>
                      <td style={{ padding: '8px' }}>
                        <select
                          value={ing.unit}
                          onChange={(e) => updateIngredient(index, 'unit', e.target.value)}
                          style={{ padding: '8px', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '12px', fontWeight: '700' }}
                        >
                          <option value="">UNIDAD</option>
                          <option value="UNIDAD">UNIDAD</option>
                          <option value="LITRO">LITRO</option>
                          <option value="KILO">KILO</option>
                          <option value="GRAMOS">GRAMOS</option>
                        </select>
                      </td>
                      <td style={{ padding: '8px', textAlign: 'center' }}>
                        <input
                          type="number"
                          step="0.001"
                          value={ing.quantity_dirty}
                          onChange={(e) => updateIngredient(index, 'quantity_dirty', Number(e.target.value))}
                          style={{ width: '70px', padding: '8px', textAlign: 'center', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '12px', fontWeight: '800' }}
                        />
                      </td>
                      <td style={{ padding: '8px', textAlign: 'right' }}>
                        <input
                          type="number"
                          step="0.001"
                          value={ing.cost_dirty}
                          onChange={(e) => updateIngredient(index, 'cost_dirty', Number(e.target.value))}
                          style={{ width: '80px', padding: '8px', textAlign: 'right', borderRadius: '8px', border: '1px solid #E5E7EB', fontSize: '12px', fontWeight: '800' }}
                        />
                      </td>
                      <td style={{ padding: '8px', textAlign: 'right', fontSize: '12px', fontWeight: '900', color: '#801515' }}>
                        {(ing.quantity_dirty * ing.cost_dirty).toFixed(3)}€
                      </td>
                      <td style={{ padding: '8px' }}>
                        <button
                          type="button"
                          onClick={() => removeIngredient(index)}
                          style={{ background: 'none', border: 'none', cursor: 'pointer', color: '#EF4444' }}
                        >
                          <Trash2 size={14} />
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              {ingredients.length === 0 && (
                <div style={{ textAlign: 'center', padding: '30px', color: '#9CA3AF', backgroundColor: '#F9FAFB', borderRadius: '12px', marginTop: '12px', fontSize: '11px', fontWeight: '700' }}>
                  AÚN NO HAY INGREDIENTES EN ESTA RECETA
                </div>
              )}
            </div>
          </div>

          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '40px', paddingTop: '24px', borderTop: '1px solid #F3F4F6' }}>
            <div style={{ fontSize: '18px', fontWeight: 'bold' }}>
              COSTO TOTAL ESTIMADO: <span style={{ color: '#EF4444' }}>{calculateTotalCost().toFixed(3)} €</span>
            </div>
            <div style={{ display: 'flex', gap: '16px' }}>
              <button
                type="button"
                onClick={onClose}
                style={{
                  padding: '12px 24px',
                  borderRadius: '12px',
                  border: '1px solid #E5E7EB',
                  backgroundColor: 'white',
                  fontWeight: 'bold',
                  cursor: 'pointer'
                }}
              >
                CANCELAR
              </button>
              <button
                disabled={isSubmitting || ingredients.length === 0}
                type="submit"
                style={{
                  display: 'flex',
                  alignItems: 'center',
                  gap: '8px',
                  padding: '12px 32px',
                  borderRadius: '12px',
                  backgroundColor: '#1A1A1A',
                  color: 'white',
                  border: 'none',
                  fontWeight: 'bold',
                  cursor: (isSubmitting || ingredients.length === 0) ? 'not-allowed' : 'pointer',
                  opacity: (isSubmitting || ingredients.length === 0) ? 0.7 : 1
                }}
              >
                {isSubmitting ? 'GUARDANDO...' : <><Save size={18} /> GUARDAR RECETA</>}
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
}
