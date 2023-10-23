/*Найдите дату последней регистрации члена клуба.*/
USE `cd`;
SELECT MAX(joindate) 'Последняя регистрация' FROM members;