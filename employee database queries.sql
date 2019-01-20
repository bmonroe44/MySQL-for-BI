#Using employees DB

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
SELECT * FROM employees WHERE first_name NOT IN ('John', 'Mark','Jacob');