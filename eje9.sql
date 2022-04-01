--Devuelve las edades de las personas ingresadas (no las repite)
-- Creación de tabla
CREATE TABLE Tabla9 (
    id int,
    Name varchar(8),
	Age int
);

-- Inserción de datos
INSERT INTO Tabla9(id, Name, Age) VALUES (1, 'Bob',21), (2,'Sam',19), (3,'Jill',18), (4, 'Jim',21),(5,'Sally',19), (6,'Jess',20), (7, 'Will',21);

-- Consulta
SELECT DISTINCT Age FROM Tabla9;

-- Eliminación de tabla
DROP TABLE Tabla9;

