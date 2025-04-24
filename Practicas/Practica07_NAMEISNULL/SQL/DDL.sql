DROP schema	if exists GatitaEmprendedora cascade;
CREATE SCHEMA GatitaEmprendedora;


CREATE TABLE GatitaEmprendedora.Bazar (
    IdBazar SERIAL,
    NombreBazar VARCHAR(100),
    Calle VARCHAR(100),
    NumeroInterior VARCHAR(50),
    NumeroExterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    Modalidad VARCHAR(20),
    FechaInicio DATE,
    FechaFin DATE
);

ALTER TABLE GatitaEmprendedora.Bazar 
ADD CONSTRAINT pk_Bazar PRIMARY KEY (IdBazar);

COMMENT ON TABLE GatitaEmprendedora.Bazar IS 'Tabla que almacena la información de los bazares disponibles';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.IdBazar IS 'Identificador único del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.NombreBazar IS 'Nombre del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.Calle IS 'Calle donde se ubica el bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.NumeroInterior IS 'Número interior del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.NumeroExterior IS 'Número exterior del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.Colonia IS 'Colonia donde se encuentra el bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.Estado IS 'Estado de ubicación del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.Modalidad IS 'Modalidad del bazar (presencial o virtual)';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.FechaInicio IS 'Fecha de inicio del bazar';
COMMENT ON COLUMN GatitaEmprendedora.Bazar.FechaFin IS 'Fecha de fin del bazar';
COMMENT ON CONSTRAINT pk_Bazar ON GatitaEmprendedora.Bazar IS 'Llave primaria de la tabla Bazar';



CREATE TABLE GatitaEmprendedora.AmenidadBazar (
    IdBazar INT,
    AmenidadBazar VARCHAR(100)
);

ALTER TABLE GatitaEmprendedora.AmenidadBazar 
ADD CONSTRAINT pk_AmenidadBazar PRIMARY KEY (IdBazar, AmenidadBazar);
ALTER TABLE GatitaEmprendedora.AmenidadBazar 
ADD CONSTRAINT fk_AmenidadBazar FOREIGN KEY (IdBazar) 
    REFERENCES GatitaEmprendedora.Bazar(IdBazar) 
    ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.AmenidadBazar IS 'Tabla que almacena las amenidades asociadas a un bazar';
COMMENT ON COLUMN GatitaEmprendedora.AmenidadBazar.IdBazar IS 'Identificador del bazar al que pertenece la amenidad';
COMMENT ON COLUMN GatitaEmprendedora.AmenidadBazar.AmenidadBazar IS 'Descripción de la amenidad del bazar';
COMMENT ON CONSTRAINT pk_AmenidadBazar ON GatitaEmprendedora.AmenidadBazar IS 'Llave primaria compuesta por IdBazar y AmenidadBazar';
COMMENT ON CONSTRAINT fk_AmenidadBazar ON GatitaEmprendedora.AmenidadBazar IS 'Llave foránea que referencia a la tabla Bazar con políticas ON DELETE CASCADE y ON UPDATE CASCADE';



CREATE TABLE GatitaEmprendedora.Estand (
    NumeroEstand INT,
    Paquete CHAR(1),
    Precio MONEY
);

ALTER TABLE GatitaEmprendedora.Estand 
ADD CONSTRAINT pk_Estand PRIMARY KEY (NumeroEstand);

COMMENT ON TABLE GatitaEmprendedora.Estand IS 'Tabla que almacena los estands disponibles en el bazar';
COMMENT ON COLUMN GatitaEmprendedora.Estand.NumeroEstand IS 'Identificador numérico del estand';
COMMENT ON COLUMN GatitaEmprendedora.Estand.Paquete IS 'Tipo de paquete asignado al estand';
COMMENT ON COLUMN GatitaEmprendedora.Estand.Precio IS 'Precio asociado al estand según su paquete';
COMMENT ON CONSTRAINT pk_Estand ON GatitaEmprendedora.Estand IS 'Llave primaria de la tabla Estand';



CREATE TABLE GatitaEmprendedora.AmenidadEstand (
    NumeroEstand INT,
    AmenidadEstand VARCHAR(100)
);

ALTER TABLE GatitaEmprendedora.AmenidadEstand 
ADD CONSTRAINT pk_AmenidadEstand PRIMARY KEY (NumeroEstand, AmenidadEstand);
ALTER TABLE GatitaEmprendedora.AmenidadEstand 
ADD CONSTRAINT fk_AmenidadEstand FOREIGN KEY (NumeroEstand) REFERENCES GatitaEmprendedora.Estand(NumeroEstand)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.AmenidadEstand IS 'Tabla que almacena las amenidades asociadas a cada estand disponible en el bazar. Relaciona las amenidades con el número de estand correspondiente.';
COMMENT ON COLUMN GatitaEmprendedora.AmenidadEstand.NumeroEstand IS 'Identificador del estand al que pertenece la amenidad. Es llave foránea que referencia a la tabla Estand.';
COMMENT ON COLUMN GatitaEmprendedora.AmenidadEstand.AmenidadEstand IS 'Descripción de la amenidad asociada al estand.';
COMMENT ON CONSTRAINT pk_AmenidadEstand ON GatitaEmprendedora.AmenidadEstand IS 'Llave primaria compuesta por NumeroEstand y AmenidadEstand que asegura que no se repita una misma amenidad en un mismo estand.';
COMMENT ON CONSTRAINT fk_AmenidadEstand ON GatitaEmprendedora.AmenidadEstand IS 'Llave foránea que garantiza la integridad referencial entre la tabla AmenidadEstand y la tabla Estand. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar estands.';


