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
