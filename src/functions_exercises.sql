
#Employees with first names 'Irena', 'Vidya', or 'Maya' and also male ordered by first name
SELECT concat(count(first_name), " ", gender) AS 'Total'
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
GROUP BY gender;


SELECT concat(first_name, " ",last_name ) AS 'Full Name' FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;


SELECT first_name,last_name, DATEDIFF(now(), hire_date) AS 'Days' FROM employees
WHERE (hire_date BETWEEN '1990-1-1' AND '1999-12-31')
      AND birth_date LIKE '%-12-25';


SELECT  concat(first_name, " ",last_name ) AS 'FullName', count(first_name) AS '#EmployeesWithSameName'
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY FullName
ORDER BY `#EmployeesWithSameName` DESC ;