CREATE TABLE GatitaEmprendedora.Cliente (
    IdCliente SERIAL,
    NombreCliente VARCHAR(100),
    APaternoCliente VARCHAR(100),
    AMaternoCliente VARCHAR(100),
    Calle VARCHAR(100),
    NumeroExterior VARCHAR(50),
    NumeroInterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    EsFisico BOOLEAN,
    EsVirtual BOOLEAN
);

ALTER TABLE GatitaEmprendedora.Cliente 
ADD CONSTRAINT pk_Cliente PRIMARY KEY (IdCliente);

COMMENT ON TABLE GatitaEmprendedora.Cliente IS 'Tabla que almacena la información de los clientes que participan en el bazar, ya sea de manera física o virtual.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.IdCliente IS 'Identificador único y consecutivo de cada cliente dentro del sistema.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.NombreCliente IS 'Nombre del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.APaternoCliente IS 'Apellido paterno del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.AMaternoCliente IS 'Apellido materno del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.Calle IS 'Calle correspondiente al domicilio del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.NumeroExterior IS 'Número exterior correspondiente al domicilio del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.NumeroInterior IS 'Número interior correspondiente al domicilio del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.Colonia IS 'Colonia correspondiente al domicilio del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.Estado IS 'Estado correspondiente al domicilio del cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.EsFisico IS 'Atributo booleano que indica si el cliente participa de manera física en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Cliente.EsVirtual IS 'Atributo booleano que indica si el cliente participa de manera virtual en el bazar.';
COMMENT ON CONSTRAINT pk_Cliente ON GatitaEmprendedora.Cliente IS 'Llave primaria de la tabla Cliente que identifica de manera única a cada cliente registrado.';



CREATE TABLE GatitaEmprendedora.MetodoPago (
    IdCliente INT,
    MetodoPago VARCHAR(20)
);

ALTER TABLE GatitaEmprendedora.MetodoPago 
ADD CONSTRAINT pk_MetodoPago PRIMARY KEY (IdCliente, MetodoPago);
ALTER TABLE GatitaEmprendedora.MetodoPago 
ADD CONSTRAINT fk_MetodoPago FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.MetodoPago IS 'Tabla que almacena los métodos de pago utilizados por cada cliente del bazar. Es un atributo multivaluado de la entidad Cliente.';
COMMENT ON COLUMN GatitaEmprendedora.MetodoPago.IdCliente IS 'Identificador del cliente que utiliza el método de pago. Es llave foránea que referencia a la tabla Cliente.';
COMMENT ON COLUMN GatitaEmprendedora.MetodoPago.MetodoPago IS 'Método de pago utilizado por el cliente. Puede ser efectivo o tarjeta.';
COMMENT ON CONSTRAINT pk_MetodoPago ON GatitaEmprendedora.MetodoPago IS 'Llave primaria compuesta por IdCliente y MetodoPago que evita que un mismo cliente registre el mismo método de pago más de una vez.';
COMMENT ON CONSTRAINT fk_MetodoPago ON GatitaEmprendedora.MetodoPago IS 'Llave foránea que garantiza la integridad referencial con la tabla Cliente. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar clientes.';



CREATE TABLE GatitaEmprendedora.Tarjeta (
    NumeroTarjeta CHAR(16),
    Vencimiento DATE,
    CVV VARCHAR(4),
    IdCliente INT
);

ALTER TABLE GatitaEmprendedora.Tarjeta 
ADD CONSTRAINT pk_Tarjeta PRIMARY KEY (NumeroTarjeta);
ALTER TABLE GatitaEmprendedora.Tarjeta 
ADD CONSTRAINT fk_Tarjeta FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Tarjeta IS 'Tabla que almacena las tarjetas asociadas a los clientes del bazar. Permite registrar la información de tarjetas utilizadas como método de pago.';
COMMENT ON COLUMN GatitaEmprendedora.Tarjeta.NumeroTarjeta IS 'Número de la tarjeta bancaria del cliente. Es la llave primaria de la tabla y tiene una longitud fija de 16 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.Tarjeta.Vencimiento IS 'Fecha de vencimiento de la tarjeta en formato DD/MM/YYYY.';
COMMENT ON COLUMN GatitaEmprendedora.Tarjeta.CVV IS 'Código de seguridad de la tarjeta (CVV), con una longitud de 3 o 4 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.Tarjeta.IdCliente IS 'Identificador del cliente dueño de la tarjeta. Es llave foránea que referencia a la tabla Cliente.';
COMMENT ON CONSTRAINT pk_Tarjeta ON GatitaEmprendedora.Tarjeta IS 'Llave primaria de la tabla Tarjeta que identifica de manera única a cada tarjeta registrada.';
COMMENT ON CONSTRAINT fk_Tarjeta ON GatitaEmprendedora.Tarjeta IS 'Llave foránea que garantiza la integridad referencial con la tabla Cliente. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar clientes.';


