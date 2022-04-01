-- Devuelve los 5 art�culos m�s vendidos
-- Creaci�n de tabla
CREATE TABLE Tabla7 (
    id int,
    Name varchar(8),
	AmountSold int
);

-- Inserci�n de datos
INSERT INTO Tabla7(id, Name, AmountSold) VALUES (1, 'Cup',11), (2,'Saucer',22), (3,'Plate',46), (4, 'Fork',34),(5,'Spoon',45), (6,'Knife',78), (7, 'Mug',23), (8,'Glass', 64), (9, 'Tumbler', 24);

-- Consulta
SELECT  TOP 5 Name FROM Tabla7 ORDER BY AmountSold DESC;

-- Eliminaci�n de tabla
DROP TABLE Tabla7;

