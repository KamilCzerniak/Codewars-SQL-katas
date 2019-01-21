SELECT * FROM departments d
WHERE EXISTS (SELECT department_id FROM sales 
WHERE department_id = d.id AND price > 98.00)
