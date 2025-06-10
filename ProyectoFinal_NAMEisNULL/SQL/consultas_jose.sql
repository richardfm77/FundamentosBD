
--Negocios que tienen productos agotados
SELECT 
    n.IdNegocio,
    n.NombreNegocio,
    p.NombreProducto,
    p.Stock
FROM GatitaEmprendedora.Negocio n
JOIN GatitaEmprendedora.Producto p ON p.IdNegocio = n.IdNegocio
WHERE p.Stock = 0;


--Servicios que no han sido contratado
SELECT 
    s.IdNegocio,
    s.IdServicio,
    s.NombreServicio
FROM GatitaEmprendedora.Servicio s
LEFT JOIN GatitaEmprendedora.RegistrarServicio rs 
    ON rs.IdNegocio = s.IdNegocio AND rs.IdServicio = s.IdServicio
WHERE rs.IdServicio IS NULL;


--Productos que ya esten caducados
SELECT 
    p.IdProducto,
    p.NombreProducto,
    pr.FechaCaducidad
FROM GatitaEmprendedora.Producto p
JOIN GatitaEmprendedora.Perecedero pr ON p.IdNegocio = pr.IdNegocio AND p.IdProducto = pr.IdProducto
WHERE pr.FechaCaducidad < CURRENT_DATE;


--Clientes que han comprado en mas de un negocio
SELECT 
    c.IdCliente,
    c.NombreCliente || ' ' || c.APaternoCliente || ' ' || c.AMaternoCliente AS Cliente,
    COUNT(DISTINCT t.IdNegocio) AS NegociosDistintos
FROM GatitaEmprendedora.Cliente c
JOIN GatitaEmprendedora.Ticket t ON t.IdCliente = c.IdCliente
GROUP BY c.IdCliente, Cliente
HAVING COUNT(DISTINCT t.IdNegocio) > 1
ORDER BY NegociosDistintos DESC;


--Productos por stock y que negocio lo vende
SELECT 
    p.IdProducto,
    p.NombreProducto,
    p.Tipo,
    p.Stock,
    n.NombreNegocio
FROM GatitaEmprendedora.Producto p
JOIN GatitaEmprendedora.Negocio n ON p.IdNegocio = n.IdNegocio
ORDER BY p.NombreProducto;





