#First 10 distinct last name sorted in descending order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

#First 5 employees
SELECT first_name, last_name FROM employees
WHERE (hire_date BETWEEN '1990-1-1' AND '1999-12-31')
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

#Tenth batch of results - sets of 5
SELECT first_name, last_name FROM employees
WHERE (hire_date BETWEEN '1990-1-1' AND '1999-12-31')
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;