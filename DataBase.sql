CREATE DATABASE Evasor_Tributario;
USE Evasor_Tributario;

CREATE TABLE Tarjeta(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(50),
	fechaCorte DATE,
	fechaPago DATE,
	interes DECIMAL(6, 2),
	numero VARCHAR(16),
	cvv INT(3),
	fechaExpiracion DATE
);

CREATE TABLE Cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(50),
	domicilio VARCHAR(50),
	telefono VARCHAR(15),
	curp VARCHAR(50),
	rfc VARCHAR(50),
	tarjeta_id INT,
	FOREIGN KEY (tarjeta_id) REFERENCES Tarjeta(id)
);

CREATE TABLE Compra(
	id INT PRIMARY KEY AUTO_INCREMENT,
	fecha DATE,
	establecimiento VARCHAR(50),
	concepto VARCHAR(50),
	monto DECIMAL(6, 2),
	cliente_id INT,
	FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);

CREATE TABLE EstadoCuenta(
	mes DATE,
	fechaInicio DATE,
	fechaFin DATE,
	total DECIMAL(6, 2),
	subtotal DECIMAL(6, 2)
);

