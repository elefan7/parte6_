SELECT sucursal.nombre AS sucursal, SUM(orden.total) AS total_ventas
FROM orden
INNER JOIN sucursal ON orden.sucursal_id = sucursal.id
GROUP BY sucursal.nombre;