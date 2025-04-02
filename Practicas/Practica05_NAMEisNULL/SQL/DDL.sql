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

CREATE TABLE AmenidadBazar (
    IdBazar INT,
    AmenidadBazar VARCHAR(100)
);

CREATE TABLE Estand (
    Numero INT,
    Paquete CHAR(1),
    Precio MONEY
);

CREATE TABLE AmenidadEstand (
    Numero INT,
    AmenidadEstand VARCHAR(100)
);

CREATE TABLE Negocio (
    IdNegocio SERIAL,
    NombreNegocio VARCHAR(100),
    Descripcion VARCHAR(200),
    PrecioMinimo NUMERIC(10,2),
    PrecioMaximo NUMERIC(10,2)
);

CREATE TABLE TelefonoNegocio (
    IdNegocio INT,
    Telefono CHAR(10)
);

CREATE TABLE CorreoNegocio (
    IdNegocio INT,
    Correo VARCHAR(50)
);

CREATE TABLE RedSocialNegocio (
    IdNegocio INT,
    RedSocial VARCHAR(50)
);

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

CREATE TABLE Perecedero (
    IdNegocio INT,
    IdProducto INT,
    FechaPreparacion DATE,
    FechaCaducidad DATE
);

CREATE TABLE Servicio (
    IdNegocio INT,
    IdServicio SERIAL,
    NombreServicio VARCHAR(100),
    Descripcion VARCHAR(200),
    Tipo VARCHAR(50),
    PrecioServicio MONEY,
    Duracion TIME
);

CREATE TABLE Ticket (
    IdTicket SERIAL,
    IdCliente INT,
    IdBazar INT,
    ComisionBazar NUMERIC(5,2),
    IdNegocio INT,
    RFC CHAR(13)
);

CREATE TABLE RegistrarProducto (
    IdTicket INT,
    IdProducto INT,
    Cantidad INT
);

CREATE TABLE RegistrarServicio (
    IdTicket INT,
    IdServicio INT,
    Duracion TIME
);

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

CREATE TABLE MetodoPago (
    IdCliente INT,
    MetodoPago VARCHAR(20)
);

CREATE TABLE Tarjeta (
    NumeroTarjeta CHAR(16),
    Vencimiento DATE,
    CVV VARCHAR(4),
    IdCliente INT
);

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

CREATE TABLE TelefonoEmprendedor (
    RFC CHAR(13),
    TelefonoEmprendedor CHAR(10)
);

CREATE TABLE CorreoEmprendedor (
    RFC CHAR(13),
    CorreoEmprendedor VARCHAR(50)
);

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

CREATE TABLE HorarioPersonalOrganizador (
    RFC CHAR(13),
    HorarioPersonalOrganizador VARCHAR(30)
);

CREATE TABLE TelefonoPersonalOrganizador (
    RFC CHAR(13),
    TelefonoPersonalOrganizador CHAR(10)
);

CREATE TABLE CorreoPersonalOrganizador (
    RFC CHAR(13),
    CorreoPersonalOrganizador VARCHAR(50)
);

CREATE TABLE Trabajar (
    IdBazar INT,
    RFC CHAR(13),
    FechaAsistencia DATE
);

CREATE TABLE Agendar (
    IdBazar INT,
    IdNegocio INT,
    NumeroEstand INT,
    FechaAsistencia DATE
);
