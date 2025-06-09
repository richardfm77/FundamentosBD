-- Consulta 1: Listar los bazares que tienen modalidad 'Físico'.
-- Filtra los bazares para mostrar únicamente los eventos presenciales.
SELECT NombreBazar, Calle, Colonia, Estado, FechaInicio, FechaFin
FROM GatitaEmprendedora.Bazar
WHERE Modalidad = 'presencial';

-- Consulta 2: Obtener los tickets donde la comisión para el bazar fue mayor a $180.00.
-- Filtra las ventas más significativas en términos de comisión generada.
SELECT
    t.IdTicket,
    n.NombreNegocio,
    b.NombreBazar,
    t.ComisionBazar
FROM
    GatitaEmprendedora.Ticket AS t
JOIN
    GatitaEmprendedora.Negocio AS n ON t.IdNegocio = n.IdNegocio
JOIN
    GatitaEmprendedora.Bazar AS b ON t.IdBazar = b.IdBazar
WHERE
    t.ComisionBazar > 140.00
ORDER BY
    t.ComisionBazar DESC;

-- Consulta 3: Clientes que han comprado en más de 2 categorías.
-- Esta consulta identifica a los clientes con los intereses de compra más diversos.
SELECT
    c.IdCliente,
    c.NombreCliente || ' ' || c.APaternoCliente || ' ' || c.AMaternoCliente AS NombreCompleto,
    COUNT(DISTINCT cat.IdCategoria) AS NumeroDeCategoriasDistintas
FROM
    GatitaEmprendedora.Cliente AS c
JOIN
    GatitaEmprendedora.Ticket AS t ON c.IdCliente = t.IdCliente
JOIN
    GatitaEmprendedora.Vender AS v ON t.IdTicket = v.IdTicket
JOIN
    GatitaEmprendedora.Producto AS p ON v.IdProducto = p.IdProducto
JOIN
    GatitaEmprendedora.CategoriaProducto AS cp ON p.IdProducto = cp.IdProducto
JOIN
    GatitaEmprendedora.Categoria AS cat ON cp.IdCategoria = cat.IdCategoria
GROUP BY
    c.IdCliente, c.NombreCliente, c.APaternoCliente, c.AMaternoCliente
HAVING
    COUNT(DISTINCT cat.IdCategoria) > 1
ORDER BY
    NumeroDeCategoriasDistintas DESC, NombreCompleto ASC;

-- Consulta 4: Análisis de rendimiento por bazar
-- Calcula para cada bazar el número de ventas, la comisión total generada y la comisión promedio por venta.
SELECT
    b.NombreBazar,
    b.Estado,
    b.Modalidad,
    COUNT(t.IdTicket) AS NumeroDeVentas,
    SUM(t.ComisionBazar) AS ComisionTotal,
    AVG(t.ComisionBazar) AS ComisionPromedio
FROM
    GatitaEmprendedora.Bazar AS b
JOIN
    GatitaEmprendedora.Ticket AS t ON b.IdBazar = t.IdBazar
GROUP BY
    b.IdBazar, b.NombreBazar, b.Estado, b.Modalidad
HAVING
    AVG(t.ComisionBazar) > 110.00
ORDER BY
    ComisionPromedio DESC;

-- Consulta 5: Listar productos por popularidad
-- Identifica los productos más populares en todas las ventas, sumando las cantidades registradas en cada ticket.
SELECT
    p.NombreProducto,
    n.NombreNegocio,
    SUM(v.Cantidad) AS CantidadTotalVendida
FROM
    GatitaEmprendedora.Vender AS v
JOIN
    GatitaEmprendedora.Producto AS p ON v.IdProducto = p.IdProducto
JOIN
    GatitaEmprendedora.Negocio AS n ON p.IdNegocio = n.IdNegocio
GROUP BY
    p.NombreProducto, n.NombreNegocio
ORDER BY
    CantidadTotalVendida DESC;

-- Consulta 6: Emprendedores que nacieron entre cierto tiempo
--

SELECT
    NombreEmprendedor,
    APaternoEmprendedor,
    AMaternoEmprendedor,
    FechaNacimiento
FROM
    GatitaEmprendedora.Emprendedor
WHERE
    EXTRACT(YEAR FROM FechaNacimiento) >= 1997
    AND EXTRACT(YEAR FROM FechaNacimiento) <= 2003;
    
--Consulta 7:Lista todos los productos que han sido vendidos al menos una vez.
-- Muestra cada producto que ha tenido alguna venta, sin sumar cantidades, para asegurar un mayor número de registros.
SELECT DISTINCT
    p.NombreProducto,
    n.NombreNegocio
FROM
    GatitaEmprendedora.Vender AS v
JOIN
    GatitaEmprendedora.Producto AS p ON v.IdProducto = p.IdProducto
JOIN
    GatitaEmprendedora.Negocio AS n ON p.IdNegocio = n.IdNegocio
ORDER BY
    p.NombreProducto, n.NombreNegocio;
    
-- Consulta 8: Negocios que han participado en bazares Híbridos o Virtuales
-- Identifica negocios que han tenido presencia en modalidades de bazar específicas (Híbrido o Virtual)
SELECT
    n.IdNegocio,
    n.NombreNegocio,
    n.RFC,
    COUNT(DISTINCT b.IdBazar) AS TotalBazaresHibridosVirtuales
FROM
    GatitaEmprendedora.Negocio AS n
JOIN
    GatitaEmprendedora.Agendar AS a ON n.IdNegocio = a.IdNegocio
JOIN
    GatitaEmprendedora.Bazar AS b ON a.IdBazar = b.IdBazar
WHERE
    b.Modalidad IN ('Híbrido', 'Virtual')
GROUP BY
    n.IdNegocio, n.NombreNegocio, n.RFC
HAVING
    COUNT(DISTINCT b.IdBazar) > 0 -- Asegura que solo se muestren negocios que realmente han participado en estos tipos de bazares
ORDER BY
    TotalBazaresHibridosVirtuales DESC, n.NombreNegocio ASC;
