-- Indica si los n�meros ingresados son pares o impares
-- Creaci�n de tabla
CREATE TABLE Tabla4 (
    id int,
    Value int,
);

-- Inserci�n de datos
INSERT INTO Tabla4(id, Value) VALUES (1, 4), (2,11), (3, 57), (4,24),(5,47);

-- Consulta
SELECT CASE Value % 2 WHEN 1 THEN 'IMPAR' ELSE 'PAR' END FROM Tabla4;

-- Eliminaci�n de tabla
DROP TABLE Tabla4;
