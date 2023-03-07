use employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT CONCAT(last_name,' ',first_name)from employees
WHERE last_name LIKE 'E%';
SELECT last_name from employees WHERE last_name LIKE '%q%';
-- ORDER BY emp_no asc;

SELECT * from employees WHERE birth_date LIKE '%12-25';

SELECT * from employees WHERE birth_date LIKE '%12-25' AND hire_date BETWEEN '1990-01-01' AND '2000-01-01'
ORDER BY hire_date desc;

SELECT first_name, last_name, hire_date, birth_date,
       DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';


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

# SELECT first_name, avg(emp_no) FROM employees GROUP BY first_name;
SELECT gender, birth_date, COUNT(*) FROM employees group by gender, birth_date ORDER BY birth_date;
