-- Devuelve las personas que no tiene nacionalidad canadiense o estadounidesne
-- Creación de tabla
CREATE TABLE Tabla8 (
    id int,
    Name varchar(15),
	Country varchar(15)
);

-- Inserción de datos
INSERT INTO Tabla8(id, Name, Country) VALUES (1, 'Bob Smith', 'United States'), (2,'Jim Jones','China'), (3,'Sam White', 'Japan'), (4,'Jess Black', 'Canada'), (5, 'Will Watson', 'Germany'),(6,'Wilson Scott', 'England'), (7,'Scott Daniels', 'France'), (8, 'Daniel Jackson', 'Canada'), (9,'Jack Johnson', 'United States');

-- Consulta
SELECT Name FROM Tabla8 WHERE Country != 'Canada' AND Country != 'United States';

-- Eliminación de tabla
DROP TABLE Tabla8;

