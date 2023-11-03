/*Выберите 10 фамилий членов клуба упорядочите их по алфавиту без повторов.*/
USE `cd`;
SELECT *
FROM(
    SELECT DISTINCT surname
    FROM members
    WHERE surname != 'GUEST'
    LIMIT 10
    )query_in
ORDER BY surname;