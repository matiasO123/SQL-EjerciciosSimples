-- Devuelve IDs de las divisiones que tuvieron ingresos positivos en 2021
-- Creación de tabla
CREATE TABLE Tabla2 (
    DivisionID int,
    Year int,
	Revenue int
);

-- Inserción de datos
INSERT INTO Tabla2(DivisionID, Year, Revenue) VALUES (1, 2018, 60), (1,2021, 40), (1, 2020,70), (2,2021,-10),(3,2018,20), (3,2016, 40), (4,2021,50);

-- Consulta
SELECT DivisionID FROM Tabla2 WHERE Year = 2021 AND Revenue >= 0;

-- Eliminación de tabla
DROP TABLE Tabla2;
