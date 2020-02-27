-- How mow many reservations where made at each hotel?
SELECT hotel, COUNT(hotel) FROM hotels
GROUP BY hotel;