--SCRIPT USED TO CREATE ERD IMAGE

departments
-
dept_no PK VARCHAR
dept_name VARCHAR

employees
-
emp_no PK INT
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

dept_emp
-
emp_no INT FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no

dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT FK >- employees.emp_no

salaries
-
emp_no INT FK >- employees.emp_no
salary BIGINT

titles
-
title_id INT PK
title VARCHAR