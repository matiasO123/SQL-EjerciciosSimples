-- Vincula personas y fecha de vencimiento
-- Creación de tabla
CREATE TABLE Tabla12(
    id int,
	idNac int,
    Name varchar(8),
	Age int
);

-- Inserción de datos
INSERT INTO Tabla12(id, idNac, Name, Age) VALUES (1,1, 'Bob',21), (2,1,'Sam',19), (3,2,'Jill',18), (4,3, 'Jim',21),(5,4,'Sally',19), (6,2,'Jess',20), (7,3, 'Will',21);

-- Creación de tabla 2
CREATE TABLE Tabla12a(
    id int,
	Fvto varchar(15)
);

-- Inserción de datos en tabla2
INSERT INTO Tabla12a(id, Fvto) VALUES (1,'1/10/23'), (2,'22/5/25'), (5,'22/1/23'), (6,'15/6/28');






-- Consulta
SELECT T12.id, T12.Name, T12.Age, ISNULL(T12a.Fvto, '') FROM Tabla12 T12 LEFT JOIN Tabla12a T12a ON T12.id = T12a.id;

-- Eliminación de tabla
DROP TABLE Tabla12;
DROP TABLE Tabla12a;


