CREATE TABLE Bazar (
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

ALTER TABLE Bazar ADD CONSTRAINT pk_Bazar PRIMARY KEY (IdBazar);



CREATE TABLE AmenidadBazar (
    IdBazar INT,
    AmenidadBazar VARCHAR(100)
);

ALTER TABLE AmenidadBazar ADD CONSTRAINT pk_AmenidadBazar PRIMARY KEY (IdBazar, AmenidadBazar);
ALTER TABLE AmenidadBazar ADD CONSTRAINT fk_AmenidadBazar FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar);



CREATE TABLE Estand (
    Numero INT,
    Paquete CHAR(1),
    Precio MONEY
);

ALTER TABLE Estand ADD CONSTRAINT pk_Estand PRIMARY KEY (NumeroEstand);



CREATE TABLE AmenidadEstand (
    Numero INT,
    AmenidadEstand VARCHAR(100)
);

ALTER TABLE AmenidadEstand ADD CONSTRAINT pk_AmenidadEstand PRIMARY KEY (NumeroEstand, AmenidadEstand);
ALTER TABLE AmenidadEstand ADD CONSTRAINT fk_AmenidadEstand FOREIGN KEY (NumeroEstand) REFERENCES Estand(NumeroEstand);



CREATE TABLE Negocio (
    IdNegocio SERIAL,
    NombreNegocio VARCHAR(100),
    Descripcion VARCHAR(200),
    PrecioMinimo NUMERIC(10,2),
    PrecioMaximo NUMERIC(10,2)
);

ALTER TABLE Negocio ADD CONSTRAINT pk_Negocio PRIMARY KEY (IdNegocio);



CREATE TABLE TelefonoNegocio (
    IdNegocio INT,
    Telefono CHAR(10)
);

ALTER TABLE TelefonoNegocio ADD CONSTRAINT pk_TelefonoNegocio PRIMARY KEY (IdNegocio, Telefono);
ALTER TABLE TelefonoNegocio ADD CONSTRAINT fk_TelefonoNegocio FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);



CREATE TABLE CorreoNegocio (
    IdNegocio INT,
    Correo VARCHAR(50)
);

ALTER TABLE CorreoNegocio ADD CONSTRAINT pk_CorreoNegocio PRIMARY KEY (IdNegocio, Correo);
ALTER TABLE CorreoNegocio ADD CONSTRAINT fk_CorreoNegocio FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio)



CREATE TABLE RedSocialNegocio (
    IdNegocio INT,
    RedSocial VARCHAR(50)
);

ALTER TABLE RedSocialNegocio ADD CONSTRAINT pk_RedSocialNegocio PRIMARY KEY (IdNegocio, RedSocial);
ALTER TABLE RedSocialNegocio ADD CONSTRAINT fk_RedSocialNegocio FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);



CREATE TABLE Producto (
    IdNegocio INT,
    IdProducto SERIAL,
    NombreProducto VARCHAR(100),
    Descripcion VARCHAR(200),
    Tipo VARCHAR(50),
    Precio MONEY,
    Presentacion VARCHAR(100),
    Stock INT
);

ALTER TABLE Producto ADD CONSTRAINT pk_Producto PRIMARY KEY (IdNegocio, IdProducto);
ALTER TABLE Producto ADD CONSTRAINT fk_Producto FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);



CREATE TABLE Perecedero (
    IdNegocio INT,
    IdProducto INT,
    FechaPreparacion DATE,
    FechaCaducidad DATE
);

ALTER TABLE Perecedero ADD CONSTRAINT pk_Perecedero PRIMARY KEY (IdNegocio, IdProducto);
ALTER TABLE Perecedero ADD CONSTRAINT fk_PerecederoNegocio FOREIGN KEY (IdNegocio) REFERENCES Producto(IdNegocio);
ALTER TABLE Perecedero ADD CONSTRAINT fk_PerecederoProducto FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto);



CREATE TABLE Servicio (
    IdNegocio INT,
    IdServicio SERIAL,
    NombreServicio VARCHAR(100),
    Descripcion VARCHAR(200),
    Tipo VARCHAR(50),
    PrecioServicio MONEY,
    Duracion TIME
);

