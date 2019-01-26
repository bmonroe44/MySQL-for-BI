#Use employees DB
USE employees;

# Select all employees with the first name 'Elvis'
SELECT * FROM employees WHERE first_name = 'Elvis';

# Retrieve list of female employees with the first name 'Kellie'
SELECT * FROM employees WHERE first_name = 'Kellie' AND gender = 'F';

# Retrieve list of employees with first name 'Kellie' or 'Aruna'
SELECT * FROM employees WHERE first_name = 'Kellie' OR first_name = 'Aruna';

# Retrieve list of all female employees whose first name is either 'Kellie' or 'Aruna'
SELECT * FROM employees WHERE gender = 'F' AND (first_name = 'Kellie' OR first_name = 'Aruna');

# Select all individuals from employees table whose first name is either 'Denis' or 'Elvis'
SELECT * FROM employees WHERE first_name IN ('Denis', 'Elvis');

# Extract all employee records from employees table aside from 'John', 'Mark' and 'Jacob'
SELECT * FROM employees WHERE first_name NOT IN ('John','Mark','Jacob');

# Select all individuals whose first name starts with 'Mark'
SELECT * FROM employees WHERE first_name LIKE ('Mark%');

# Select all employees hired in the year 2000
SELECT * FROM employees WHERE hire_date LIKE ('%2000%');

# Select all employees whose employee number is 5 characters and begins with '1000'
SELECT * FROM employees WHERE emp_no LIKE ('1000_');

# Select all employees whose first name contains 'Jack'
SELECT * FROM employees WHERE first_name LIKE ('%jack%');

# Select all employees whose first name does not contain 'jack'
SELECT * FROM employees WHERE first_name NOT LIKE ('%jack%');

# Select all salries btween 66k and 70k per year
SELECT * FROM salaries WHERE salary BETWEEN 66000 AND 70000;

# Select all individuals whose employee  not between 10004 and 10012
SELECT * FROM salaries WHERE emp_no NOT BETWEEN 10004 AND 10012;

# Select names of all departments between department numbers d003 and d006
SELECT dept_name FROM departments WHERE dept_no BETWEEN 'd003' AND 'd006';

# Select names of all departments whose department number value is not null
SELECT dept_name FROM departments WHERE dept_no IS NOT NULL;

# Select all female employees in the the year 2000 or after
SELECT * FROM employees WHERE gender = 'F' AND hire_date >= '2000-01-01';

# Select employees with salaries greater than 150k annually
SELECT * FROM salaries WHERE salary > 150000;

# Obtain list of all the different hire dates
SELECT DISTINCT hire_date FROM employees;

# Count the number of annual contracts higher than or equal to $100,00
SELECT COUNT(salary) FROM salaries WHERE salary >= 100000;

# Determine how many managers are in the database
SELECT COUNT(*) FROM dept_manager;

# Select all data from employees table ordered by hire date in descending order
SELECT * FROM employees ORDER BY hire_date DESC;

SELECT salary, COUNT(emp_no) AS emps_with_same_salary FROM salaries WHERE salary > 80000 
	GROUP BY salary ORDER BY salary;
    
# Select all employees with an average salary higher than $120,000 annually
SELECT emp_no, AVG(salary) FROM salaries GROUP BY emp_no HAVING AVG(salary) > 120000 ORDER BY emp_no;

# Select employee numbers of all individuals who have signed more than one contract after 2000-01-01
SELECT emp_no FROM dept_emp WHERE from_date > '2000-01-01' GROUP BY emp_no
	HAVING COUNT(from_date) > 1 ORDER BY emp_no;
    
# Select first 100 rows from dept_emp table
SELECT * FROM dept_emp LIMIT 100;

# Insert new employee to employees table
INSERT INTO employees VALUES (999903, '1977-09-14', 'Johnathan', 'Creek', 'M', '1999-01-01');

# View titles table
SELECT * FROM titles LIMIT 10;
# Insert added employee ibfo into titles table
INSERT INTO titles (emp_no, title, from_date)  VALUES (999903, 'Senior Engineer', '1997-10-01');
# Verify new data was entered
SELECT * FROM titles ORDER BY emp_no DESC LIMIT 10;

# View dept_emp table
SELECT * FROM dept_emp;
# Insert information for employee 999903 into dept_emp table
INSERT INTO dept_emp VALUES (999903, 'd005', '1997-10-01', '9999-01-01');
# Verify
SELECT * FROM dept_emp ORDER BY emp_no DESC LIMIT 10;

# Create and add 'Business Analysis' to the departments table
INSERT INTO departments (dept_no, dept_name) VALUES ('d010', 'Business Analysis');
# Verify
SELECT * FROM departments;

# Change 'Business Analysis' to 'Data Analysis' in the departments table
UPDATE departments SET dept_name = 'Data Analysis' WHERE dept_no = 'd010';
# Verify 
SELECT * FROM departments WHERE dept_no='d010';

# Remove record for department 10 from departments table
DELETE FROM departments WHERE dept_no='d010'; 
# Verify
SELECT * FROM departments WHERE dept_no='d010';

# Count the number of departments in employees database
SELECT COUNT(DISTINCT dept_no) AS mumber_of_departments FROM dept_emp;

# Sum of total salary after January 1st, 1997
SELECT SUM(salary) FROM salaries WHERE from_date > '1997-01-01';

# Find lowest and highest employee numbers in database
SELECT MIN(emp_no) FROM employees;
SELECT MAX(emp_no) FROM employees;

# Average of total salary after January 1st, 1997
SELECT AVG(salary) FROM salaries WHERE from_date > '1997-01-01';

# Round average salaries after January 1st, 1997 to two decimal palces
SELECT ROUND(AVG(salary), 2) FROM salaries WHERE from_date > '1997-01-01';

# Duplicate the departments table
CREATE TABLE departments_dup (dept_no CHAR(4) NOT NULL, dept_name VARCHAR(40) NOT NULL);
INSERT INTO departments_dup (dept_no, dept_name) SELECT * FROM departments;
SELECT * FROM departments_dup ORDER BY dept_no;

# Alter departments_dup table to complete COALESCE exercise
ALTER TABLE departments_dup CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;
INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');
SELECT * FROM departments_dup ORDER BY dept_no ASC;
ALTER TABLE employees.departments_dup ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

