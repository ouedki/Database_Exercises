
# Employees with first names 'Irena', 'Vidya', or 'Maya' and also male
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'M';

# Employees whose last name starts with 'E' or ends with 'E'
SELECT last_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

## Employees whose last name starts with 'E' and ends with 'E'
SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Employees hired in the 90s and born on Christmas
SELECT * FROM employees
WHERE (hire_date BETWEEN '1990-1-1' AND '1999-12-31')
AND birth_date LIKE '%-12-25';

# Employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';