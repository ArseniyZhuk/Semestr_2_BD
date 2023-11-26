/*Выведите членов клуба, которые не арендовали объекты клуба; Удалите всех членов клуба, которые не арендовали объекты клуба;Проверьте есть ли в клубе член с memid = 37*/
USE cd;

SELECT * FROM members 
WHERE memid NOT IN (SELECT memid FROM bookings); /*Члены клуба, которые не арендовали объекты*/

DELETE FROM members
WHERE memid NOT IN (SELECT memid FROM bookings); /*Удаляю тех, кого выводил выше*/

SELECT * FROM members
WHERE memid = 37; /*Проверяю есть ли в клубе член с memid = 37*/

SELECT * FROM members; /*Члена клуба с memid = 37 нет*/