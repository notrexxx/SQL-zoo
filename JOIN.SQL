-- JOIN 1

 game  JOIN goal ON (id=matchid)

-- JOIN 2

 matchid, teamid, player, gtime, id, teamname, coach

-- JOIN 3

SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid

-- JOIN 4

SELECT DISTINCT teamid, mdate
  FROM goal JOIN game on (matchid=id)
 WHERE mdate = '9 June 2012'

-- JOIN 5

  SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'

-- JOIN 6

SELECT DISTINCT player, teamid, gtime
  FROM game JOIN goal ON matchid = id
 WHERE stadium = 'Stadion Miejski (Wroclaw)'
   AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'))

-- JOIN 7

SELECT teamname, COUNT(*)
  FROM eteam JOIN goal ON teamid = id
 GROUP BY teamname
HAVING COUNT(*) < 3

-- JOIN 8

SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget

-- JOIN 9

SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid

-- JOIN 10

SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC

-- JOIN 11

SELECT title 
   FROM movie JOIN casting ON (movieid=movie.id)
              JOIN actor   ON (actorid=actor.id)
  WHERE name='Paul Hogan' AND ord = 1

-- JOIN 12

SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

-- JOIN 13

--link the director column in movies with the primary key in actor
--connect the primary keys of movie and actor via the casting table

-- JOIN 14

 SELECT title, yr 
   FROM movie, casting, actor 
  WHERE name='Robert De Niro' AND movieid=movie.id AND actorid=actor.id AND ord = 3
