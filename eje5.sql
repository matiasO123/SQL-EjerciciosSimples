-- Agrupa las personas por edad. Adem�s las cuenta, seg�n la edad
-- Creaci�n de tabla
CREATE TABLE Tabla5 (
    id int,
    Name varchar(8),
	Age int
);

-- Inserci�n de datos
INSERT INTO Tabla5(id, Name, Age) VALUES (1, 'Bob', 21), (2,'Sam', 19), (3,'Jill', 18), (4, 'Jim', 21),(5,'Sally', 19), (6,'Jess', 20), (7, 'Will', 21);

-- Consulta
SELECT Age, Count(id) AS 'Count' FROM Tabla5 GROUP BY Age;

-- Eliminaci�n de tabla
DROP TABLE Tabla5;

