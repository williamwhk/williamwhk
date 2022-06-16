CREATE DATABASE unlimited_games;

USE unlimited_games;

CREATE TABLE usuarios(
    id INTEGER PRIMARY KEY  AUTO_INCREMENT,
    users VARCHAR(50),
    password VARCHAR(25)
);

CREATE TABLE cliente(
    cliente_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre  VARCHAR(15) NOT NULL,
    direccion VARCHAR(200),
    codigo_postal NUMERIC(10),
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE pedido(
    numero_pedido INTEGER PRIMARY KEY AUTO_INCREMENT,
    cliente_id INTEGER,
    nombre_id INTEGER,
    direccion VARCHAR(200),
    codigo_postal NUMERIC(10),
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE producto(
    producto_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cantidad INTEGER,
    precio_unidad NUMERIC(9,2),
    categoria VARCHAR(50)
);

CREATE TABLE review(
    producto_id INTEGER,
    review VARCHAR(200),
    rating NUMERIC(1-5),
    cliente_id INTEGER
);