CREATE TABLE GatitaEmprendedora.Negocio (
    IdNegocio SERIAL,
    NombreNegocio VARCHAR(100),
    Descripcion VARCHAR(200),
    PrecioMinimo NUMERIC(10,2),
    PrecioMaximo NUMERIC(10,2)
);

ALTER TABLE GatitaEmprendedora.Negocio 
ADD CONSTRAINT pk_Negocio PRIMARY KEY (IdNegocio);

COMMENT ON TABLE GatitaEmprendedora.Negocio IS 'Tabla que almacena la información de los negocios registrados en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Negocio.IdNegocio IS 'Identificador único y consecutivo de cada negocio registrado en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Negocio.NombreNegocio IS 'Nombre del negocio registrado.';
COMMENT ON COLUMN GatitaEmprendedora.Negocio.Descripcion IS 'Descripción del giro o actividad principal del negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Negocio.PrecioMinimo IS 'Precio mínimo de los productos o servicios que ofrece el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Negocio.PrecioMaximo IS 'Precio máximo de los productos o servicios que ofrece el negocio.';
COMMENT ON CONSTRAINT pk_Negocio ON GatitaEmprendedora.Negocio IS 'Llave primaria de la tabla Negocio que identifica de manera única a cada negocio registrado.';



CREATE TABLE GatitaEmprendedora.TelefonoNegocio (
    IdNegocio INT,
    Telefono CHAR(10)
);

ALTER TABLE GatitaEmprendedora.TelefonoNegocio 
ADD CONSTRAINT pk_TelefonoNegocio PRIMARY KEY (IdNegocio, Telefono);
ALTER TABLE GatitaEmprendedora.TelefonoNegocio 
ADD CONSTRAINT fk_TelefonoNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.TelefonoNegocio IS 'Tabla que almacena los números telefónicos asociados a cada negocio registrado en el bazar. Es un atributo multivaluado de la entidad Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoNegocio.IdNegocio IS 'Identificador del negocio al que pertenece el número telefónico. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoNegocio.Telefono IS 'Número telefónico del negocio. Tiene una longitud fija de 10 caracteres.';
COMMENT ON CONSTRAINT pk_TelefonoNegocio ON GatitaEmprendedora.TelefonoNegocio IS 'Llave primaria compuesta por IdNegocio y Telefono que evita que un mismo número de teléfono se registre más de una vez para un negocio.';
COMMENT ON CONSTRAINT fk_TelefonoNegocio ON GatitaEmprendedora.TelefonoNegocio IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';



