-- # Disparadores #

-- ============================================================================
-- Función: GatitaEmprendedora.validar_tipo_cliente
-- Autor: NAMEisNULL
-- Propósito:
--     Esta función se utiliza como trigger para validar que al insertar o 
--     actualizar un registro en la tabla Cliente, al menos uno de los campos 
--     booleanos EsFisico o EsVirtual sea TRUE.
-- 
-- Uso:
--     Esta función debe ser utilizada por un trigger BEFORE INSERT OR UPDATE
--     en la tabla GatitaEmprendedora.Cliente.
--
-- Lógica de validación:
--     Si ambos campos EsFisico y EsVirtual son FALSE o NULL,
--     se lanza una excepción que impide la operación.
--
-- Notas:
--     - Esta función no permite que ambos valores sean FALSE o NULL.
--     - No impide que ambos sean TRUE al mismo tiempo (eso requiere otra regla).
-- ============================================================================
CREATE OR REPLACE FUNCTION GatitaEmprendedora.validar_tipo_cliente()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.EsFisico IS TRUE OR NEW.EsVirtual IS TRUE) THEN
        RAISE EXCEPTION 'Al menos uno de EsFisico o EsVirtual debe ser TRUE.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- ============================================================================
-- Función: GatitaEmprendedora.validar_genero_emprendedor
-- Autor: NAMEisNULL
-- Propósito:
--     Esta función valida que el campo Genero tenga uno de los siguientes
--     valores permitidos: 'F' (femenino), 'M' (masculino), 'B' (no binario).
--
-- Uso:
--     Se usa como parte de un trigger BEFORE INSERT OR UPDATE en la tabla 
--     GatitaEmprendedora.Emprendedor.
--
-- Notas:
--     - La validación distingue mayúsculas/minúsculas (solo 'F', 'M', 'B' son válidos).
--     - Si el valor no es válido, lanza una excepción y bloquea la operación.
-- ============================================================================

CREATE OR REPLACE FUNCTION GatitaEmprendedora.validar_genero_emprendedor()
RETURNS TRIGGER AS $$
BEGIN
    -- Valida que el género sea uno de los permitidos
    IF NEW.Genero NOT IN ('F', 'M', 'B') THEN
        RAISE EXCEPTION 'El campo Genero debe ser F, M o B. Valor recibido: %', NEW.Genero;
    END IF;

    -- Si pasa la validación, continúa con la operación
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- Restricción para que al menos uno de EsFisico o EsVirtual sea TRUE
DROP TRIGGER IF EXISTS trg_validar_tipo_cliente ON GatitaEmprendedora.Cliente;
CREATE TRIGGER trg_validar_tipo_cliente
BEFORE INSERT OR UPDATE ON GatitaEmprendedora.Cliente
FOR EACH ROW
EXECUTE FUNCTION GatitaEmprendedora.validar_tipo_cliente();

-- Restricción para que Genero solo sea 'F', 'M' o 'B'
DROP TRIGGER IF EXISTS trg_validar_genero_emprendedor ON GatitaEmprendedora.Emprendedor;
CREATE TRIGGER trg_validar_genero_emprendedor
BEFORE INSERT OR UPDATE ON GatitaEmprendedora.Emprendedor
FOR EACH ROW
EXECUTE FUNCTION GatitaEmprendedora.validar_genero_emprendedor();





-- ============================================================================
-- Función: GatitaEmprendedora.agenda_negocios
-- Autor: NAMEisNULL
-- Propósito:
--     Devuelve una tabla con todos los negocios que están agendados para 
--     asistir durante el tiempo de duración de un bazar específico.
--
-- Uso:
--     SELECT * FROM GatitaEmprendedora.agenda_negocios(<id_bazar>);
--
-- Parámetros:
--     - p_id_bazar: ID del bazar a consultar.
--
-- Lógica:
--     Se recorre un cursor con los negocios agendados en el rango de fechas 
--     del bazar y se devuelve como tabla.
-- ============================================================================
CREATE OR REPLACE FUNCTION GatitaEmprendedora.agenda_negocios(p_id_bazar INT)
RETURNS TABLE (
    IdNegocio INT,
    NumeroEstand INT,
    NombreNegocio VARCHAR,
    Descripcion TEXT
) AS $$
DECLARE
    c CURSOR FOR
        SELECT n.IdNegocio, n.NumeroEstand, n.NombreNegocio, n.Descripcion
        FROM GatitaEmprendedora.Negocio n
        JOIN GatitaEmprendedora.Agendar a ON n.IdNegocio = a.IdNegocio
        JOIN GatitaEmprendedora.Bazar b ON a.IdBazar = b.IdBazar
        WHERE b.IdBazar = p_id_bazar
          AND a.FechaAsistencia BETWEEN b.FechaInicio AND b.FechaFin;
    row_record RECORD;
BEGIN
    OPEN c;
    LOOP
        FETCH c INTO row_record;
        EXIT WHEN NOT FOUND;
        RETURN NEXT row_record;
    END LOOP;
    CLOSE c;
END;
$$ LANGUAGE plpgsql;






-- ============================================================================
-- Función: GatitaEmprendedora.asistencia_trabajadores
-- Autor: NAMEisNULL
-- Propósito:
--     Devuelve una tabla con la lista de trabajadores que asistieron a un 
--     bazar durante su duración, incluyendo su RFC, nombre, fecha y horario.
--
-- Uso:
--     SELECT * FROM GatitaEmprendedora.asistencia_trabajadores(<id_bazar>);
--
-- Parámetros:
--     - p_id_bazar: ID del bazar a consultar.
--
-- Lógica:
--     Se recorre un cursor con la información de asistencia y horarios del 
--     personal organizador relacionado al bazar.
--
-- Notas:
--     - Internamente usa un cursor para recorrer y devolver resultados como tabla.
-- ============================================================================
CREATE OR REPLACE FUNCTION GatitaEmprendedora.asistencia_trabajadores(p_id_bazar INT)
RETURNS TABLE (
    FechaAsistencia DATE,
    RFC CHAR(13),
    NombrePersonalOrganizador VARCHAR,
    HorarioPersonalOrganizador VARCHAR
) AS $$
DECLARE
    c CURSOR FOR
        SELECT 
            t.FechaAsistencia,
            t.RFC,
            po.NombrePersonalOrganizador,
            h.HorarioPersonalOrganizador
        FROM GatitaEmprendedora.Trabajar t
        JOIN GatitaEmprendedora.Bazar b ON b.IdBazar = t.IdBazar
        JOIN GatitaEmprendedora.PersonalOrganizador po ON po.RFC = t.RFC
        LEFT JOIN GatitaEmprendedora.HorarioPersonalOrganizador h ON h.RFC = t.RFC
        WHERE b.IdBazar = p_id_bazar
          AND t.FechaAsistencia BETWEEN b.FechaInicio AND b.FechaFin
        ORDER BY t.FechaAsistencia, t.RFC;
    row_record RECORD;
BEGIN
    OPEN c;
    LOOP
        FETCH cur INTO row_record;
        EXIT WHEN NOT FOUND;
        RETURN NEXT row_record;
    END LOOP;
    CLOSE c;
END;
$$ LANGUAGE plpgsql;

