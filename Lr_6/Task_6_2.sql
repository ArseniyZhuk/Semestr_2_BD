/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;

SELECT facility, SUM(book.slots) AS rent_count,
DATE_FORMAT(book.starttime, "%m %Y") AS date
FROM facilities AS fac
JOIN bookings AS book USING(facid)
GROUP BY fac.facid, date;