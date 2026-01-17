#1. Total world population
SELECT SUM(population)
FROM world
---------------------------------------------
#2. List of continents
SELECT distinct continent
FROM world
--------------------------------------------------
#3. GDP of Africa
SELECT SUM(gdp)
FROM world
WHERE continent LIKE 'africa'
-----------------------------------------------------
#4. Count the big countries
SELECT COUNT(name)
FROM world
WHERE area >= 1000000
-----------------------------------------------------
#5. Baltic states population
SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');
-----------------------------------------------------------
#6. Counting the countries of each continent
SELECT continent , COUNT(continent)
FROM world
GROUP BY continent
--------------------------------------------------------------
