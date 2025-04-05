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



CREATE TABLE GatitaEmprendedora.AmenidadBazar (
    IdBazar INT,
    AmenidadBazar VARCHAR(100)
);

ALTER TABLE GatitaEmprendedora.AmenidadBazar 
ADD CONSTRAINT pk_AmenidadBazar PRIMARY KEY (IdBazar, AmenidadBazar);
ALTER TABLE GatitaEmprendedora.AmenidadBazar 
ADD CONSTRAINT fk_AmenidadBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar);



CREATE TABLE GatitaEmprendedora.Estand (
    NumeroEstand INT,
    Paquete CHAR(1),
    Precio MONEY
);

ALTER TABLE GatitaEmprendedora.Estand 
ADD CONSTRAINT pk_Estand PRIMARY KEY (NumeroEstand);



CREATE TABLE GatitaEmprendedora.AmenidadEstand (
    NumeroEstand INT,
    AmenidadEstand VARCHAR(100)
);

ALTER TABLE GatitaEmprendedora.AmenidadEstand 
ADD CONSTRAINT pk_AmenidadEstand PRIMARY KEY (NumeroEstand, AmenidadEstand);
ALTER TABLE GatitaEmprendedora.AmenidadEstand 
ADD CONSTRAINT fk_AmenidadEstand FOREIGN KEY (NumeroEstand) REFERENCES GatitaEmprendedora.Estand(NumeroEstand);



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



CREATE TABLE GatitaEmprendedora.MetodoPago (
    IdCliente INT,
    MetodoPago VARCHAR(20)
);

ALTER TABLE GatitaEmprendedora.MetodoPago 
ADD CONSTRAINT pk_MetodoPago PRIMARY KEY (IdCliente, MetodoPago);
ALTER TABLE GatitaEmprendedora.MetodoPago 
ADD CONSTRAINT fk_MetodoPago FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente);



CREATE TABLE GatitaEmprendedora.Tarjeta (
    NumeroTarjeta CHAR(16),
    Vencimiento DATE,
    CVV VARCHAR(4),
    IdCliente INT
);

ALTER TABLE GatitaEmprendedora.Tarjeta 
ADD CONSTRAINT pk_Tarjeta PRIMARY KEY (NumeroTarjeta);
ALTER TABLE GatitaEmprendedora.Tarjeta 
ADD CONSTRAINT fk_Tarjeta FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente);



CREATE TABLE GatitaEmprendedora.Negocio (
    IdNegocio SERIAL,
    NombreNegocio VARCHAR(100),
    Descripcion VARCHAR(200),
    PrecioMinimo NUMERIC(10,2),
    PrecioMaximo NUMERIC(10,2)
);

ALTER TABLE GatitaEmprendedora.Negocio 
ADD CONSTRAINT pk_Negocio PRIMARY KEY (IdNegocio);



CREATE TABLE GatitaEmprendedora.TelefonoNegocio (
    IdNegocio INT,
    Telefono CHAR(10)
);

ALTER TABLE GatitaEmprendedora.TelefonoNegocio 
ADD CONSTRAINT pk_TelefonoNegocio PRIMARY KEY (IdNegocio, Telefono);
ALTER TABLE GatitaEmprendedora.TelefonoNegocio 
ADD CONSTRAINT fk_TelefonoNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);



CREATE TABLE GatitaEmprendedora.CorreoNegocio (
    IdNegocio INT,
    Correo VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.CorreoNegocio 
ADD CONSTRAINT pk_CorreoNegocio PRIMARY KEY (IdNegocio, Correo);
ALTER TABLE GatitaEmprendedora.CorreoNegocio 
ADD CONSTRAINT fk_CorreoNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);



CREATE TABLE GatitaEmprendedora.RedSocialNegocio (
    IdNegocio INT,
    RedSocial VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.RedSocialNegocio 
ADD CONSTRAINT pk_RedSocialNegocio PRIMARY KEY (IdNegocio, RedSocial);
ALTER TABLE GatitaEmprendedora.RedSocialNegocio 
ADD CONSTRAINT fk_RedSocialNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);



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
ADD CONSTRAINT fk_Producto FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);



CREATE TABLE GatitaEmprendedora.Perecedero (
    IdNegocio INT,
    IdProducto INT,
    FechaPreparacion DATE,
    FechaCaducidad DATE
);

ALTER TABLE GatitaEmprendedora.Perecedero 
ADD CONSTRAINT pk_Perecedero PRIMARY KEY (IdNegocio, IdProducto);
ALTER TABLE GatitaEmprendedora.Perecedero 
ADD CONSTRAINT fk_PerecederoProducto FOREIGN KEY (IdNegocio, IdProducto) REFERENCES GatitaEmprendedora.Producto(IdNegocio, IdProducto);



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
ADD CONSTRAINT fk_Emprendedor FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);


CREATE TABLE GatitaEmprendedora.TelefonoEmprendedor (
    TelefonoEmprendedor CHAR(10),
    RFC CHAR(13)
    
);

ALTER TABLE GatitaEmprendedora.TelefonoEmprendedor 
ADD CONSTRAINT pk_TelefonoEmprendedor PRIMARY KEY (TelefonoEmprendedor);
ALTER TABLE GatitaEmprendedora.TelefonoEmprendedor 
ADD CONSTRAINT fk_TelefonoEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC);



