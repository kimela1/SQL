-- Which months had the highest average number of adults, children, and babies?
SELECT arrival_date_month, avg(children+adults+babies) FROM hotels
GROUP BY arrival_date_month;