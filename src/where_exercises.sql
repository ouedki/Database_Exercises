
# Employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Employees whose last name starts with 'E'
SELECT last_name FROM employees
WHERE last_name LIKE 'E%';

# Employees hired in the 90s
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-1-1' AND '1999-12-31';

# Employees born on Christmas
SELECT * FROM employees
WHERE birth_date LIKE '%-12-25';

# Employees with a 'q' in their last name
SELECT * FROM employees
WHERE last_name LIKE '%q%';