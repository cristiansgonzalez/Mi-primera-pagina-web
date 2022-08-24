SHOW DATABASES;
CREATE DATABASE clientes;
USE clientes;
SHOW TABLES;
CREATE TABLE clientes(
id INT(16) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
apellido VARCHAR(60) NOT NULL,
direccion VARCHAR(60),
PRIMARY KEY (id)
);
DESCRIBE clientes; #para saber las colummnas que tiene la base de datos

INSERT INTO clientes (nombre, apellido, direccion)
VALUES  ('Cristian', 'Gonzalez', 'calle 10');
INSERT INTO clientes (nombre, apellido, direccion)
VALUES  ('Juan', 'Gomez', NULL);

SELECT * FROM clientes;

SELECT * FROM clientes WHERE nombre = 'Cristian';
SELECT * FROM clientes WHERE nombre  LIKE '%tia%';
SELECT * FROM clientes LIMIT 2;
UPDATE clientes SET nombre = 'Manuel', direccion = 'villa' WHERE id = 2;
ALTER TABLE clientes ADD COLUMN empresa VARCHAR(45) NOT NULL;
DELETE FROM clientes WHERE id = 2;
