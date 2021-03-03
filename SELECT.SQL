-- select 1

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

-- select 2

SELECT name, population
   FROM world
WHERE name LIKE 'Al%'

-- select 3

SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

 -- select 4

 SELECT name,length(name)
FROM world
WHERE length(name)=5 and continent='Europe'

-- select 5

SELECT name, area*2 FROM world WHERE population = 64000

-- select 6

SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

 -- select 7

SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

 -- select 8

SELECT name
  FROM world
 WHERE name LIKE 'U%'

-- select 9

SELECT population
  FROM world
 WHERE name = 'United Kingdom'

-- select 10

 SELECT continent 
   FROM world 
  WHERE name = 'France'

-- select 12

 SELECT name, population / 10 
  FROM world 
 WHERE population < 10000

-- select 13

SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

-- select 14

SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

-- select 15

SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000

-- select 17

SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

-- select 18

SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

-- select 19

SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

-- select 20

SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'

-- select 21

SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))

-- select 22

SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')

-- select 23

 SELECT subject, COUNT(subject) 
   FROM nobel 
  WHERE yr ='1960' 
  GROUP BY subject

-- select 25

 SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

-- select 26

 SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

-- select 27

SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

-- select 28

SELECT name FROM bbc
 WHERE population >
       (SELECT population
          FROM bbc
         WHERE name='United Kingdom')
   AND region IN
       (SELECT region
          FROM bbc
         WHERE name = 'United Kingdom')

-- select 29

SELECT name FROM bbc
 WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')

-- select 30

SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')

-- select 31

SELECT name FROM bbc
 WHERE population > ALL
       (SELECT MAX(population)
          FROM bbc
         WHERE region = 'Europe')
   AND region = 'South Asia'