ALTER TABLE Servicio ADD CONSTRAINT pk_Servicio PRIMARY KEY (IdNegocio, IdServicio);
ALTER TABLE Servicio ADD CONSTRAINT fk_Servicio FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);



CREATE TABLE Ticket (
    IdTicket SERIAL,
    IdCliente INT,
    IdBazar INT,
    ComisionBazar NUMERIC(5,2),
    IdNegocio INT,
    RFC CHAR(13)
);

ALTER TABLE Ticket ADD CONSTRAINT pk_Ticket PRIMARY KEY (IdTicket);
ALTER TABLE Ticket ADD CONSTRAINT fk_TicketCliente FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente);
ALTER TABLE Ticket ADD CONSTRAINT fk_TicketBazar FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar);
ALTER TABLE Ticket ADD CONSTRAINT fk_TicketProducto FOREIGN KEY (IdNegocio) REFERENCES Producto(IdNegocio);
ALTER TABLE Ticket ADD CONSTRAINT fk_TicketEmprendedor FOREIGN KEY (RFC) REFERENCES Emprendedor(RFC);



CREATE TABLE RegistrarProducto (
    IdTicket INT,
    IdProducto INT,
    Cantidad INT
);

ALTER TABLE RegistrarProducto ADD CONSTRAINT fk_RegistrarProductoTicket FOREIGN KEY (IdTicket) REFERENCES Ticket(IdTicket);
ALTER TABLE RegistrarProducto ADD CONSTRAINT fk_RegistrarProductoProducto FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto);



CREATE TABLE RegistrarServicio (
    IdTicket INT,
    IdServicio INT,
    Duracion TIME
);

ALTER TABLE RegistrarServicio ADD CONSTRAINT fk_RegistrarServicioTicket FOREIGN KEY (IdTicket) REFERENCES Ticket(IdTicket);
ALTER TABLE RegistrarServicio ADD CONSTRAINT fk_RegistrarServicioServicio FOREIGN KEY (IdServicio) REFERENCES Servicio(IdServicio);



CREATE TABLE Cliente (
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

ALTER TABLE Cliente ADD CONSTRAINT pk_Cliente PRIMARY KEY (IdCliente);



CREATE TABLE MetodoPago (
    IdCliente INT,
    MetodoPago VARCHAR(20)
);

ALTER TABLE MetodoPago ADD CONSTRAINT pk_MetodoPago PRIMARY KEY (IdCliente, MetodoPago);
ALTER TABLE MetodoPago ADD CONSTRAINT fk_MetodoPago FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente);



CREATE TABLE Tarjeta (
    NumeroTarjeta CHAR(16),
    Vencimiento DATE,
    CVV VARCHAR(4),
    IdCliente INT
);

ALTER TABLE Tarjeta ADD CONSTRAINT pk_Tarjeta PRIMARY KEY (NumeroTarjeta);
ALTER TABLE Tarjeta ADD CONSTRAINT fk_Tarjeta FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente);



CREATE TABLE Emprendedor (
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

ALTER TABLE Emprendedor ADD CONSTRAINT pk_Emprendedor PRIMARY KEY (RFC);
ALTER TABLE Emprendedor ADD CONSTRAINT fk_Emprendedor FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);


CREATE TABLE TelefonoEmprendedor (
    TelefonoEmprendedor CHAR(10),
    RFC CHAR(13)
    
);

ALTER TABLE TelefonoEmprendedor ADD CONSTRAINT pk_TelefonoEmprendedor PRIMARY KEY (TelefonoEmprendedor);
ALTER TABLE TelefonoEmprendedor ADD CONSTRAINT fk_TelefonoEmprendedor FOREIGN KEY (RFC) REFERENCES Emprendedor(RFC);

CREATE TABLE CorreoEmprendedor (
    RFC CHAR(13),
    CorreoEmprendedor VARCHAR(50)
);

ALTER TABLE CorreoEmprendedor ADD CONSTRAINT pk_CorreoEmprendedor PRIMARY KEY (RFC, CorreoEmprendedor);
ALTER TABLE CorreoEmprendedor ADD CONSTRAINT fk_CorreoEmprendedor FOREIGN KEY (RFC) REFERENCES Emprendedor(RFC);



