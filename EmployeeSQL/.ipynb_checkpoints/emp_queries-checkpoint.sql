--List the following details of each employee: employee number, last name,
--first name, sex and salary
--need to join salary table with employee table
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no;

--Query the columns from eomployee table
SELECT * FROM employees;

--List first name, last name and hire date for eomployees who
--where hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';

--List the manager of each department with the following information:
--department number, department name, manager's employee number, last name, first name
--need to join dept_manager to departments then join employees to dept_manager
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name and department number
--Need to join dept_emp to departments then join employees to dept_emp
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN departments AS d
ON de.dept_no = d.dept_no
LEFT JOIN employees AS e
ON de.emp_no = e.emp_no;

--List first name, last name and sex for employees whose First name is
--Hercules and Last name begin with B
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' 
AND e.last_name LIKE 'B%';

--List all employees in the Sales department.  Include thier employee number,
--last name, first name and department name
--Need to join employee with dept_emp then departments to dept_emp
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON 
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales & Development departments.
--Include thier employee number, last name, first name & department name
--Same as above with the addition of the Development department
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON 
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In descending order, list the frequency count of employees last names
--i.e., How many employees share each last name
--want to create a column to show the count of last name groups
SELECT last_name, COUNT(*)
AS "frequency_of_last_names"
FROM employees
GROUP BY last_name
ORDER BY "frequency_of_last_names" DESC;
