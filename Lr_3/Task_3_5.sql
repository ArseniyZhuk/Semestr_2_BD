/*Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2.*/
USE cd;
SELECT DISTINCT CONCAT(mem.firstname, ' ', mem.surname) AS fullname
FROM members mem
JOIN bookings book USING (memid)
JOIN facilities fac Using (facid)
WHERE fac.facility LIKE "%Court 1%" OR fac.facility LIKE "%Court 2%";