CREATE TABLE GatitaEmprendedora.CorreoNegocio (
    IdNegocio INT,
    Correo VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.CorreoNegocio 
ADD CONSTRAINT pk_CorreoNegocio PRIMARY KEY (IdNegocio, Correo);
ALTER TABLE GatitaEmprendedora.CorreoNegocio 
ADD CONSTRAINT fk_CorreoNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.CorreoNegocio IS 'Tabla que almacena los correos electrónicos asociados a cada negocio registrado en el bazar. Es un atributo multivaluado de la entidad Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.CorreoNegocio.IdNegocio IS 'Identificador del negocio al que pertenece el correo electrónico. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.CorreoNegocio.Correo IS 'Correo electrónico asociado al negocio. Tiene una longitud máxima de 50 caracteres.';
COMMENT ON CONSTRAINT pk_CorreoNegocio ON GatitaEmprendedora.CorreoNegocio IS 'Llave primaria compuesta por IdNegocio y Correo que evita que un mismo correo electrónico se registre más de una vez para un negocio.';
COMMENT ON CONSTRAINT fk_CorreoNegocio ON GatitaEmprendedora.CorreoNegocio IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';



CREATE TABLE GatitaEmprendedora.RedSocialNegocio (
    IdNegocio INT,
    RedSocial VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.RedSocialNegocio 
ADD CONSTRAINT pk_RedSocialNegocio PRIMARY KEY (IdNegocio, RedSocial);
ALTER TABLE GatitaEmprendedora.RedSocialNegocio 
ADD CONSTRAINT fk_RedSocialNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.RedSocialNegocio IS 'Tabla que almacena las redes sociales asociadas a cada negocio registrado en el bazar. Es un atributo multivaluado de la entidad Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.RedSocialNegocio.IdNegocio IS 'Identificador del negocio al que pertenece la red social. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.RedSocialNegocio.RedSocial IS 'Nombre o enlace de la red social asociada al negocio. Tiene una longitud máxima de 50 caracteres.';
COMMENT ON CONSTRAINT pk_RedSocialNegocio ON GatitaEmprendedora.RedSocialNegocio IS 'Llave primaria compuesta por IdNegocio y RedSocial que evita que una misma red social se registre más de una vez para un negocio.';
COMMENT ON CONSTRAINT fk_RedSocialNegocio ON GatitaEmprendedora.RedSocialNegocio IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';



CREATE TABLE GatitaEmprendedora.Producto (
    IdNegocio INT,
    IdProducto SERIAL,
    NombreProducto VARCHAR(100),
    Descripcion VARCHAR(200),
    Tipo VARCHAR(50),
    Precio MONEY,
    Presentacion VARCHAR(100),
    Stock INT
);

ALTER TABLE GatitaEmprendedora.Producto 
ADD CONSTRAINT pk_Producto PRIMARY KEY (IdNegocio, IdProducto);
ALTER TABLE GatitaEmprendedora.Producto 
ADD CONSTRAINT fk_Producto FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Producto IS 'Tabla que almacena los productos que pertenecen a cada negocio registrado en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.IdNegocio IS 'Identificador del negocio al que pertenece el producto. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.IdProducto IS 'Identificador único y consecutivo de cada producto dentro de un mismo negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.NombreProducto IS 'Nombre del producto ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.Descripcion IS 'Descripción del producto ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.Tipo IS 'Tipo o categoría del producto.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.Precio IS 'Precio del producto ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.Presentacion IS 'Presentación del producto, por ejemplo: caja, botella, paquete, etc.';
COMMENT ON COLUMN GatitaEmprendedora.Producto.Stock IS 'Cantidad disponible del producto en inventario.';
COMMENT ON CONSTRAINT pk_Producto ON GatitaEmprendedora.Producto IS 'Llave primaria compuesta por IdNegocio e IdProducto que garantiza la unicidad de cada producto dentro de un mismo negocio.';
COMMENT ON CONSTRAINT fk_Producto ON GatitaEmprendedora.Producto IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';



CREATE TABLE GatitaEmprendedora.Perecedero (
    IdNegocio INT,
    IdProducto INT,
    FechaPreparacion DATE,
    FechaCaducidad DATE
);

ALTER TABLE GatitaEmprendedora.Perecedero 
ADD CONSTRAINT pk_Perecedero PRIMARY KEY (IdNegocio, IdProducto);
ALTER TABLE GatitaEmprendedora.Perecedero 
ADD CONSTRAINT fk_PerecederoProducto FOREIGN KEY (IdNegocio, IdProducto) REFERENCES GatitaEmprendedora.Producto(IdNegocio, IdProducto)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Perecedero IS 'Tabla que almacena información específica de los productos perecederos pertenecientes a un negocio dentro del bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Perecedero.IdNegocio IS 'Identificador del negocio al que pertenece el producto perecedero. Es parte de la llave primaria y llave foránea que referencia a la tabla Producto.';
COMMENT ON COLUMN GatitaEmprendedora.Perecedero.IdProducto IS 'Identificador del producto perecedero dentro del negocio. Es parte de la llave primaria y llave foránea que referencia a la tabla Producto.';
COMMENT ON COLUMN GatitaEmprendedora.Perecedero.FechaPreparacion IS 'Fecha en la que el producto perecedero fue preparado o producido.';
COMMENT ON COLUMN GatitaEmprendedora.Perecedero.FechaCaducidad IS 'Fecha en la que el producto perecedero pierde su vigencia o frescura.';
COMMENT ON CONSTRAINT pk_Perecedero ON GatitaEmprendedora.Perecedero IS 'Llave primaria compuesta por IdNegocio e IdProducto que garantiza la unicidad de cada producto perecedero dentro de un mismo negocio.';
COMMENT ON CONSTRAINT fk_PerecederoProducto ON GatitaEmprendedora.Perecedero IS 'Llave foránea compuesta por IdNegocio e IdProducto que garantiza la integridad referencial con la tabla Producto. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar productos.';


CREATE TABLE GatitaEmprendedora.Emprendedor (
    RFC CHAR(13),
    NombreEmprendedor VARCHAR(100),
    APaternoEmprendedor VARCHAR(100),
    AMaternoEmprendedor VARCHAR(100),
    Calle VARCHAR(100),
    NumeroExterior VARCHAR(50),
    NumeroInterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    Genero CHAR(1),
    IdNegocio INT
);

ALTER TABLE GatitaEmprendedora.Emprendedor 
ADD CONSTRAINT pk_Emprendedor PRIMARY KEY (RFC);
ALTER TABLE GatitaEmprendedora.Emprendedor 
ADD CONSTRAINT fk_Emprendedor FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Emprendedor IS 'Tabla que almacena la información de los emprendedores que participan en el bazar y que están asociados a un negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.RFC IS 'Registro Federal de Contribuyentes (RFC) del emprendedor. Es la llave primaria de la tabla y tiene una longitud fija de 13 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.NombreEmprendedor IS 'Nombre del emprendedor registrado.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.APaternoEmprendedor IS 'Apellido paterno del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.AMaternoEmprendedor IS 'Apellido materno del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.Calle IS 'Calle correspondiente al domicilio del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.NumeroExterior IS 'Número exterior correspondiente al domicilio del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.NumeroInterior IS 'Número interior correspondiente al domicilio del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.Colonia IS 'Colonia correspondiente al domicilio del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.Estado IS 'Estado correspondiente al domicilio del emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.Genero IS 'Género del emprendedor. Representado con un carácter: M (masculino), F (femenino), u otro.';
COMMENT ON COLUMN GatitaEmprendedora.Emprendedor.IdNegocio IS 'Identificador del negocio al que pertenece el emprendedor. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON CONSTRAINT pk_Emprendedor ON GatitaEmprendedora.Emprendedor IS 'Llave primaria de la tabla Emprendedor que garantiza la unicidad de cada emprendedor mediante su RFC.';
COMMENT ON CONSTRAINT fk_Emprendedor ON GatitaEmprendedora.Emprendedor IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';


CREATE TABLE GatitaEmprendedora.TelefonoEmprendedor (
    TelefonoEmprendedor CHAR(10),
    RFC CHAR(13)
    
);

ALTER TABLE GatitaEmprendedora.TelefonoEmprendedor 
ADD CONSTRAINT pk_TelefonoEmprendedor PRIMARY KEY (TelefonoEmprendedor);
ALTER TABLE GatitaEmprendedora.TelefonoEmprendedor 
ADD CONSTRAINT fk_TelefonoEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.TelefonoEmprendedor IS 'Tabla que almacena los números telefónicos asociados a los emprendedores registrados en el bazar. Es un atributo multivaluado de la entidad Emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoEmprendedor.TelefonoEmprendedor IS 'Número telefónico del emprendedor. Es la llave primaria de la tabla y tiene una longitud fija de 10 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoEmprendedor.RFC IS 'Registro Federal de Contribuyentes (RFC) del emprendedor al que pertenece el número telefónico. Es llave foránea que referencia a la tabla Emprendedor.';
COMMENT ON CONSTRAINT pk_TelefonoEmprendedor ON GatitaEmprendedora.TelefonoEmprendedor IS 'Llave primaria de la tabla TelefonoEmprendedor que garantiza la unicidad de cada número telefónico registrado.';
COMMENT ON CONSTRAINT fk_TelefonoEmprendedor ON GatitaEmprendedora.TelefonoEmprendedor IS 'Llave foránea que garantiza la integridad referencial con la tabla Emprendedor. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar emprendedores.';



CREATE TABLE GatitaEmprendedora.CorreoEmprendedor (
    RFC CHAR(13),
    CorreoEmprendedor VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.CorreoEmprendedor 
ADD CONSTRAINT pk_CorreoEmprendedor PRIMARY KEY (RFC, CorreoEmprendedor);
ALTER TABLE GatitaEmprendedora.CorreoEmprendedor 
ADD CONSTRAINT fk_CorreoEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.CorreoEmprendedor IS 'Tabla que almacena los correos electrónicos asociados a los emprendedores registrados en el bazar. Es un atributo multivaluado de la entidad Emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.CorreoEmprendedor.RFC IS 'Registro Federal de Contribuyentes (RFC) del emprendedor al que pertenece el correo electrónico. Es llave foránea que referencia a la tabla Emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.CorreoEmprendedor.CorreoEmprendedor IS 'Correo electrónico del emprendedor. Tiene una longitud máxima de 50 caracteres.';
COMMENT ON CONSTRAINT pk_CorreoEmprendedor ON GatitaEmprendedora.CorreoEmprendedor IS 'Llave primaria compuesta por RFC y CorreoEmprendedor que garantiza que un mismo correo electrónico no se registre más de una vez para el mismo emprendedor.';
COMMENT ON CONSTRAINT fk_CorreoEmprendedor ON GatitaEmprendedora.CorreoEmprendedor IS 'Llave foránea que garantiza la integridad referencial con la tabla Emprendedor. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar emprendedores.';



CREATE TABLE GatitaEmprendedora.Servicio (
    IdNegocio INT,
    IdServicio SERIAL,
    NombreServicio VARCHAR(100),
    Descripcion VARCHAR(200),
    Tipo VARCHAR(50),
    PrecioServicio MONEY,
    Duracion TIME
);

ALTER TABLE GatitaEmprendedora.Servicio 
ADD CONSTRAINT pk_Servicio PRIMARY KEY (IdNegocio, IdServicio);
ALTER TABLE GatitaEmprendedora.Servicio 
ADD CONSTRAINT fk_Servicio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Servicio IS 'Tabla que almacena los servicios que ofrece cada negocio registrado en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.IdNegocio IS 'Identificador del negocio al que pertenece el servicio. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.IdServicio IS 'Identificador único y consecutivo de cada servicio dentro de un mismo negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.NombreServicio IS 'Nombre del servicio ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.Descripcion IS 'Descripción del servicio ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.Tipo IS 'Tipo o categoría del servicio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.PrecioServicio IS 'Precio del servicio ofrecido por el negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Servicio.Duracion IS 'Duración del servicio, especificado en formato de tiempo (horas:minutos:segundos).';
COMMENT ON CONSTRAINT pk_Servicio ON GatitaEmprendedora.Servicio IS 'Llave primaria compuesta por IdNegocio e IdServicio que garantiza la unicidad de cada servicio dentro de un mismo negocio.';
COMMENT ON CONSTRAINT fk_Servicio ON GatitaEmprendedora.Servicio IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar negocios.';



CREATE TABLE GatitaEmprendedora.Ticket (
    IdTicket SERIAL,
    IdCliente INT,
    IdBazar INT,
    IdNegocio INT,
    RFC CHAR(13),
    ComisionBazar NUMERIC(5,2)
);

ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT pk_Ticket PRIMARY KEY (IdTicket);
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketCliente FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente)
ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar)
ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio)
ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Ticket IS 'Tabla que almacena los tickets generados en el bazar, representando la compra de productos o servicios por parte de los clientes.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.IdTicket IS 'Identificador único y consecutivo de cada ticket generado en el bazar. Es la llave primaria de la tabla.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.IdCliente IS 'Identificador del cliente que realiza la compra. Es llave foránea que referencia a la tabla Cliente.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.IdBazar IS 'Identificador del bazar donde se realizó la compra. Es llave foránea que referencia a la tabla Bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.IdNegocio IS 'Identificador del negocio donde se realizó la compra. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.RFC IS 'Registro Federal de Contribuyentes (RFC) del emprendedor que realizó la venta. Es llave foránea que referencia a la tabla Emprendedor.';
COMMENT ON COLUMN GatitaEmprendedora.Ticket.ComisionBazar IS 'Porcentaje de comisión que el bazar recibe por la venta registrada en el ticket.';
COMMENT ON CONSTRAINT pk_Ticket ON GatitaEmprendedora.Ticket IS 'Llave primaria de la tabla Ticket que garantiza la unicidad de cada ticket generado.';
COMMENT ON CONSTRAINT fk_TicketCliente ON GatitaEmprendedora.Ticket IS 'Llave foránea que garantiza la integridad referencial con la tabla Cliente. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_TicketBazar ON GatitaEmprendedora.Ticket IS 'Llave foránea que garantiza la integridad referencial con la tabla Bazar. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_TicketNegocio ON GatitaEmprendedora.Ticket IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_TicketEmprendedor ON GatitaEmprendedora.Ticket IS 'Llave foránea que garantiza la integridad referencial con la tabla Emprendedor. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';



