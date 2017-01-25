#Unique titles in the titles table sorted alphabetically
SELECT DISTINCT title
FROM titles
ORDER BY title;

#Unique last names that start and end with 'E'
SELECT  last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

#Unique combinations of first and last name where the last name starts and ends with 'E'
SELECT  first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

#Unique last names with a 'q' but not 'qu'
SELECT  last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;