-- Which month had the most reservations?
SELECT arrival_date_month, COUNT(arrival_date_month) FROM hotels
GROUP BY arrival_date_month;