-- Devuelve el siglo de los a�os ingresados
-- Creaci�n de tabla
CREATE TABLE Tabla3 (
    id int,
    Year int,
);

-- Inserci�n de datos
INSERT INTO Tabla3(id, Year) VALUES (1, 1776), (2,2001), (3, 1643), (4,1865),(5,1969);

-- Consulta
SELECT(ROUND(Year,-2)+1)/100 FROM Tabla3;

-- Eliminaci�n de tabla
DROP TABLE Tabla3;
