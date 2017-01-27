USE employees;

#Finding all the employees with the same hire date as employee 101010 using a sub-query
SELECT * FROM employees
WHERE hire_date IN  (
  SELECT hire_date FROM employees
  WHERE emp_no = 101010);

#Finding all the titles held by all employees with the first name Aamod
SELECT title FROM titles
WHERE emp_no IN  (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod');

#Finding all the department managers that are female
SELECT emp_no FROM dept_manager dm
WHERE dm.emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE gender = 'F');

SELECT  *  FROM departments
WHERE dept_name IN  (
  SELECT dept_no FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE gender = 'F'
  )
);