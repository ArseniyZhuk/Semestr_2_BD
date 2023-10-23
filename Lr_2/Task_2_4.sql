/*Выбрать объекты, пользование которых платно для членов клуба*/
USE `cd`;
SELECT * FROM facilities
WHERE membercost != 0;