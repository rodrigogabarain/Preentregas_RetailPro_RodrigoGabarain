# Proyecto RetailPro - Curso SQL (Coderhouse)

## Descripción
Este repositorio contiene las preentregas del curso de SQL.  
El proyecto se centra en la base de datos **Ventas_Tech_DB**, utilizada para simular un negocio de retail y analizar sus ventas.

Cada módulo agrega nuevas consultas y funcionalidades sobre la misma base.

---

## Entregas incluidas

### 📍 M1 - Primer entrega
- Archivo: `m1_RetailPro_RodrigoGabarainv1.pdf`
- Contenido: Brief analítico — definición del problema de negocio.

### 📍 M2 - Segunda entrega
- Archivo: `m2_RetailPro_RodrigoGabarainv1.pdf`
- Contenido: Modelo de Datos RetailPro — diagrama ER y tablas.

### 📍 M3 - Creación de la base
- Archivo: `m3_ventas_tech_db.sql`
- Contenido: creación de la base de datos `Ventas_Tech_DB`, tablas, relaciones y carga de datos de prueba.
- Objetivo: tener la estructura inicial para trabajar en los siguientes módulos.

### 📍 M4 - Consultas de negocio
- Archivo: `m4_consultas_negocio.sql`
- Contenido: 4 consultas sobre la tabla `ventas`:
  1. Resumen ejecutivo mensual (total facturado, pedidos, ticket promedio).
  2. Ranking de productos (Top 5 por facturación).
  3. Clientes recurrentes (más de un pedido).
  4. Meses por encima/por debajo del promedio.
- Bloque de hallazgos: comentarios finales con conclusiones sobre los resultados.
- Objetivo: obtener métricas clave del negocio a partir de la tabla de ventas.

📍 M5 - Consultas con JOINs
- Archivo: `m5_consultas_joins.sql`
- Contenido: 4 consultas sobre la base Ventas_Tech_DB:
  1. **Vista base del proyecto (INNER JOIN)** → combina ventas con clientes, productos y categorías para obtener fecha,           cliente, producto, cantidad, precio unitario, total de venta y columnas descriptivas.
  2. **Clientes sin ventas (LEFT JOIN)** → identifica clientes registrados que aún no realizaron compras, mostrando nombre,       email y fecha de registro.
  3. **Productos sin ventas (LEFT JOIN)** → identifica productos del catálogo sin ventas, mostrando nombre del producto,          categoría y precio.
  4. **Consolidado por canal (UNION ALL)** → separa las ventas en dos grupos de clientes (ejemplo: clientes 1–3 como              “Online” y clientes 4–5 como “Presencial”), creando la columna literal `canal` y agrupando el total por origen.
- Objetivo: enriquecer el análisis con vistas combinadas y detectar clientes/productos sin actividad, además de consolidar ventas por canal como insumo para futuros dashboards.
---

## Organización de archivos
- Archivos `.sql` → en la raíz del repositorio.  
- PDFs de entregas `.pdf` → en la raíz del repositorio.

---

## Autor
**Rodrigo Gabarain**  
Curso SQL - Coderhouse
