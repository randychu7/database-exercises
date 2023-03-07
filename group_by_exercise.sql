use employees;
    SELECT DISTINCT title from titles;

SELECT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT first_name,last_name FROM employees
                            WHERE last_name LIKE 'E%E'
                            GROUP BY first_name,last_name;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT DISTINCT count(last_name), last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT DISTINCT gender, first_name, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender, first_name;



