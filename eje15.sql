-- Se elimina una persona espec�fica de la tabla junto con su registro de vencimiento. Se devuelve �0� si la persona fue eliminada y �-1� si la persona no existe

-- Creaci�n de tabla 2
CREATE TABLE Tabla15a(
    id int,
	Fvto varchar(15)
);
-- Inserci�n de datos en tabla2
INSERT INTO Tabla15a(id, Fvto) VALUES (1,'1/10/23'), (2,'22/5/25'), (5,'22/1/23'), (6,'15/6/28');


-- Creaci�n de tabla
CREATE TABLE Tabla15(
    id int,
	idNac int,
    Name varchar(8),
	Age int
);
-- Inserci�n de datos
INSERT INTO Tabla15(id, idNac, Name, Age) VALUES (1,1, 'Bob',21), (2,1,'Sam',19), (3,2,'Jill',18), (4,3, 'Jim',21),(5,4,'Sally',19), (6,2,'Jess',20), (7,3, 'Will',21);




USE master;
GO
-- Creaci�n de procedimiento almacenado
CREATE PROCEDURE PersonaDelete @idPersona int
AS
BEGIN
DECLARE @comprobacion AS INT
DECLARE @cantidadTotal AS INT
DECLARE @cantidadTotalNueva AS INT
DECLARE @resultado AS INT
-- Consulta
SELECT @comprobacion  = COUNT(id)  FROM Tabla15 WHERE id = @idPersona;
IF(@comprobacion != 0) 
	BEGIN
		SELECT @cantidadTotal  = COUNT(id)  FROM Tabla15;
		DELETE FROM Tabla15a WHERE id = (SELECT id FROM Tabla15 WHERE id = @idPersona)
		DELETE FROM Tabla15 WHERE id = @idPersona;
		SELECT @cantidadTotalNueva  = COUNT(id)  FROM Tabla15;
	IF(@cantidadTotal-1 = @cantidadTotalNueva)
	SET @resultado = 0;
END
ELSE
	SET @resultado = -1;
SELECT @idPersona as valor_ingresado, @resultado as output;
END;
GO




USE master;
GO
-- Llamado a procedimiento
exec.PersonaDelete @idPersona = 1;
exec.PersonaDelete @idPersona = 50;
-- Eliminaci�n de tabla y procedimiento almacenado
DROP TABLE Tabla15;
DROP TABLE Tabla15a;
DROP PROC PersonaDelete;



