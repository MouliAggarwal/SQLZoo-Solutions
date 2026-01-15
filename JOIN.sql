#1.
SELECT matchid, player
FROM goal
WHERE teamid = 'GER';
------------------------------------------------------------
#2.
SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012;
--------------------------------------------------------------
#3. 
SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON (id=matchid)
AND teamid = 'GER'
------------------------------------------------------------------
#4. 
SELECT team1 , team2 , player
FROM game
JOIN goal 
ON game.id = goal.matchid
WHERE player LIKE 'Mario%'
-------------------------------------------------------------------
#5. 
SELECT player, teamid, coach, gtime
FROM goal 
JOIN eteam 
ON teamid=id
WHERE gtime<=10 
---------------------------------------------------------------------
#6.
SELECT mdate , teamname
FROM game
JOIN eteam
ON team1=eteam.id 
WHERE coach LIKE 'Fernando Santos'
--------------------------------------------------------------------------
#7.
SELECT mdate , teamname
FROM game
JOIN eteam
ON team1=eteam.id 
WHERE coach LIKE 'Fernando Santos'
----------------------------------------------------------------------------
#8.
SELECT DISTINCT player
FROM game 
JOIN goal 
ON matchid = id 
WHERE teamid!='GER' 
AND (team1 = 'GER' OR team2 = 'GER')
------------------------------------------------------------------------------
#9.
SELECT teamname, COUNT(teamid)
FROM eteam 
JOIN goal ON id=teamid
GROUP BY teamname
-------------------------------------------------------------------------------
