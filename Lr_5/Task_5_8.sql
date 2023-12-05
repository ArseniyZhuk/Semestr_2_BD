/*Составьте список объектов вместе с их общим доходом. Выходная таблица должна состоять из названия объекта и доходов, отсортированных по доходам. Помните, что для гостей и участников действуют разные цены!*/
USE cd;
SELECT fac.facility AS 'Название объекта',
       SUM(IF (book.memid = 0, fac.guestcost * book.slots, fac.membercost * book.slots)) AS Total
FROM facilities AS fac
LEFT JOIN bookings AS book USING(facid)
GROUP BY fac.facility
ORDER BY Total DESC;