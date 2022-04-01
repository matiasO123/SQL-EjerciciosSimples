-- Se devuelve la cantidad de personas que tienen determinada edad. Se usa un procedimiento almacenado

USE master;
GO
BEGIN
-- Creación de tabla
CREATE TABLE Tabla13 (
    id int,
    Name varchar(8),
	Age int
);
-- Inserción de datos
INSERT INTO Tabla13(id, Name, Age) VALUES (1, 'Bob',21), (2,'Sam',19), (3,'Jill',18), (4, 'Jim',21),(5,'Sally',19), (6,'Jess',20), (7, 'Will',21);
END




USE master;
GO
-- Creación de procedimiento almacenado
CREATE PROCEDURE CantXEdad @age int
AS
BEGIN
-- Consulta
SELECT COUNT(Age) FROM Tabla13 WHERE Age = @age
END
GO




USE master;
GO
-- Llamado a procedimiento
exec.CantXEdad @age = 21;
-- Eliminación de tabla y procedimiento almacenado
DROP TABLE Tabla13;
DROP PROC CantXEdad;
