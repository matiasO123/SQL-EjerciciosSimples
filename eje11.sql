-- Vincula personas y nacionalidades
-- Creaci�n de tabla
CREATE TABLE Tabla11(
    id int,
	idNac int,
    Name varchar(8),
	Age int
);

-- Inserci�n de datos
INSERT INTO Tabla11(id, idNac, Name, Age) VALUES (1,1, 'Bob',21), (2,1,'Sam',19), (3,2,'Jill',18), (4,3, 'Jim',21),(5,4,'Sally',19), (6,2,'Jess',20), (7,3, 'Will',21);

-- Creaci�n de tabla 2
CREATE TABLE Tabla11a(
    id int,
	Descen varchar(15)
);

-- Inserci�n de datos en tabla2
INSERT INTO Tabla11a(id, Descen) VALUES (1,'Argentino'), (2,'Italiano'), (3,'Espa�ol'), (4,'Alem�n');






-- Consulta
SELECT Tabla11.id,Descen as 'DesNac', Name, Age FROM Tabla11 INNER JOIN Tabla11a ON Tabla11.idNac = Tabla11a.id;

-- Eliminaci�n de tabla
DROP TABLE Tabla11;
DROP TABLE Tabla11a;



