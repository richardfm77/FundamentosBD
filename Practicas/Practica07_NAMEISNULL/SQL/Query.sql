/* i. Emprendedores cuyo nombre empiece con la letra R. */
select * from gatitaemprendedora.emprendedor where nombreemprendedor like 'R%';


/* ii. Servicios cuya duración sea mayor a 20 minutos. */

SELECT *
FROM GatitaEmprendedora.Servicio
WHERE Duracion > '00:20:00';


/* iii. Personales que hayan asistido a algún evento del 
bazar entre el 1 de enero del 2025 y del 28 de abril del 2025. */ 
select * from gatitaemprendedora.trabajar t natural join gatitaemprendedora.personalorganizador p 
where t.fechaasistencia between  '2025-01-01' and '2025-04-28';


/* iv. Productos cuya fecha de caducidad sea después del 7 de 
Mayo del 2025 pero antes del 12 de Junio del 2025. */

SELECT p.* 
FROM gatitaemprendedora.producto p
JOIN gatitaemprendedora.perecedero per ON p.idnegocio = per.idnegocio AND p.idproducto = per.idproducto
WHERE per.fechacaducidad BETWEEN '2025-05-08' AND '2025-06-11';


/* v. El nombre de todas las Amenidades de los bazares que se 
tengan registradas. */

