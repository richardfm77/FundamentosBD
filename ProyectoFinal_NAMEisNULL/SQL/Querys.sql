-- Consulata 1:
--Negocios que tienen productos agotados
SELECT 
    n.IdNegocio,
    n.NombreNegocio,
    p.NombreProducto,
    p.Stock
FROM GatitaEmprendedora.Negocio n
JOIN GatitaEmprendedora.Producto p ON p.IdNegocio = n.IdNegocio
WHERE p.Stock = 0;


-- Consulta 2:
--Servicios que no han sido contratados
SELECT 
    s.IdNegocio,
    s.IdServicio,
    s.NombreServicio
FROM GatitaEmprendedora.Servicio s
LEFT JOIN GatitaEmprendedora.RegistrarServicio rs 
    ON rs.IdNegocio = s.IdNegocio AND rs.IdServicio = s.IdServicio
WHERE rs.IdServicio IS NULL;


-- Consulta 3:
--Productos que ya esten caducados
SELECT 
    p.IdProducto,
    p.NombreProducto,
    pr.FechaCaducidad
FROM GatitaEmprendedora.Producto p
JOIN GatitaEmprendedora.Perecedero pr ON p.IdNegocio = pr.IdNegocio AND p.IdProducto = pr.IdProducto
WHERE pr.FechaCaducidad < CURRENT_DATE;


-- Consulta 4:
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


-- Consulta 5:
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






--Consula 6:  Clientes recurrentes que han asistido a mas de un bazar y su actividad de compra
SELECT 
--Obtenemos la infrimacion de cliente 
    c.idcliente,
    c.nombrecliente,
    CASE 
	    -- Obtenemos la modalidad del cliente
	    -- Se modifica la presentacion para facilitar lectura
        WHEN c.esfisico = TRUE AND c.esvirtual = FALSE THEN 'Presencial'
        WHEN c.esfisico = FALSE AND c.esvirtual = TRUE THEN 'Virtual'
        WHEN c.esfisico = TRUE AND c.esvirtual = TRUE THEN 'Mixta'
        ELSE 'No definida'
    END AS modalidad,
    dc.estado,
    -- Contamos los diferentes ids de los bazares
    COUNT(DISTINCT t.idbazar) AS bazares_visitados,
    -- Contamos el numero de compras en total realizadas
    COUNT(t.idticket) AS total_tickets
FROM gatitaemprendedora.cliente c
--Unimos las tablas que necesitamos, en este caso ticket 
JOIN gatitaemprendedora.ticket t ON t.idcliente = c.idcliente
-- domicilio cliente, pero solo queremos lo de la primera tabla 
LEFT JOIN gatitaemprendedora.domiciliocliente dc ON dc.idcliente = c.idcliente
GROUP BY c.idcliente, c.nombrecliente, modalidad, dc.estado
-- Selecionamos unicamente los que han ido a almenos 2 bazares diferentes
HAVING COUNT(DISTINCT t.idbazar) > 1
-- Ordenamos por el numero de compras realizadas 
ORDER BY total_tickets DESC;


--- Consulta 7 total de participantes por bazar.
SELECT 
--Obtenemos la informacion que queremos de bazar
    b.idbazar,
    b.nombrebazar,
    --Usamos COALESCE para evitar obtener null como reusltado 
    -- En caso de que no haya empleados, clientes o empresarios devuelve 0
    COALESCE(clientes.num_clientes, 0) AS num_clientes,
    COALESCE(empresarios.num_emprendedores, 0) AS num_emprendedores,
    COALESCE(funcionarios.num_funcionarios, 0) AS num_funcionarios,
    COALESCE(clientes.num_clientes, 0) + COALESCE(empresarios.num_emprendedores, 0) + COALESCE(funcionarios.num_funcionarios, 0) AS total_personas
FROM gatitaemprendedora.bazar b
--Hacemos join con las tablas necesarias. 
LEFT JOIN (
	-- Obtenemos el total de clientes que han comprado algo por bazar
    SELECT 
        ticket.idbazar,
        COUNT(DISTINCT ticket.idcliente) AS num_clientes
    FROM gatitaemprendedora.ticket ticket
    GROUP BY ticket.idbazar
) clientes ON clientes.idbazar = b.idbazar
LEFT JOIN (
--Obtenemos el numero de empresarios que estuvierom trbajando en el bazar
    SELECT 
        agendar.idbazar,
        COUNT(DISTINCT emprendedor.rfc) AS num_emprendedores
    FROM gatitaemprendedora.agendar agendar
    JOIN gatitaemprendedora.emprendedor emprendedor ON emprendedor.idnegocio = agendar.idnegocio
    GROUP BY agendar.idbazar
) empresarios ON empresarios.idbazar = b.idbazar
LEFT JOIN (
--Finalmente contamos el personal que estuvieron trabajando 
    SELECT 
        trabajar.idbazar,
        COUNT(DISTINCT trabajar.rfc) AS num_funcionarios
    FROM gatitaemprendedora.trabajar trabajar
    GROUP BY trabajar.idbazar
) funcionarios ON funcionarios.idbazar = b.idbazar
-- Ordenamos segun el total de personas.
ORDER BY total_personas DESC;





