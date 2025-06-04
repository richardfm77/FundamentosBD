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
