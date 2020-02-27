-- How many cancellations were made at each hotel?
SELECT hotel, is_canceled, COUNT(is_canceled) FROM hotels
GROUP BY hotel, is_canceled;