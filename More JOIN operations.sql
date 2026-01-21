#1. 1962 movies
SELECT id, title
 FROM movie
 WHERE yr=1962 AND budget > 2000000 
---------------------------------------------------
#2. When was Citizen Kane released?
SELECT yr
FROM movie
WHERE title = 'Citizen Kane'
---------------------------------------------------
#3. Star Trek movies
SELECT id , title , yr
FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr
----------------------------------------------------
#4. id for actor Glenn Close
SELECT id
FROM actor
WHERE name = 'Glenn Close';
---------------------------------------------------
#5. id for Casablanca
SELECT id
FROM movie
WHERE title = 'Casablanca' AND yr = '1942'
--------------------------------------------------------
#6. Cast list for Casablanca
SELECT name
FROM actor
JOIN casting
ON id = actorid
WHERE movieid = 132689;
------------------------------------------------------------
#7. Alien cast list
SELECT a.name
FROM actor a
JOIN casting c ON a.id = c.actorid
JOIN movie m ON c.movieid = m.id
WHERE m.title = 'Alien'
--------------------------------------------------------------
#8. Harrison Ford movies
SELECT m.title
FROM movie m
JOIN casting c 
ON m.id = c.movieid
JOIN actor a 
ON c.actorid = a.id
WHERE a.name = 'Harrison Ford'
----------------------------------------------------------------------
#9. Harrison Ford as a supporting actor
SELECT m.title
FROM movie m
JOIN casting c 
ON m.id = c.movieid
JOIN actor a 
ON c.actorid = a.id
WHERE a.name = 'Harrison Ford'
AND c.ord <> '1'
---------------------------------------------------------------------------

