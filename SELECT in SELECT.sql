#1. Bigger than Russia
SELECT name FROM world
  WHERE population >  (SELECT population FROM world
      WHERE name='Russia')
--------------------------------------------------------
#2. Richer than UK
SELECT name
FROM world
WHERE continent = 'Europe'
  AND gdp / population >
    (SELECT gdp / population
     FROM world
     WHERE name = 'United Kingdom');
-------------------------------------------------------
#3. Neighbours of Argentina and Australia
SELECT name, continent
FROM world
WHERE continent IN (
    SELECT continent
    FROM world
    WHERE name IN ('Argentina', 'Australia')
)
ORDER BY name;
----------------------------------------------------------
#4. Between Canada and Poland
SELECT name , population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'United Kingdom') 
AND population < (SELECT population FROM world WHERE name ='Germany') 
-------------------------------------------------------------------------
#5. Percentages of Germany
SELECT
  name,
  CONCAT(ROUND(population / (SELECT population FROM world WHERE name = 'Germany') * 100), '%') AS percentage
FROM world
WHERE continent = 'Europe';
-----------------------------------------------------------------------------------------
#6. Bigger than every country in Europe
SELECT name
FROM world
WHERE gdp > (SELECT MAX(gdp) FROM world WHERE continent ='Europe')
------------------------------------------------------------------------------------------
#7. Largest in each continent
