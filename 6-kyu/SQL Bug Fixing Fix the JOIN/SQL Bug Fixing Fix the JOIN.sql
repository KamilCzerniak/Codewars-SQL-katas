SELECT 
  j.job_title,
 CAST(ROUND(AVG(j.salary),2) AS FLOAT) as average_salary,
  COUNT(p.id) as total_people,
  CAST(ROUND(SUM(j.salary),2) AS FLOAT) as total_salary
  FROM people p
    JOIN job j
    ON p.id = j.id
  GROUP BY j.job_title
  ORDER BY average_salary DESC
