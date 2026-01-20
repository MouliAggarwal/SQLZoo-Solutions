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

