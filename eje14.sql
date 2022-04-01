-- Se devuelve el nombre del día de la fecha ingresada

USE master;
GO
-- Creación de procedimiento almacenado
-- El parámetro va como tipo varchar, dado que el formato de la fecha del ejercicio difiere del formato de fecha de SQL
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
-- Eliminación de  procedimiento almacenado
DROP PROC semana;

