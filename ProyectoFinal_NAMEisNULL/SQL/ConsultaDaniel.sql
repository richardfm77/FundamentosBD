-- Consulta 1: Los clientes fisicos que paguen en efectivo
SELECT DISTINCT
    c.IdCliente,
    c.NombreCliente,
    c.APaternoCliente,
    c.AMaternoCliente
FROM
    GatitaEmprendedora.Cliente AS c
JOIN
    GatitaEmprendedora.MetodoPago AS mp ON c.IdCliente = mp.IdCliente
WHERE
    c.EsFisico IS TRUE
    AND mp.MetodoPago = 'Efectivo'
ORDER BY
    c.APaternoCliente, c.NombreCliente;

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

-- Consulta 3: Los clientes virtuales que paguen con tarjeta
SELECT DISTINCT
    c.IdCliente,
    c.NombreCliente,
    c.APaternoCliente,
    c.AMaternoCliente
FROM
    GatitaEmprendedora.Cliente AS c
JOIN
    GatitaEmprendedora.MetodoPago AS mp ON c.IdCliente = mp.IdCliente
WHERE
    c.EsVirtual IS TRUE
    AND mp.MetodoPago = 'Tarjeta'
ORDER BY
    c.APaternoCliente, c.NombreCliente;

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

-- Consulta 5: Clientes fisicos y virtuales
SELECT
    IdCliente,
    NombreCliente,
    APaternoCliente,
    AMaternoCliente
FROM
    GatitaEmprendedora.Cliente
WHERE
    EsFisico IS TRUE
    AND EsVirtual IS TRUE
ORDER BY
    APaternoCliente, NombreCliente;

-- Consulta 6: Los servicios con una duracion menor a una hora y precio menor a 10
SELECT
    s.IdServicio,
    s.NombreServicio,
    s.PrecioServicio,
    s.Duracion
FROM
    GatitaEmprendedora.Servicio AS s
WHERE
    s.PrecioServicio < 10.00
    AND s.Duracion < '01:00:00'
ORDER BY
    s.PrecioServicio DESC, s.Duracion ASC;
    
--Consulta 7: Todos los negocios que su precio minimo sea menor a 80
SELECT
    n.IdNegocio,
    n.NombreNegocio,
    rpn.PrecioMinimo,
    rpn.PrecioMaximo
FROM
    GatitaEmprendedora.Negocio AS n
JOIN
    GatitaEmprendedora.RangoPrecioNegocio AS rpn ON n.IdNegocio = rpn.IdNegocio
WHERE
    rpn.PrecioMinimo < 80
ORDER BY
    rpn.PrecioMinimo ASC, n.NombreNegocio;
    
-- Consulta 8: Todos el personal organizador que trabaje en el turno matutino y gane menos de $500
SELECT
    po.RFC,
    po.NombrePersonalOrganizador,
    po.APaternoPersonalOrganizador,
    po.Salario,
    hpo.HorarioPersonalOrganizador
FROM
    GatitaEmprendedora.PersonalOrganizador AS po
JOIN
    GatitaEmprendedora.HorarioPersonalOrganizador AS hpo ON po.RFC = hpo.RFC
WHERE
    hpo.HorarioPersonalOrganizador = 'matutino'
    AND CAST(REPLACE(po.Salario, '$', '') AS NUMERIC) < 500.00
ORDER BY
    CAST(REPLACE(po.Salario, '$', '') AS NUMERIC) DESC, po.APaternoPersonalOrganizador;
