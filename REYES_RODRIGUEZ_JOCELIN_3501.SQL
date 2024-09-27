 CREATE DATABASE examen_DDL_Productos;
 USE examen_DDL_Productos;
 
 CREATE TABLE Productos(
 id_producto INT AUTO_INCREMENT PRIMARY KEY,
 nombre_producto VARCHAR (100) NOT NULL,
 precio DECIMAL(10,2)NOT NULL,
 stock INT
 );
 
 CREATE TABLE Ventas(
 id_ventas INT AUTO_INCREMENT PRIMARY KEY,
 id_producto INT,
 cantidad INT CHECK (cantidad > 0),
 fecha_venta DATE DEFAULT(NOW()),
 FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
); 
 

ALTER TABLE productos ADD COLUMN descripcion VARCHAR(100);

ALTER TABLE Productos DROP COLUMN stock;
DROP TABLE Ventas;