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
---------------------------------------------------
#5. Literature in the 1980's
SELECT yr,subject,winner
FROM nobel
WHERE yr BETWEEN 1980 AND 1989 
AND subject = 'literature' ;
-------------------------------------------------------
#6. Only Presidents
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt','Thomas Woodrow Wilson',
  'Jimmy Carter','Barack Obama')
--------------------------------------------------------------
  #7. John
  SELECT winner
FROM nobel
WHERE winner LIKE 'John%'
--------------------------------------------------------------------
#8. Chemistry and Physics from different years
SELECT *
FROM nobel
WHERE yr= 1980 AND subject= 'physics' OR (yr= 1984 AND subject='chemistry')
------------------------------------------------------------------------------
#9. Exclude Chemists and Medics
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
  AND subject NOT IN ('chemistry', 'medicine');
---------------------------------------------------------------------------------
#10. Early Medicine, Late Literature
SELECT *
FROM nobel
WHERE subject='medicine' AND yr < 1910 OR (subject='literature' AND yr >= 2004)
----------------------------------------------------------------------------------------
#11. Umlaut
SELECT *
FROM nobel
WHERE winner = 'Peter GRÜNBERG'
----------------------------------------------------------------------------------------------
#12. Apostrophe
SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'
-----------------------------------------------------------------------------------------------
#13. Knights of the realm
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner;
-----------------------------------------------------------------------------------------------
#14. Chemistry and Physics last
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY 
CASE WHEN subject IN ('physics','chemistry') THEN 1 ELSE 0 END, subject, winner
-------------------------------------------------------------------------------------------------

