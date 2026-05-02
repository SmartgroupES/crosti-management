
import json
import os

# Mapping rules: (Substring to match, Grupo, Familia)
MAPPING_RULES = [
    ("HOGAZA", "PANADERIA", "HOGAZAS"),
    ("ACEITUNAS", "PANADERIA", "HOGAZAS"),
    ("BARRA", "PANADERIA", "PANES"),
    ("BIZCOCHO", "REPOSTERIA", "BIZCOCHOS"),
    ("BOWL", "SALADO", "BOWLS"),
    ("BROWNIE", "REPOSTERIA", "BROWNIES"),
    ("CAFE", "BEBIDAS", "CAFES"),
    ("CARACOLA", "BOLLERIA", "CARACOLAS"),
    ("CHEESECAKE", "REPOSTERIA", "CHEESECAKES"),
    ("COOKIE", "REPOSTERIA", "COOKIES"),
    ("CROISSANT", "BOLLERIA", "CROISSANTS"),
    ("ENSALADA", "SALADO", "ENSALADAS"),
    ("FINANCIER", "REPOSTERIA", "FINANCIERS"),
    ("GALLETA", "REPOSTERIA", "GALLETAS"),
    ("GRANOLA", "REPOSTERIA", "GRANOLAS"),
    ("INFUSION", "BEBIDAS", "INFUSIONES"),
    ("JUGO", "BEBIDAS", "JUGOS"),
    ("MAGDALENA", "BOLLERIA", "MAGDALENAS"),
    ("NAPOLITANA", "BOLLERIA", "NAPOLITANAS"),
    ("NEW YORK ROLL", "BOLLERIA", "NEW YORK ROLLS"),
    ("PALMERA", "BOLLERIA", "PALMERAS"),
    ("PAN", "PANADERIA", "PANES"),
    ("PASTEL", "REPOSTERIA", "PASTELES"),
    ("PLUMCAKE", "REPOSTERIA", "PLUMCAKES"),
    ("PULGA", "SALADO", "PULGAS"),
    ("QUICHE", "SALADO", "QUICHES"),
    ("QUICHÉ", "SALADO", "QUICHES"),
    ("SANDWICH", "SALADO", "SANDWICHES"),
    ("TARTA", "REPOSTERIA", "TARTAS"),
    ("TARTALETA", "REPOSTERIA", "TARTALETAS"),
    ("TOSTA", "SALADO", "TOSTAS"),
    ("YOGUR", "REPOSTERIA", "YOGURES"),
    ("ZUMO", "BEBIDAS", "ZUMOS"),
]

def get_classification(name):
    name_upper = name.upper()
    for substring, grupo, familia in MAPPING_RULES:
        if substring in name_upper:
            return grupo, familia
    return "OTROS", "VARIOS"

def main():
    json_path = 'src/lib/recetas.json'
    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Process recetas
    for receta in data.get('recetas', []):
        name = receta.get('PROD. TERMINADO', '')
        grupo, familia = get_classification(name)
        receta['GRUPO'] = grupo
        receta['FAMILIA'] = familia

    # Process subRecetas
    for sub in data.get('subRecetas', []):
        name = sub.get('PROD. TERMINADO', '')
        grupo, familia = get_classification(name)
        sub['GRUPO'] = grupo
        sub['FAMILIA'] = familia

    with open(json_path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    
    print(f"Updated {len(data.get('recetas', []))} recipes and {len(data.get('subRecetas', []))} sub-recipes.")

if __name__ == "__main__":
    main()
