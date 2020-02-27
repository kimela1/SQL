-- Which countries did guests make bookings from?
SELECT country, COUNT(country) FROM hotels
GROUP BY country;