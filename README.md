# sql-challenge

SQL - EMPLOYEE DATABASE: A MYSTERY IN TWO PARTS

**Data Modeling**

Inspected the CSV's and sketched out an ERD (Entity Relationship Diagram) of those CSV files.
 - The code used for the ERD is saved as ERD_Code.sql which can be found within the EmployeeSQL folder
 - The sketch of the ERD is saved as SQL Employee ERD.png which can also be found within the EmployeeSQL folder

The information gathered from the ERD was used to create a table schema for each of the six CSV files
(data types, primary keys, foreign keys and any other constraints have been included into the schema)
- The six CSV files are saved within the Data folder
- The code used for this schema is saved as emp_table_schemata.sql which can be found within the EmployeeSQL folder
- After the table schema was created, the  six CSV files were then imported into the corresponding SQL table

**Data Analysis**

Once I had a complete database to work with, I was able to perform the following analysis:
1. Listed the details of each employee: employee number, last name, first name, sex and salary

2. Listed the first name, last name and hire date for employees who were hired in 1986

3. Listed the manager of each department with the following information: department number, department name, 
  the  manager's employee number, last name and first name

4. Listed the department of each employee with the following information: employee number, last name,
  first name and department name

5. Listed the first name, last name and sex for employees whose first name is "Hercules" and last names
  begin with "B"

6. Listed all employees in the Sales department, including their employee number, last name, first name and department name

7. Listed all employees in the Sales and Development departments which included their employee number, last name,
  first name and department name

8. In descending order, I listed the  frequency count of employee last names (i.e. how many employees
  share each last name

- The code used to complete the above analysis is saved as emp_queries.sql and can be found within the EmployeesSQL folder
