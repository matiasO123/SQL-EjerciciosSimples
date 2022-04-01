-- Hace una sumatoria de las edades de las personas ingrsadas
-- Creación de tabla
CREATE TABLE Tabla10(
    id int,
    Name varchar(8),
	Age int
);

-- Inserción de datos
INSERT INTO Tabla10(id, Name, Age) VALUES (1, 'Bob',21), (2,'Sam',19), (3,'Jill',18), (4, 'Jim',21),(5,'Sally',19), (6,'Jess',20), (7, 'Will',21);

-- Consulta
SELECT SUM(Age) FROM Tabla10;

-- Eliminación de tabla
DROP TABLE Tabla10;
