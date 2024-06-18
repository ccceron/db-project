-- Crear tabla cliente
CREATE TABLE cliente (
    clientid INT PRIMARY KEY,
    nombre VARCHAR(255),
    dirección VARCHAR(255),
    teléfono VARCHAR(50),
    email VARCHAR(255) UNIQUE,
    ciudad VARCHAR(255),
    tipo VARCHAR(50)
);

-- Crear tabla mensajero (antes courier)
CREATE TABLE mensajero (
    mensajeroid INT PRIMARY KEY,
    nombre VARCHAR(255),
    dirección VARCHAR(255),
    teléfono VARCHAR(50),
    email VARCHAR(255)
);

-- Crear tabla contacta (antes contacts)
CREATE TABLE contacta (
    mensajeroid INT,
    clientid INT,
    PRIMARY KEY (mensajeroid, clientid),
    FOREIGN KEY (mensajeroid) REFERENCES mensajero(mensajeroid),
    FOREIGN KEY (clientid) REFERENCES cliente(clientid)
);

-- Crear tabla sucursal
CREATE TABLE sucursal (
    sucursalid INT PRIMARY KEY,
    nombre VARCHAR(255),
    dirección VARCHAR(255),
    clientid INT,
    teléfono VARCHAR(50),
    FOREIGN KEY (clientid) REFERENCES cliente(clientid)
);

-- Crear tabla usuario
CREATE TABLE usuario (
    cemail VARCHAR(255) PRIMARY KEY,
    dirección VARCHAR(255),
    teléfono VARCHAR(50),
    contraseña VARCHAR(255),
    FOREIGN KEY (cemail) REFERENCES cliente(email)
);

-- Crear tabla servicio
CREATE TABLE servicio (
    scode INT PRIMARY KEY,
    fecha DATE,
    hora TIME,
    origen VARCHAR(255),
    destino VARCHAR(255),
    cantidadpaquetes INT,
    tipotransporte VARCHAR(50),
    cemail VARCHAR(255),
    FOREIGN KEY (cemail) REFERENCES usuario(cemail)
);

-- Crear tabla estado
CREATE TABLE estado (
    scode INT,
    fecha DATE,
    foto BYTEA,
    PRIMARY KEY (scode, fecha),
    FOREIGN KEY (scode) REFERENCES servicio(scode)
);