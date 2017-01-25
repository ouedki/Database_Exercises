
#Employees with first names 'Irena', 'Vidya', or 'Maya' and also male ordered by first name
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY first_name;

#Employees with first names 'Irena', 'Vidya', or 'Maya' and also male ordered by first name and then last name
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY first_name, last_name;

#Employees with first names 'Irena', 'Vidya', or 'Maya' and also male ordered by last name before first name
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name, first_name;

#Employees with 'E' in their last name to sort the results by their employee number
SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;

#Employees with 'E' in their last name to sort the results by their employee number reversed
SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC ;


#Employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
SELECT * FROM employees
WHERE (hire_date BETWEEN '1990-1-1' AND '1999-12-31')
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC ;
