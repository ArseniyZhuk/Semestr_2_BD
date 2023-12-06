/*Выберите процент использования объектов по месяцам, упорядочив по возрастанию*/
USE cd;

WITH slots AS (
    SELECT facility, SUM(book.slots) AS rent_count,
    DATE_FORMAT(book.starttime, "%m %Y") AS date
    FROM facilities AS fac
    JOIN bookings AS book USING(facid)
    GROUP BY fac.facid, date
    )

SELECT s1.facility, CONCAT(ROUND(s1.rent_count / SUM(s2.rent_count) * 100, 1), '%') AS usability, s1.date
FROM slots AS s1
JOIN slots AS s2 USING(date)
GROUP BY s1.facility, s1.rent_count, s1.date
ORDER BY CAST(usability AS FLOAT);