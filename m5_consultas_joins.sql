-- ============================================
-- Módulo 5 - Consultas con JOINs
-- Proyecto RetailPro - Rodrigo Gabarain
-- ============================================

-- Consulta 1: Vista base del proyecto (INNER JOIN)
-- Ventas con datos de cliente, producto y categoría
SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre AS nombre_cliente,
    c.email,
    c.ciudad,
    p.id_producto,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    (v.cantidad * v.precio_unitario) AS total_venta
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN categorias cat ON p.id_categoria = cat.id_categoria
ORDER BY v.fecha_venta;

-- ------------------------------------------------

-- Consulta 2: Clientes sin ventas (LEFT JOIN)
SELECT
    c.nombre AS nombre_cliente,
    c.email,
    c.fecha_registro
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;

-- ------------------------------------------------

-- Consulta 3: Productos sin ventas (LEFT JOIN)
SELECT
    p.id_producto,
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos p
LEFT JOIN ventas v ON p.id_producto = v.id_producto
INNER JOIN categorias cat ON p.id_categoria = cat.id_categoria
WHERE v.id_producto IS NULL;

-- ------------------------------------------------

-- Consulta 4: Consolidado por canal (UNION ALL)
-- Criterio: separar clientes en dos grupos (Online vs Presencial)
SELECT canal, SUM(total) AS total_por_canal
FROM (
    SELECT
        (v.cantidad * v.precio_unitario) AS total,
        'Online' AS canal
    FROM ventas v
    WHERE v.id_cliente IN (1,2,3)   -- clientes que compran online

    UNION ALL

    SELECT
        (v.cantidad * v.precio_unitario) AS total,
        'Presencial' AS canal
    FROM ventas v
    WHERE v.id_cliente IN (4,5)     -- clientes que compran presencial
) AS ventas_con_canal
GROUP BY canal;
