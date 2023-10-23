/*Выбрать объекты с ID равным 1 и 5.*/
USE `cd`;
SELECT facid, facility FROM facilities
WHERE facid = 1 OR facid = 5;
/*WHERE facid IN (1, 5);*/