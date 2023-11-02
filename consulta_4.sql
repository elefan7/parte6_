SELECT cliente.nombre AS cliente, SUM(orden.total) AS total_compras
FROM cliente
JOIN orden ON cliente.id = orden.cliente_id
GROUP BY cliente.nombre
ORDER BY total_compras DESC
LIMIT 1;
