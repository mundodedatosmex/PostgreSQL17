-- ===========================================================================
/*
 Author: MundoDeDatosMex
 Create date: 2026-02-28
 Description: Sript ejemplo desarrollado durante el video tutorial
	   		  "SQL con PostgreSQL en 20 minutos"
*/
-- ===========================================================================

-- CREATE TABLE 
CREATE TABLE jugador (
id_jugador 	INT,
nombre		VARCHAR(64),
apellido	VARCHAR(64)
);

-- INSERT 
INSERT INTO jugador (id_jugador,nombre,apellido) VALUES (12,'Erick','Matla');
INSERT INTO jugador (nombre,id_jugador,apellido) VALUES ('Orlando',99,'Cruz');

-- UPDATE
UPDATE jugador SET apellido = 'Dummy';
UPDATE jugador SET apellido = 'Matla' WHERE id_jugador = 12;

-- DELETE 
DELETE FROM jugador;
DELETE FROM jugador WHERE id_jugador = 99;

-- SELECT, FROM (Consulta básica)
SELECT * 
FROM jugador;

SELECT *  
FROM finals;

SELECT temporada, 
	   campeon	
FROM finals

SELECT temporada, 
	   campeon	
FROM finals

SELECT 	marcador, 
		temporada,
		estadiopartidofinal, 
	   	campeon	
FROM finals

-- ORDER BY
SELECT  * 
FROM tablageneral 
ORDER BY ganados

SELECT  * 
FROM tablageneral 
ORDER BY ganados ASC

SELECT  * 
FROM tablageneral 
ORDER BY ganados, perdidos, empatados DESC

-- LIMIT 
SELECT * 
FROM finals  
ORDER BY temporada DESC 
LIMIT 10

-- WHERE 
SELECT * 
FROM finals 
WHERE paisorigen_ganador = 'SPAIN'

SELECT * 
FROM finals 
WHERE paisorigen_ganador = 'Spain'

-- GROUP BY 
SELECT paisorigen_ganador, COUNT(*)
FROM finals 
GROUP BY paisorigen_ganador 

-- HAVING
SELECT paisorigen_ganador 
FROM finals 
GROUP BY paisorigen_ganador 
HAVING COUNT(*) > 10

-- Funciones de cadena y fecha
SELECT SUBSTRING(paisorigen_ganador,1,3)
FROM finals 

SELECT CURRENT_DATE

SELECT EXTRACT(YEAR FROM CURRENT_DATE)
