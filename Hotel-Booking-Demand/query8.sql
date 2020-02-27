-- Which months had the highest average waiting times?
SELECT arrival_date_month, AVG(days_in_waiting_list) FROM hotels
GROUP BY arrival_date_month;