-- Devuelve un mensaje de saludo usando el nombre de cada persona
-- Creaci�n de tabla
CREATE TABLE Tabla6 (
    id int,
    Name varchar(8)
);

-- Inserci�n de datos
INSERT INTO Tabla6(id, Name) VALUES (1, 'Bob'), (2,'Sam'), (3,'Jill'), (4, 'Jim'),(5,'Sally'), (6,'Jess'), (7, 'Will');

-- Consulta
SELECT CONCAT('�Hola ', Name, '! �C�mo est�s hoy?') AS 'Saludo' FROM Tabla6;

-- Eliminaci�n de tabla
DROP TABLE Tabla6;

