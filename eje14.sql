-- Se devuelve el nombre del d�a de la fecha ingresada

USE master;
GO
-- Creaci�n de procedimiento almacenado
-- El par�metro va como tipo varchar, dado que el formato de la fecha del ejercicio difiere del formato de fecha de SQL
CREATE PROCEDURE semana @date varchar(15)
AS
BEGIN
-- Consulta
SELECT DATENAME(weekday, CONVERT(datetime, @date)) as output;
END
GO




USE master;
GO
-- Llamado a procedimiento
exec.semana @date = '02/02/2022';
-- Eliminaci�n de  procedimiento almacenado
DROP PROC semana;

