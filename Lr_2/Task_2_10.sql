/*Выберите 10 фамилий членов клуба упорядочите их по алфавиту без повторов.*/
USE `cd`;
SELECT DISTINCT surname FROM members
WHERE surname != 'GUEST'
ORDER BY surname
LIMIT 10;