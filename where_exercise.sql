use employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


    SELECT last_name from employees
                     WHERE last_name LIKE 'E%';
    SELECT last_name from employees WHERE last_name LIKE '%q%';

SELECT first_name, gender from employees
WHERE gender = 'Male'
   OR first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT last_name from employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT last_name from employees
WHERE last_name LIKE 'E%E';

SELECT * from employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

