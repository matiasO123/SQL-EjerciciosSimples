-- Se invierten los n�meros de la tabla(de negativo a positivo y viceversa)
-- Creaci�n de tabla
CREATE TABLE Numeros (
    id int,
    Value int
);
-- Inserci�n de datos
INSERT INTO Numeros(id, Value) VALUES (1,-56), (2,76), (3,-84), (4,96),(5,-47);

-- Consulta
SELECT (Value*-1) FROM Numeros;

-- Eliminaci�n de tabla
DROP TABLE Numeros;
