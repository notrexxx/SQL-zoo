-- Sum_count 1

 SELECT SUM(population) FROM bbc WHERE region = 'Europe'

 -- Sum_count 2

 SELECT COUNT(name) FROM bbc WHERE population < 150000

 -- Sum_count 3

--AVG(), COUNT(), MAX(), MIN(), SUM()

 -- Sum_count 4

 --No result due to invalid use of the WHERE function

-- Sum_count 5

 SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

 -- Sum_count 6

 SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region

 -- Sum_count 7

 SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)

 -- Sum_count 8

 SELECT region, SUM(area) 
   FROM bbc 
  GROUP BY region 
  HAVING SUM(area)<= 20000000