USE employees;

#Joining each department along with the name of the current manager
SELECT dept_name AS  'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

#Finding the name of all departments currently managed by women
SELECT dept_name AS  'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender= 'F'
ORDER BY dept_name;

#Finding the current titles of employees currently working in the Customer Service department
SELECT title AS Title, count(e.emp_no) AS Count
FROM employees as e
  JOIN titles as t
    ON e.emp_no = t.emp_no
  JOIN dept_emp as de
  ON e.emp_no = de.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY Title;

#Finding the current salary of all current managers
SELECT dept_name AS  'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries as s
    ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date  = '9999-01-01'
ORDER BY dept_name;

#Finding current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', dept_name AS  'Department Name', CONCAT(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees as e
  JOIN dept_emp as de
    ON e.emp_no = de.emp_no
  JOIN departments as d
    ON de.dept_no = d.dept_no
  JOIN dept_manager as dm
    ON dm.dept_no = d.dept_no
  JOIN employees as m
    ON dm.emp_no = m.emp_no

WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY dept_name;



