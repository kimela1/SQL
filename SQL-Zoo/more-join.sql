-- Use INNER JOIN to use data from two or more tables
-- Database consists of three tables movie, actor, and casting

-- 1. List the films where the yr is 1962 [Show id, title]
SELECT id, title FROM movie 
WHERE yr='1962';