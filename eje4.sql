-- Indica si los números ingresados son pares o impares
-- Creación de tabla
CREATE TABLE Tabla4 (
    id int,
    Value int,
);

-- Inserción de datos
INSERT INTO Tabla4(id, Value) VALUES (1, 4), (2,11), (3, 57), (4,24),(5,47);

-- Consulta
SELECT CASE Value % 2 WHEN 1 THEN 'IMPAR' ELSE 'PAR' END FROM Tabla4;

-- Eliminación de tabla
DROP TABLE Tabla4;
