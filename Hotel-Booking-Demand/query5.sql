-- Which dates had the most cancellations?
SELECT reservation_status_date, COUNT(reservation_status_date) FROM hotels
WHERE is_canceled=1
GROUP BY reservation_status_date;