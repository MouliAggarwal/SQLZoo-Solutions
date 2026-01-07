#1. Winners from 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
----------------------------------------------
#2. 1962 Literature
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'
-----------------------------------------------
#3. Albert Einstein
SELECT yr, subject
FROM nobel
WHERE winner= 'Albert Einstein'
-----------------------------------------------
#4. Recent Peace Prizes
SELECT winner
FROM nobel
WHERE yr >= 2000 
AND subject= 'peace'
