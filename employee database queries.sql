#Using employees dtabase

# Select all employees with the first name 'Elvis'
SELECT * FROM employees WHERE first_name = 'Elvis';

# Retrieve list of female employees with the first name 'Kellie'
SELECT * FROM employees WHERE first_name = 'Kellie' AND gender = 'F';

# Retrieve list of employees with first name 'Kellie' or 'Aruna'
SELECT * FROM employees WHERE first_name = 'Kellie' OR first_name = 'Aruna';