CREATE TABLE PersonalOrganizador (
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

ALTER TABLE PersonalOrganizador ADD CONSTRAINT pk_PersonalOrganizador PRIMARY KEY (RFC);



CREATE TABLE HorarioPersonalOrganizador (
    RFC CHAR(13),
    HorarioPersonalOrganizador VARCHAR(30)
);

ALTER TABLE HorarioPersonalOrganizador ADD CONSTRAINT pk_HorarioPersonalOrganizador PRIMARY KEY (RFC, HorarioPersonalOrganizador);
ALTER TABLE HorarioPersonalOrganizador ADD CONSTRAINT fk_HorarioPersonalOrganizador FOREIGN KEY (RFC) REFERENCES PersonalOrganizador(RFC);



CREATE TABLE TelefonoPersonalOrganizador (
    TelefonoPersonalOrganizador CHAR(10),
    RFC CHAR(13)
);

ALTER TABLE TelefonoPersonalOrganizador ADD CONSTRAINT pk_TelefonoPersonalOrganizador PRIMARY KEY (TelefonoPersonalOrganizador);
ALTER TABLE TelefonoPersonalOrganizador ADD CONSTRAINT fk_TelefonoPersonalOrganizador (RFC) REFERENCES PersonalOrganizador(RFC);


CREATE TABLE CorreoPersonalOrganizador (
    CorreoPersonalOrganizador VARCHAR(50),
    RFC CHAR(13)
);

ALTER TABLE CorreoPersonalOrganizador ADD CONSTRAINT pk_CorreoPersonalOrganizador PRIMARY KEY (TelefonoPersonalOrganizador);
ALTER TABLE CorreoPersonalOrganizador ADD CONSTRAINT fk_CorreoPersonalOrganizador (RFC) REFERENCES PersonalOrganizador(RFC);

CREATE TABLE Trabajar (
    IdBazar INT,
    RFC CHAR(13),
    FechaAsistencia DATE
);

ALTER TABLE Trabajar ADD CONSTRAINT fk_TrabajarBazar FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar);
ALTER TABLE Trabajar ADD CONSTRAINT fk_TrabajarPersonalOrganizador FOREIGN KEY (RFC) REFERENCES PersonalOrganizador(RFC);



CREATE TABLE Agendar (
    IdBazar INT,
    IdNegocio INT,
    NumeroEstand INT,
    FechaAsistencia DATE
);

ALTER TABLE Agendar ADD CONSTRAINT pk_Agendar PRIMARY KEY (IdNegocio, FechaAsistencia);
ALTER TABLE Agendar ADD CONSTRAINT fk_AgendarBazar FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar);
ALTER TABLE Agendar ADD CONSTRAINT fk_AgendarNegocio FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio);
ALTER TABLE Agendar ADD CONSTRAINT fk_AgendarEstand FOREIGN KEY (NumeroEstand) REFERENCES Estand(NumeroEstand);



DROP TABLE Bazar;
DROP TABLE AmenidadBazar;
DROP TABLE Estand;
DROP TABLE AmenidadEstand;
DROP TABLE Negocio;
DROP TABLE TelefonoNegocio;
DROP TABLE CorreoNegocio;
DROP TABLE RedSocialNegocio;
DROP TABLE Producto;
DROP TABLE Perecedero;
DROP TABLE Servicio;
DROP TABLE Ticket;
DROP TABLE RegistrarProducto;
DROP TABLE RegistrarServicio;
DROP TABLE Cliente;
DROP TABLE MetodoPago;
DROP TABLE Tarjeta;
DROP TABLE Emprendedor;
DROP TABLE TelefonoEmprendedor;
DROP TABLE CorreoEmprendedor;
DROP TABLE PersonalOrganizador;
DROP TABLE HorarioPersonalOrganizador;
DROP TABLE TelefonoPersonalOrganizador
DROP TABLE CorreoPersonalOrganizador;
DROP TABLE Trabajar;
DROP TABLE Agendar;
