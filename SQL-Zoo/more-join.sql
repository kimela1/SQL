-- Use INNER JOIN to use data from two or more tables
-- Database consists of three tables movie, actor, and casting

-- 1. List the films where the yr is 1962 [Show id, title]
SELECT id, title FROM movie 
WHERE yr='1962';

-- 2. Give year of 'Citizen Kane'.
SELECT yr FROM movie 
WHERE title='Citizen Kane';

/*3. List all of the Star Trek movies, include the id, title
and yr (all of these movies include the words Star Trek in the title).
Order results by year.*/
SELECT id, title, yr FROM movie
WHERE title LIKE '%star trek%'
ORDER BY yr;

-- 4. What id number does the actor 'Glenn Close' have?
SELECT id FROM actor
WHERE name='Glenn Close';

-- 5. What is the id of the film 'Casablanca'
SELECT id FROM movie
WHERE title='Casablanca';

--6. Obtain the cast list for 'Casablanca'.
SELECT name FROM actor
INNER JOIN casting ON id=actorid
WHERE movieid=11768;

-- 7. Obtain the cast list for the film 'Alien'
SELECT name FROM actor
INNER JOIN casting ON actor.id=actorid
INNER JOIN movie ON movie.id=movieid
WHERE title='Alien';

-- 8. List the films in which 'Harrison Ford' has appeared
SELECT title FROM movie
INNER JOIN casting ON movie.id = movieid
INNER JOIN actor ON actor.id = actorid
WHERE name='Harrison Ford';

-- 9. List the films where 'Harrison Ford' has appeared - but not in the starring role. 
SELECT title FROM movie
INNER JOIN casting ON movie.id = movieid
INNER JOIN actor ON actor.id = actorid
WHERE name='Harrison Ford' AND ord > 1;

-- 10. List the films together with the leading star for all 1962 films.
SELECT title, name FROM movie
INNER JOIN casting ON movie.id = movieid
INNER JOIN actor ON actor.id = actorid
WHERE yr='1962' AND ord = 1;

/* 11. Which were the busiest years for 'Rock Hudson', show the year and the number of
movies he made each year for any year in which he made more than 2 movies.*/
SELECT yr, COUNT(title) FROM movie 
INNER JOIN casting ON movie.id=movieid
INNER JOIN actor ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2;

-- 12. List the film title and the leading actor for all of the films 'Julie Andrews' played in.
SELECT title, name FROM movie
INNER JOIN casting ON movie.id=movieid
INNER JOIN actor ON actor.id = actorid
WHERE ord = 1
	AND movie.id IN
	(SELECT movie.id FROM movie
	   JOIN casting ON movie.id = movieid
	   JOIN actor ON actor.id = actorid
           WHERE actor.name = 'Julie Andrews')

-- 13. Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.

-- 14. List the films released in the year 1978 ordered by the number of actors in the cast, then by title.

-- 15. ist all the people who have worked with 'Art Garfunkel'.


