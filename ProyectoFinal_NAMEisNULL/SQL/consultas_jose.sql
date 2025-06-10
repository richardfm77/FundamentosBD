
--Consulta 6: Negocios que tienen productos agotados
SELECT 
    -- Seleccionamos el ID del negocio que vende el producto agotado
    n.IdNegocio,
    -- Seleccionamos el nombre del negocio
    n.NombreNegocio,
    -- Seleccionamos el nombre del producto sin stock
    p.NombreProducto,
    -- Seleccionamos el stock actual
    p.Stock
FROM GatitaEmprendedora.Negocio n
-- Unimos los negocios con sus productos
JOIN GatitaEmprendedora.Producto p ON p.IdNegocio = n.IdNegocio
-- Filtramos unicamente los productos que tienen stock agotado
WHERE p.Stock = 0;



-- Consulta 7: Servicios que no se han contratado
SELECT 
    -- ID del negocio que ofrece el servicio
    s.IdNegocio,   
    -- ID del servicio que no ha sido contratado
    s.IdServicio,    
    -- Nombre del servicio no contratado
    s.NombreServicio

FROM GatitaEmprendedora.Servicio s
-- Usamos LEFT JOIN para incluir todos los servicios, aunque no tengan registros
LEFT JOIN GatitaEmprendedora.RegistrarServicio rs 
    ON rs.IdNegocio = s.IdNegocio AND rs.IdServicio = s.IdServicio

-- Filtramos los que no tienen contrataciones-- Consulta 7: Servicios que no se han contratado
SELECT 
    -- ID del negocio que ofrece el servicio
    s.IdNegocio,
    
    -- ID del servicio que no ha sido contratado
    s.IdServicio,
    
    -- Nombre del servicio no contratado
    s.NombreServicio

FROM GatitaEmprendedora.Servicio s

-- Usamos LEFT JOIN para incluir todos los servicios, aunque no tengan registros
LEFT JOIN GatitaEmprendedora.RegistrarServicio rs 
    ON rs.IdNegocio = s.IdNegocio AND rs.IdServicio = s.IdServicio

-- Filtramos los que no tienen contrataciones, no hay coincidencias en RegistrarServicio
WHERE rs.IdServicio IS NULL;

WHERE rs.IdServicio IS NULL;




-- Consulta 8: Productos que ya están caducados
SELECT 
    --Seleccionamos ID del producto
    p.IdProducto,
    
    --Seleccionamos el nombre del producto caducado
    p.NombreProducto,
    
    --Seleccionamos la fecha de caducidad
    pr.FechaCaducidad

FROM GatitaEmprendedora.Producto p

-- Unimos productos con su información perecedera
JOIN GatitaEmprendedora.Perecedero pr 
    ON p.IdNegocio = pr.IdNegocio AND p.IdProducto = pr.IdProducto

-- Filtramos aquellos cuya fecha de caducidad ya pasó de la fecha actual
WHERE pr.FechaCaducidad < CURRENT_DATE;



--Consulta 9: Ganancias totales por negocio
SELECT 
    -- Seleccionamos el ID único del negocio
    n.IdNegocio,    
    -- Mostramos el nombre comercial del negocio
    n.NombreNegocio,    
    -- Calculamos el total de ingresos combinando productos y servicios:
    -- Precio del producto * cantidad vendida + precio del servicio
    -- Se usa COALESCE para reemplazar valores nulos con 0     
    ROUND(SUM(
        COALESCE(p.Precio::NUMERIC * rp.Cantidad, 0) + 
        COALESCE(s.PrecioServicio::NUMERIC, 0)
    ), 2) AS TotalGanado
    
FROM GatitaEmprendedora.Negocio n
-- Relacionamos los productos que ofrece el negocio
LEFT JOIN GatitaEmprendedora.Producto p ON n.IdNegocio = p.IdNegocio
-- Relacionamos las ventas de productos (ticket, cantidad)
LEFT JOIN GatitaEmprendedora.RegistrarProducto rp 
    ON rp.IdNegocio = p.IdNegocio AND rp.IdProducto = p.IdProducto
-- Relacionamos los servicios que ofrece el negocio
LEFT JOIN GatitaEmprendedora.Servicio s ON n.IdNegocio = s.IdNegocio
-- Relacionamos los registros de contratación de servicios
LEFT JOIN GatitaEmprendedora.RegistrarServicio rs 
    ON rs.IdNegocio = s.IdNegocio AND rs.IdServicio = s.IdServicio

-- Agrupamos la suma de ingresos por negocio
GROUP BY n.IdNegocio, n.NombreNegocio

-- Ordenamos de mayor a menor según el total ganado
ORDER BY TotalGanado DESC;




-- Consulta 10: Productos por stock y qué negocio los vende
SELECT 
    -- ID del producto
    p.IdProducto,   
    -- Nombre del producto
    p.NombreProducto,   
    -- Tipo o categoría del producto
    p.Tipo,    
    -- Cantidad disponible en stock
    p.Stock,    
    -- Nombre del negocio que lo ofrece
    n.NombreNegocio

FROM GatitaEmprendedora.Producto p

-- Unimos el producto con su negocio
JOIN GatitaEmprendedora.Negocio n ON p.IdNegocio = n.IdNegocio

-- Mostramos solo los productos con stock mayor a cero
WHERE p.Stock > 0

-- Ordenamos alfabéticamente por nombre del producto
ORDER BY p.NombreProducto;










