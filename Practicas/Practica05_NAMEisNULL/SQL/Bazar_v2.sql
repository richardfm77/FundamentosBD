
CREATE TABLE Bazar (
    IdBazar SERIAL PRIMARY KEY,
    NombreBazar VARCHAR(100),
    Calle VARCHAR(100),
    NumeroInterior VARCHAR(50),
    NumeroExterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(50),
    Modalidad VARCHAR(80),
    FechaInicio DATE,
    FechaFin DATE
);




CREATE TABLE AmenidadBazar (
    IdBazar SERIAL,
    AmenidadBazar VARCHAR(100),
    PRIMARY KEY (IdBazar, AmenidadBazar),
    FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar)
    
);



CREATE TABLE Negocio (
    IdNegocio SERIAL PRIMARY KEY,
    NombreNegocio VARCHAR(100),
    Descripcion TEXT,
    PrecioMinimo NUMERIC(10, 2),
    PrecioMaximo NUMERIC(10, 2)
);


CREATE TABLE TelefonoNegocio (
    IdNegocio SERIAL,
    Telefono CHAR(10),
    PRIMARY KEY (IdNegocio, Telefono),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio)
);


CREATE TABLE CorreoNegocio (
    IdNegocio SERIAL,
    Correo VARCHAR(50),
    PRIMARY KEY (IdNegocio, Correo),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio)
);

CREATE TABLE RedSocialNegocio (
    IdNegocio SERIAL,
    RedSocial VARCHAR(50),
    PRIMARY KEY (IdNegocio, RedSocial),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio)
);

CREATE TABLE Estand (
    NumeroEstand INT PRIMARY KEY,
    Paquete CHAR(1),
    Precio MONEY
);

CREATE TABLE AmenidadEstand (
    NumeroEstand INT,
    AmenidadEstand VARCHAR(100), 
    PRIMARY KEY (NumeroEstand, AmenidadEstand),
    FOREIGN KEY (NumeroEstand) REFERENCES Estand(NumeroEstand)
);


CREATE TABLE Trabajador (
    RFC CHAR(13) PRIMARY KEY,
    IdNegocio SERIAL,
    NombreTrabajador VARCHAR(100),
    APaternoTrabajador VARCHAR(100),
    AMaternoTrabajador VARCHAR(100),
    Calle VARCHAR(100),
    NumeroExterior VARCHAR(50),
    NumeroInterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    Genero CHAR(1),
    FechaNacimiento DATE,
    Salario MONEY,
    esEmprendedor BOOLEAN,
    esSeguridad BOOLEAN,
    esLimpieza BOOLEAN,
    esMedico BOOLEAN,
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio)
);

CREATE TABLE HorarioTrabajador (
    RFC CHAR(13),
    Horario VARCHAR(30),
    PRIMARY KEY (RFC, Horario),
    FOREIGN KEY (RFC) REFERENCES Trabajador(RFC)
);

CREATE TABLE TelefonoTrabajador (
    RFC CHAR(13),
    TelefonoTrabajador CHAR(10),
    PRIMARY KEY (RFC, TelefonoTrabajador),
    FOREIGN KEY (RFC) REFERENCES Trabajador(RFC)
);

CREATE TABLE CorreoTrabajador (
    RFC CHAR(13),
    CorreoTrabajador VARCHAR(50),
    PRIMARY KEY (RFC, CorreoTrabajador),
    FOREIGN KEY (RFC) REFERENCES Trabajador(RFC)
);

CREATE TABLE Cliente (
    IdCliente SERIAL PRIMARY KEY,
    NombreCliente VARCHAR(100),
    APaternoCliente VARCHAR(100),
    AMaternoCliente VARCHAR(100),
    Calle VARCHAR(100),
    NumeroExterior VARCHAR(50),
    NumeroInterior VARCHAR(50),
    Colonia VARCHAR(100),
    Estado VARCHAR(100),
    esFisico BOOLEAN,
    esVirtual BOOLEAN
);

CREATE TABLE MetodoPago (
    IdCliente SERIAL,
    MetodoPago VARCHAR(20),
    PRIMARY KEY (IdCliente, MetodoPago),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

CREATE TABLE Tarjeta (
    NumeroTarjeta CHAR(16),
    IdCliente SERIAL,
    Vencimiento DATE,
    CVV VARCHAR(4),
    PRIMARY KEY (NumeroTarjeta, IdCliente),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

CREATE TABLE Producto (
    IdNegocio SERIAL,
    IdProducto SERIAL,
    NombreProducto VARCHAR(100),
    Descripcion TEXT,
    Tipo VARCHAR(50),
    Precio MONEY,
    Presentacion VARCHAR(100),
    Stock INT,
    PRIMARY KEY (IdNegocio, IdProducto),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio) 
);

CREATE TABLE Servicio (
    IdNegocio SERIAL,
    IdServicio SERIAL,
    NombreServicio VARCHAR(100),
    Descripcion TEXT,
    Tipo VARCHAR(50),
    PrecioServicio MONEY,
    Duracion TIME,
    PRIMARY KEY (IdNegocio, IdServicio),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio) 
);

CREATE TABLE Perecedero (
    IdNegocio SERIAL,
    IdProducto SERIAL,
    FechaPreparacion DATE,
    FechaCaducidad DATE,
    PRIMARY KEY (IdNegocio, IdProducto),
    FOREIGN KEY (IdNegocio) REFERENCES Producto(IdNegocio),
    FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto)
);

CREATE TABLE Ticket (
    IdTicket SERIAL PRIMARY KEY,
    IdCliente SERIAL,
    IdBazar SERIAL,
    IdNegocio SERIAL,
    RFC CHAR(13),
    ComisionBazar NUMERIC(5,2),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
    FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar),
    FOREIGN KEY (IdNegocio) REFERENCES Producto(IdNegocio),
    FOREIGN KEY (RFC) REFERENCES Trabajador(RFC)
);

CREATE TABLE Trabajar (
    IdBazar SERIAL,
    RFC CHAR(13),
    PRIMARY KEY (IdBazar, RFC)
    FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar),
    FOREIGN KEY (RFC) REFERENCES Trabajador(RFC)
    
);

CREATE TABLE RegistrarProducto (
    IdTicket SERIAL,
    IdProducto SERIAL,
    Cantidad INT,
    PRIMARY KEY (IdTicket, IdProducto),
    FOREIGN KEY (IdTicket) REFERENCES Ticket(IdTicket),
    FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto)
    
    
);

CREATE TABLE RegistrarServicio (
    IdTicket SERIAL,
    IdServicio SERIAL,
    Duracion TIME,
    PRIMARY KEY (IdTicket, IdServicio),
    FOREIGN KEY (IdTicket) REFERENCES Ticket(IdTicket),
    FOREIGN KEY (IdServicio) REFERENCES Servicio(IdServicio)
);

CREATE TABLE Agendar (
    IdBazar SERIAL,
    IdNegocio SERIAL,
    NumeroEstand INT,
    FechaAsistencia DATE,
    PRIMARY KEY (IdBazar, IdNegocio, NumeroEstand, FechaAsistencia)
    FOREIGN KEY (IdBazar) REFERENCES Bazar(IdBazar),
    FOREIGN KEY (IdNegocio) REFERENCES Negocio(IdNegocio),
    FOREIGN KEY (NumeroEstand) REFERENCES Estand(NumeroEstand)
    
);