CREATE TABLE GatitaEmprendedora.RegistrarProducto (
    IdTicket INT,
    IdProducto INT,
    IdNegocio INT,
    Cantidad INT
);

ALTER TABLE GatitaEmprendedora.RegistrarProducto 
ADD CONSTRAINT fk_RegistrarProductoTicket FOREIGN KEY (IdTicket) REFERENCES GatitaEmprendedora.Ticket(IdTicket)
ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.RegistrarProducto 
ADD CONSTRAINT fk_RegistrarProductoProducto FOREIGN KEY (IdNegocio, IdProducto) REFERENCES GatitaEmprendedora.Producto(IdNegocio, IdProducto)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.RegistrarProducto IS 'Tabla que almacena los productos que están asociados a un ticket, representando la compra de uno o varios productos por parte de un cliente.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarProducto.IdTicket IS 'Identificador del ticket asociado a la compra del producto. Es llave foránea que referencia a la tabla Ticket.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarProducto.IdProducto IS 'Identificador del producto comprado. Es parte de la llave foránea que referencia a la tabla Producto.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarProducto.IdNegocio IS 'Identificador del negocio al que pertenece el producto comprado. Es parte de la llave foránea que referencia a la tabla Producto.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarProducto.Cantidad IS 'Cantidad de unidades del producto que fueron adquiridas en la compra.';
COMMENT ON CONSTRAINT fk_RegistrarProductoTicket ON GatitaEmprendedora.RegistrarProducto IS 'Llave foránea que garantiza la integridad referencial con la tabla Ticket. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_RegistrarProductoProducto ON GatitaEmprendedora.RegistrarProducto IS 'Llave foránea compuesta que garantiza la integridad referencial con la tabla Producto. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';



