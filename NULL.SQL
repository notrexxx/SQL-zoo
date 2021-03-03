-- NULL 1

 SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

-- NULL 2

SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower'

-- NULL 3

 SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name

-- NULL 4

--display 0 in result column for all teachers without department

-- NULL 5

SELECT name,
       CASE WHEN phone = 2752 THEN 'two'
            WHEN phone = 2753 THEN 'three'
            WHEN phone = 2754 THEN 'four'
            END AS digit
  FROM teacher

  --'four' for Throd

-- NULL 6

SELECT name, 
      CASE 
       WHEN dept 
        IN (1) 
        THEN 'Computing' 
       ELSE 'Other' 
      END 
  FROM teacher