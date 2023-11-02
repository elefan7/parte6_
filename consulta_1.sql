SELECT c.nombre AS categoria, AVG(p.precio_unitario) AS precio_promedio
FROM producto p
JOIN categoria c ON p.categoria_id = c.id
GROUP BY c.nombre, c.id
ORDER BY c.id;

SELECT * FROM categoria;