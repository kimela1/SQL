-- Which arrival month had the highest average lead time?
SELECT arrival_date_month, AVG(lead_time) FROM hotels
GROUP BY arrival_date_month;