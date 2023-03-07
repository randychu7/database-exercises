use employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees ORDER BY last_name desc LIMIT 10;

SELECT DISTINCT salary from salaries ORDER BY salary desc LIMIT 5 offset 25;