CREATE TABLE GatitaEmprendedora.RegistrarServicio (
    IdTicket INT,
    IdServicio INT,
    IdNegocio INT,
    Duracion TIME
);

ALTER TABLE GatitaEmprendedora.RegistrarServicio 
ADD CONSTRAINT fk_RegistrarServicioTicket FOREIGN KEY (IdTicket) REFERENCES GatitaEmprendedora.Ticket(IdTicket)
ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.RegistrarServicio 
ADD CONSTRAINT fk_RegistrarServicioServicio FOREIGN KEY (IdNegocio, IdServicio) REFERENCES GatitaEmprendedora.Servicio(IdNegocio, IdServicio)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.RegistrarServicio IS 'Tabla que almacena los servicios que están asociados a un ticket, representando la compra o contratación de uno o varios servicios por parte de un cliente.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarServicio.IdTicket IS 'Identificador del ticket asociado a la contratación del servicio. Es llave foránea que referencia a la tabla Ticket.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarServicio.IdServicio IS 'Identificador del servicio contratado. Es parte de la llave foránea que referencia a la tabla Servicio.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarServicio.IdNegocio IS 'Identificador del negocio al que pertenece el servicio contratado. Es parte de la llave foránea que referencia a la tabla Servicio.';
COMMENT ON COLUMN GatitaEmprendedora.RegistrarServicio.Duracion IS 'Duración del servicio contratado especificada en horas y minutos.';
COMMENT ON CONSTRAINT fk_RegistrarServicioTicket ON GatitaEmprendedora.RegistrarServicio IS 'Llave foránea que garantiza la integridad referencial con la tabla Ticket. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_RegistrarServicioServicio ON GatitaEmprendedora.RegistrarServicio IS 'Llave foránea compuesta que garantiza la integridad referencial con la tabla Servicio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';



CREATE TABLE GatitaEmprendedora.PersonalOrganizador (
    RFC CHAR(13),
    NombrePersonalOrganizador VARCHAR(100),
    APaternoPersonalOrganizador VARCHAR(100),
    AMaternoPersonalOrganizador VARCHAR(100),
    Calle VARCHAR(100),
    NumeroExterior VARCHAR(50),
    NumeroInterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    Salario MONEY,
    EsSeguridad BOOLEAN,
    EsLimpieza BOOLEAN,
    EsMedico BOOLEAN
);

