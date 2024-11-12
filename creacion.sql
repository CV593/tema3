CREATE DATABASE IF NOT EXISTS Personal;

USE Personal;

CREATE TABLE IF NOT EXISTS DEPARTAMENTOS(
	clave_depto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    presupuesto INT
);

CREATE TABLE IF NOT EXISTS EMPLEADOS(
	clave_empleado varchar(8) PRIMARY KEY,
    nombre VARCHAR(30),
    apellidos VARCHAR(30),
    clave_depto INT,
    FOREIGN KEY (clave_depto) REFERENCES departamento(clave_depto)
);

INSERT INTO DEPARTAMENTOS (nombre, presupuesto) VALUES
('Personal', 80000),
('Almacén', 70000),
('Contabilidad', 60000),
('Manufactura', 50000),
('Empaque', 30000);

INSERT INTO EMPLEADOS (clave_empleado, nombre, apellidos, clave_depto) VALUES
('EMP01', 'Armando', 'López', 2),
('EMP02', 'Tatiana', 'Vargas', 1),
('EMP03', 'Laura', 'Iturria', 3),
('EMP04', 'Juan', 'Pérez', 4),
('EMP05', 'Iván', 'López', 4),
('EMP06', 'Margarita', 'Hernández', 1),
('EMP07', 'Jesús', 'Pérez', 3),
('EMP08', 'Tonatiuh', 'Flores', 2),
('EMP09', 'Juan', 'López', 4),
('EMP10', 'José', 'Hernández', 5);