-- Consulta 8: Resumen de ventas por bazar
select
--Obtenemos los datos mas importante de bazar
    b.idbazar,
    b.nombrebazar,
    -- Contamos el total de productos vendidos
    COUNT(rp.idregistrarproducto) AS total_productos,
    -- Contamos el total de servicios vendidos
    COUNT(rs.idregistrarservicio) AS total_servicios,
    -- Sumamos el total de productos
    COUNT(rp.idregistrarproducto) + COUNT(rs.idregistrarservicio) AS total_vendidos
FROM gatitaemprendedora.bazar b
-- Hacemos join con la infromacion que nos interesa 
-- ticket para saber que se vendio y en donde
JOIN gatitaemprendedora.ticket t ON t.idbazar = b.idbazar
-- Identificar si es un servicio o un producto 
LEFT JOIN gatitaemprendedora.registrarproducto rp ON rp.idticket = t.idticket
LEFT JOIN gatitaemprendedora.registrarservicio rs ON rs.idticket = t.idticket
-- Agruparlos por id bazar
GROUP BY b.idbazar, b.nombrebazar
--ordenamos por el total vendidos
ORDER BY total_vendidos DESC;





--- Consulta 9: Resumen de participaciones y ventas por negocio  
SELECT 
--- Obtenemos la infromacion relevante de negocio
    n.idnegocio,
    n.nombrenegocio,
    --Contamos las veces que agendo un vazar
    COUNT(DISTINCT a.idbazar) AS total_agendas,
    -- Contamos el total deventas
    COUNT(rp.idregistrarproducto) + COUNT(rs.idregistrarservicio) AS total_ventas
FROM gatitaemprendedora.negocio n
--Unimos para obtener la informacion que queremos 
JOIN gatitaemprendedora.agendar a ON n.idnegocio = a.idnegocio
LEFT JOIN gatitaemprendedora.ticket t ON t.idnegocio = n.idnegocio 
LEFT JOIN gatitaemprendedora.registrarproducto rp ON rp.idticket = t.idticket
LEFT JOIN gatitaemprendedora.registrarservicio rs ON rs.idticket = t.idticket
--agrupamos 
GROUP BY n.idnegocio, n.nombrenegocio
-- ordenamos segun el total de agendas
ORDER BY total_agendas DESC;


--Consulta 10 Producto mas vendido
WITH VentasPorProductoBazar AS (
-- Calculamos cuantos productos se han vendido y el bazar en que lo venden
    SELECT
        p.IdProducto,
        p.NombreProducto,
        p.Precio,
        t.IdBazar,
        b.NombreBazar,
        SUM(rp.Cantidad) AS CantidadVendida
    FROM GatitaEmprendedora.Producto p
    JOIN GatitaEmprendedora.RegistrarProducto rp ON p.IdProducto = rp.IdProducto
    JOIN GatitaEmprendedora.Ticket t ON rp.IdTicket = t.IdTicket
    JOIN GatitaEmprendedora.Bazar b ON t.IdBazar = b.IdBazar
    GROUP BY p.IdProducto, p.NombreProducto, p.Precio, t.IdBazar, b.NombreBazar
),
ProductoMasVendido AS (
--Selecionamos el producto mas vendido 
    SELECT
        IdProducto,
        NombreProducto,
        Precio,
        IdBazar,
        NombreBazar,
        CantidadVendida,
        ROW_NUMBER() OVER (PARTITION BY IdProducto ORDER BY CantidadVendida DESC) AS rn
    FROM VentasPorProductoBazar
)
select
--finalmente mostramos la imformacion relevante y mostramos la infromacion
    IdProducto,
    NombreProducto,
    Precio,
    NombreBazar AS BazarConMasVentas,
    CantidadVendida
FROM ProductoMasVendido
WHERE rn = 1
ORDER BY CantidadVendida DESC;



-- Consulta 11: Los clientes fisicos que paguen en efectivo
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

-- Consulta 12: Obtener los tickets donde la comisión para el bazar fue mayor a $180.00.
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


-- Consulta 13: Análisis de rendimiento por bazar
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


-- Consulta 14: Clientes fisicos y virtuales
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

-- Consulta 15: Los servicios con una duracion menor a una hora y precio menor a 10
SELECT
    s.IdServicio,
    s.NombreServicio,
    s.PrecioServicio,
    s.Duracion
FROM
    GatitaEmprendedora.Servicio AS s
WHERE
    s.PrecioServicio::NUMERIC < 10.00 -- Se convierte MONEY a NUMERIC para la comparación
    AND s.Duracion < '01:00:00'::TIME -- Se compara el tipo TIME directamente
ORDER BY
    s.PrecioServicio DESC, s.Duracion ASC;
    
--Consulta 16: Todos los negocios que su precio minimo sea menor a 80
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
    
-- Consulta 17: Todos el personal organizador que trabaje en el turno matutino y gane menos de $500
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
    AND po.Salario < '$500.00'::MONEY -- Se compara directamente MONEY con un literal de tipo MONEY
ORDER BY
    po.Salario DESC, po.APaternoPersonalOrganizador;