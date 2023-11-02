SELECT c.id AS categoria_id, c.nombre AS categoria, SUM(s.cantidad) AS c_total
FROM categoria c
LEFT JOIN producto p ON c.id = p.categoria_id
LEFT JOIN stock s ON p.id = s.producto_id
GROUP BY c.id, c.nombre
ORDER BY c.id;

SELECT * FROM producto;