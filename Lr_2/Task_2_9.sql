/*Выбрать всех членов клуба, зарегистрированных с сентября 2012 года.*/
USE `cd`;
SELECT * FROM members
WHERE (MONTH(joindate) >= 9 AND YEAR(joindate) = 2012) OR YEAR(joindate) > 2012;