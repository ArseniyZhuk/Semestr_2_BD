/*Выбрать объекты с ID равным 1 и 5.*/
USE `cd`;
SELECT facid, facility FROM facilities
WHERE facid IN (1, 5);