CREATE TABLE GatitaEmprendedora.CorreoEmprendedor (
    RFC CHAR(13),
    CorreoEmprendedor VARCHAR(50)
);

ALTER TABLE GatitaEmprendedora.CorreoEmprendedor 
ADD CONSTRAINT pk_CorreoEmprendedor PRIMARY KEY (RFC, CorreoEmprendedor);
ALTER TABLE GatitaEmprendedora.CorreoEmprendedor 
ADD CONSTRAINT fk_CorreoEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC);



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
ADD CONSTRAINT fk_Servicio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);



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
ADD CONSTRAINT fk_TicketCliente FOREIGN KEY (IdCliente) REFERENCES GatitaEmprendedora.Cliente(IdCliente);
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar);
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);
ALTER TABLE GatitaEmprendedora.Ticket 
ADD CONSTRAINT fk_TicketEmprendedor FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.Emprendedor(RFC);



CREATE TABLE GatitaEmprendedora.RegistrarProducto (
    IdTicket INT,
    IdProducto INT,
    IdNegocio INT,
    Cantidad INT
);

ALTER TABLE GatitaEmprendedora.RegistrarProducto 
ADD CONSTRAINT fk_RegistrarProductoTicket FOREIGN KEY (IdTicket) REFERENCES GatitaEmprendedora.Ticket(IdTicket);
ALTER TABLE GatitaEmprendedora.RegistrarProducto 
ADD CONSTRAINT fk_RegistrarProductoProducto FOREIGN KEY (IdNegocio, IdProducto) REFERENCES GatitaEmprendedora.Producto(IdNegocio, IdProducto);



CREATE TABLE GatitaEmprendedora.RegistrarServicio (
    IdTicket INT,
    IdServicio INT,
    IdNegocio INT,
    Duracion TIME
);

ALTER TABLE GatitaEmprendedora.RegistrarServicio 
ADD CONSTRAINT fk_RegistrarServicioTicket FOREIGN KEY (IdTicket) REFERENCES GatitaEmprendedora.Ticket(IdTicket);
ALTER TABLE GatitaEmprendedora.RegistrarServicio 
ADD CONSTRAINT fk_RegistrarServicioServicio FOREIGN KEY (IdNegocio, IdServicio) REFERENCES GatitaEmprendedora.Servicio(IdNegocio, IdServicio);




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



CREATE TABLE GatitaEmprendedora.HorarioPersonalOrganizador (
    RFC CHAR(13),
    HorarioPersonalOrganizador VARCHAR(30)
);

ALTER TABLE GatitaEmprendedora.HorarioPersonalOrganizador 
ADD CONSTRAINT pk_HorarioPersonalOrganizador PRIMARY KEY (RFC, HorarioPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.HorarioPersonalOrganizador 
ADD CONSTRAINT fk_HorarioPersonalOrganizador1 FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC);



CREATE TABLE GatitaEmprendedora.TelefonoPersonalOrganizador (
    TelefonoPersonalOrganizador CHAR(10),
    RFC CHAR(13)
);

ALTER TABLE GatitaEmprendedora.TelefonoPersonalOrganizador 
ADD CONSTRAINT pk_TelefonoPersonalOrganizador PRIMARY KEY (TelefonoPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.TelefonoPersonalOrganizador 
ADD CONSTRAINT fk_TelefonoPersonalOrganizador1 FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC);



CREATE TABLE GatitaEmprendedora.CorreoPersonalOrganizador (
    CorreoPersonalOrganizador VARCHAR(50),
    RFC CHAR(13)
);

ALTER TABLE GatitaEmprendedora.CorreoPersonalOrganizador 
ADD CONSTRAINT pk_CorreoPersonalOrganizador PRIMARY KEY (CorreoPersonalOrganizador);
ALTER TABLE GatitaEmprendedora.CorreoPersonalOrganizador
ADD CONSTRAINT fk_CorreoPersonalOrganizador1 FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC);



CREATE TABLE GatitaEmprendedora.Trabajar (
    IdBazar INT,
    RFC CHAR(13),
    FechaAsistencia DATE
);

ALTER TABLE GatitaEmprendedora.Trabajar 
ADD CONSTRAINT fk_TrabajarBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar);
ALTER TABLE GatitaEmprendedora.Trabajar 
ADD CONSTRAINT fk_TrabajarPersonalOrganizador FOREIGN KEY (RFC) REFERENCES GatitaEmprendedora.PersonalOrganizador(RFC);



CREATE TABLE GatitaEmprendedora.Agendar (
    IdBazar INT,
    IdNegocio INT,
    NumeroEstand INT,
    FechaAsistencia DATE
);

ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT pk_Agendar PRIMARY KEY (IdNegocio, FechaAsistencia);
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarBazar FOREIGN KEY (IdBazar) REFERENCES GatitaEmprendedora.Bazar(IdBazar);
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarNegocio FOREIGN KEY (IdNegocio) REFERENCES GatitaEmprendedora.Negocio(IdNegocio);
ALTER TABLE GatitaEmprendedora.Agendar 
ADD CONSTRAINT fk_AgendarEstand FOREIGN KEY (NumeroEstand) REFERENCES GatitaEmprendedora.Estand(NumeroEstand);