ALTER TABLE GatitaEmprendedora.PersonalOrganizador 
ADD CONSTRAINT pk_PersonalOrganizador PRIMARY KEY (RFC);

COMMENT ON TABLE GatitaEmprendedora.PersonalOrganizador IS 'Tabla que almacena la información del personal organizador que trabaja en el bazar, incluyendo sus datos personales, domicilio, salario y categoría laboral.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.RFC IS 'Registro Federal de Contribuyentes (RFC) del personal organizador. Es la llave primaria de la tabla y tiene una longitud fija de 13 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.NombrePersonalOrganizador IS 'Nombre del personal organizador registrado.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.APaternoPersonalOrganizador IS 'Apellido paterno del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.AMaternoPersonalOrganizador IS 'Apellido materno del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.Calle IS 'Calle correspondiente al domicilio del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.NumeroExterior IS 'Número exterior correspondiente al domicilio del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.NumeroInterior IS 'Número interior correspondiente al domicilio del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.Colonia IS 'Colonia correspondiente al domicilio del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.Estado IS 'Estado correspondiente al domicilio del personal organizador.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.Salario IS 'Salario que recibe el personal organizador por sus servicios en el bazar.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.EsSeguridad IS 'Atributo booleano que indica si el personal organizador pertenece al área de Seguridad.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.EsLimpieza IS 'Atributo booleano que indica si el personal organizador pertenece al área de Limpieza.';
COMMENT ON COLUMN GatitaEmprendedora.PersonalOrganizador.EsMedico IS 'Atributo booleano que indica si el personal organizador pertenece al área Médica.';
COMMENT ON CONSTRAINT pk_PersonalOrganizador ON GatitaEmprendedora.PersonalOrganizador IS 'Llave primaria de la tabla PersonalOrganizador que garantiza la unicidad de cada registro mediante su RFC.';



CREATE TABLE GatitaEmprendedora.HorarioPersonalOrganizador (
    RFC CHAR(13),
    HorarioPersonalOrganizador VARCHAR(30)
);

