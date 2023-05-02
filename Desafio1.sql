-- Abrir la terminal
psql "port=5432 dbname=postgres user=postgres password=postgres";

-- Crear BBDD
CREATE DATABASE desafio1_claudia_leiva_123;

-- Ingresas a la BBDD
\c desafio1_claudia_leiva_123;

-- Crear la tabla de datos
CREATE TABLE Clientes (
    email varchar(50),
    nombre varchar,
    telefono varchar(16),
    empresa varchar (50),
    prioridad smallint
);

-- Revisar si la tabla fue creada
\dt 

-- Insertar 5 registros
INSERT INTO Clientes (email, nombre, telefono, empresa, Prioridad) 
VALUES ('mail1@mail.com', 'nombre1 apellido 1', '111111111', 'WMCL', '9'),
('mail2@mail.com', 'nombre2 apellido 2', '222222222', 'WMCL2', '8'),
('mail3@mail.com', 'nombre3 apellido 3', '333333333', 'WMCL', '6'),
('mail4@mail.com', 'nombre4 apellido 4', '444444444', 'WMCL1', '10'),
('mail5@mail.com', 'nombre5 apellido 5', '555555555', 'WMCL3', '9');

-- Validamos los datos ingresados
SELECT * FROM Clientes;

-- 3 clientes con mayor Prioridad
SELECT * FROM Clientes ORDER BY Prioridad DESC LIMIT 3;

-- Devolver 2 registros - Empresa
SELECT * FROM Clientes WHERE Empresa='WMCL';

-- Devolver 2 registros - Prioridad
SELECT * FROM Clientes WHERE Prioridad='9';

-- Salir postgres
\q

Link Youtube:  https://youtu.be/7wtXM7jtyUc

