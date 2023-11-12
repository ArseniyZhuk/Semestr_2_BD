/* Выберите лист времен (timestamp) покупки/использования объектов членом клуба 'David Farrell'*/
USE cd;
SELECT starttime FROM bookings 
WHERE memid=(
            SELECT memid
            FROM members
            WHERE firstname = 'David' AND surname = 'Farrell'
            );