ALTER TABLE GatitaEmprendedora.HorarioPersonalOrganizador 
ADD CONSTRAINT pk_HorarioPersonalOrganizador PRIMARY KEY (RFC, HorarioPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.HorarioPersonalOrganizador 
ADD CONSTRAINT fk_HorarioPersonalOrganizador1 FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.HorarioPersonalOrganizador IS 'Tabla que almacena los horarios asignados a cada miembro del personal organizador del bazar. Es un atributo multivaluado de la entidad PersonalOrganizador.';
COMMENT ON COLUMN GatitaEmprendedora.HorarioPersonalOrganizador.RFC IS 'Registro Federal de Contribuyentes (RFC) del personal organizador al que pertenece el horario registrado. Es llave foránea que referencia a la tabla PersonalOrganizador.';
COMMENT ON COLUMN GatitaEmprendedora.HorarioPersonalOrganizador.HorarioPersonalOrganizador IS 'Horario asignado al personal organizador, con una longitud máxima de 30 caracteres.';
COMMENT ON CONSTRAINT pk_HorarioPersonalOrganizador ON GatitaEmprendedora.HorarioPersonalOrganizador IS 'Llave primaria compuesta por RFC y HorarioPersonalOrganizador que garantiza que un mismo horario no se registre más de una vez para un mismo trabajador.';
COMMENT ON CONSTRAINT fk_HorarioPersonalOrganizador1 ON GatitaEmprendedora.HorarioPersonalOrganizador IS 'Llave foránea que garantiza la integridad referencial con la tabla PersonalOrganizador. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar registros de personal organizador.';



CREATE TABLE GatitaEmprendedora.TelefonoPersonalOrganizador (
    TelefonoPersonalOrganizador CHAR(10),
    RFC CHAR(13)
);

ALTER TABLE GatitaEmprendedora.TelefonoPersonalOrganizador 
ADD CONSTRAINT pk_TelefonoPersonalOrganizador PRIMARY KEY (TelefonoPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.TelefonoPersonalOrganizador 
ADD CONSTRAINT fk_TelefonoPersonalOrganizador1 FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC)
ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.TelefonoPersonalOrganizador IS 'Tabla que almacena los números telefónicos asociados a cada miembro del personal organizador del bazar. Es un atributo multivaluado de la entidad PersonalOrganizador.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoPersonalOrganizador.TelefonoPersonalOrganizador IS 'Número telefónico del personal organizador. Es la llave primaria de la tabla y tiene una longitud fija de 10 caracteres.';
COMMENT ON COLUMN GatitaEmprendedora.TelefonoPersonalOrganizador.RFC IS 'Registro Federal de Contribuyentes (RFC) del personal organizador al que pertenece el número telefónico. Es llave foránea que referencia a la tabla PersonalOrganizador.';
COMMENT ON CONSTRAINT pk_TelefonoPersonalOrganizador ON GatitaEmprendedora.TelefonoPersonalOrganizador IS 'Llave primaria de la tabla TelefonoPersonalOrganizador que garantiza la unicidad de cada número telefónico registrado.';
COMMENT ON CONSTRAINT fk_TelefonoPersonalOrganizador1 ON GatitaEmprendedora.TelefonoPersonalOrganizador IS 'Llave foránea que garantiza la integridad referencial con la tabla PersonalOrganizador. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE para mantener consistencia al modificar o eliminar registros de personal organizador.';



CREATE TABLE GatitaEmprendedora.CorreoPersonalOrganizador (
    CorreoPersonalOrganizador VARCHAR(50),
    RFC CHAR(13)
);

ALTER TABLE GatitaEmprendedora.CorreoPersonalOrganizador 
ADD CONSTRAINT pk_CorreoPersonalOrganizador PRIMARY KEY (CorreoPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.CorreoPersonalOrganizador
ADD CONSTRAINT fk_CorreoPersonalOrganizador1 FOREIGN KEY (RFC) 
REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.CorreoPersonalOrganizador IS 'Tabla que almacena los correos personales de los organizadores';
COMMENT ON COLUMN GatitaEmprendedora.CorreoPersonalOrganizador.CorreoPersonalOrganizador IS 'Correo personal del organizador';
COMMENT ON COLUMN GatitaEmprendedora.CorreoPersonalOrganizador.RFC IS 'RFC del organizador asociado';
COMMENT ON CONSTRAINT pk_CorreoPersonalOrganizador ON GatitaEmprendedora.CorreoPersonalOrganizador IS 'Llave primaria de la tabla CorreoPersonalOrganizador';
COMMENT ON CONSTRAINT fk_CorreoPersonalOrganizador1 ON GatitaEmprendedora.CorreoPersonalOrganizador IS 'Llave foránea que referencia a PersonalOrganizador con políticas ON DELETE CASCADE y ON UPDATE CASCADE';



CREATE TABLE GatitaEmprendedora.Trabajar (
    IdBazar INT,
    RFC CHAR(13),
    FechaAsistencia DATE
);

ALTER TABLE GatitaEmprendedora.Trabajar 
ADD CONSTRAINT fk_TrabajarBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Trabajar 
ADD CONSTRAINT fk_TrabajarPersonalOrganizador FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Trabajar IS 'Tabla que almacena el registro de asistencia del personal organizador que labora en los distintos bazares. Representa la relación de trabajo entre un bazar y un miembro del personal organizador en una fecha específica.';
COMMENT ON COLUMN GatitaEmprendedora.Trabajar.IdBazar IS 'Identificador del bazar donde el personal organizador prestó sus servicios. Es llave foránea que referencia a la tabla Bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Trabajar.RFC IS 'Registro Federal de Contribuyentes (RFC) del personal organizador que asistió al bazar. Es llave foránea que referencia a la tabla PersonalOrganizador.';
COMMENT ON COLUMN GatitaEmprendedora.Trabajar.FechaAsistencia IS 'Fecha en la que el personal organizador asistió a trabajar en el bazar.';
COMMENT ON CONSTRAINT fk_TrabajarBazar ON GatitaEmprendedora.Trabajar IS 'Llave foránea que garantiza la integridad referencial con la tabla Bazar. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_TrabajarPersonalOrganizador ON GatitaEmprendedora.Trabajar IS 'Llave foránea que garantiza la integridad referencial con la tabla PersonalOrganizador. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';



CREATE TABLE GatitaEmprendedora.Agendar (
    IdBazar INT,
    IdNegocio INT,
    NumeroEstand INT,
    FechaAsistencia DATE
);

ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT pk_Agendar PRIMARY KEY (IdNegocio, FechaAsistencia);
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarEstand FOREIGN KEY (NumeroEstand) REFERENCES GatitaEmprendedora.Estand(NumeroEstand) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON TABLE GatitaEmprendedora.Agendar IS 'Tabla que almacena el registro de los negocios que reservan un estand en un bazar en una fecha específica. Representa la relación de agendado entre un negocio, un estand y un bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Agendar.IdBazar IS 'Identificador del bazar donde el negocio reserva un estand. Es llave foránea que referencia a la tabla Bazar.';
COMMENT ON COLUMN GatitaEmprendedora.Agendar.IdNegocio IS 'Identificador del negocio que realiza la reservación del estand. Es llave foránea que referencia a la tabla Negocio.';
COMMENT ON COLUMN GatitaEmprendedora.Agendar.NumeroEstand IS 'Número del estand reservado por el negocio en el bazar. Es llave foránea que referencia a la tabla Estand.';
COMMENT ON COLUMN GatitaEmprendedora.Agendar.FechaAsistencia IS 'Fecha en la que el negocio tiene programado asistir al bazar con el estand reservado.';
COMMENT ON CONSTRAINT pk_Agendar ON GatitaEmprendedora.Agendar IS 'Llave primaria compuesta por IdNegocio y FechaAsistencia que garantiza que un negocio no se registre más de una vez el mismo día en un bazar.';
COMMENT ON CONSTRAINT fk_AgendarBazar ON GatitaEmprendedora.Agendar IS 'Llave foránea que garantiza la integridad referencial con la tabla Bazar. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_AgendarNegocio ON GatitaEmprendedora.Agendar IS 'Llave foránea que garantiza la integridad referencial con la tabla Negocio. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';
COMMENT ON CONSTRAINT fk_AgendarEstand ON GatitaEmprendedora.Agendar IS 'Llave foránea que garantiza la integridad referencial con la tabla Estand. Aplica las políticas ON DELETE CASCADE y ON UPDATE CASCADE.';