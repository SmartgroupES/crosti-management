# Informe de Inteligencia Culinaria - Crosti Hub v99

**Fecha:** 02 de Mayo de 2026
**Versión de Backup:** v99
**Destinatario:** ncarrillok@gmail.com

## Resumen de Innovación
Se ha implementado un sistema avanzado de visualización de recetas que permite un análisis profundo y estructurado de cada producto, discriminando entre ingredientes base y componentes de sub-recetas.

### 1. Visualización Anidada (Deep Analysis)
*   **Interacción Inteligente:** Al colocar el cursor sobre el nombre de cualquier receta en el listado, aparecerá un detalle desplegable (tooltip) organizado de forma jerárquica.
*   **Discriminación de Origen:**
    *   **INGREDIENTES BASE:** Muestra los componentes que pertenecen directamente a la receta del producto terminado.
    *   **SUB-RECETAS:** Identifica automáticamente las sub-elaboraciones utilizadas (ej. `SUB QUESO HIERBAS`) y agrupa bajo ellas sus ingredientes específicos (ej. Queso fresco, Tomillo, etc.).
*   **Orden Lógico:** La información se presenta primero con la base del producto y posteriormente con cada una de las sub-recetas identificadas, tal como se solicitó.

### 2. Lógica de Negocio
*   El sistema ahora analiza en tiempo real las relaciones entre la tabla principal de recetas y la tabla de sub-recetas, vinculando componentes por nombre y pertenencia técnica.

### 3. Despliegue y Backup
*   **Cloudflare Pages:** Despliegue v154 completado.
*   **Google Drive:** Sincronización de `backup_v99.zip` completada.

---
*Este es un informe automático generado por Antigravity AI.*
