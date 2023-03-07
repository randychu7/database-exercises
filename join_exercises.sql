USE employees;
show tables;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM dept_emp;
SELECT * FROM departments;

-- Query 1
USE employees;
SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name), salaries.salary
FROM salaries
         JOIN dept_manager ON dept_manager.emp_no = salaries.emp_no AND dept_manager.to_date = '9999-01-01'
         JOIN employees ON employees.emp_no = dept_manager.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
         WHERE salaries.to_date = '9999-01-01'
        ORDER BY first_name desc;

#
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ' , employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on employees.emp_no = dept_emp.emp_no;


SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees on employees.emp_no = dept_manager.emp_no
WHERE employees.gender = 'F' AND dept_manager.to_date = '9999-01-01';

# SELECT titles.title, count(*) AS 'Total'
# FROM titles
# JOIN dept_emp on titles.emp_no = dept_emp.emp_no
# JOIN employees on employees.emp_no = dept_emp.emp_no;



SELECT titles.title, COUNT(*) AS Total
FROM titles
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
         JOIN employees e on dept_emp.emp_no = e.emp_no
GROUP BY titles.title
ORDER BY Total DESC;


SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, salaries.salary AS 'Salary'
FROM departments
JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no
JOIN salaries on employees.emp_no = salaries.emp_no
JOIN dept_manager on employees.emp_no = dept_manager.emp_no
WHERE salaries.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01'
GROUP BY departments.dept_name, Department_Manager, salaries.salary
ORDER BY `Department Name` asc;


#
# SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name, s.salary
# FROM salaries AS s
#          JOIN dept_manager AS dm ON dm.emp_no = s.emp_no
#          JOIN employees AS e ON e.emp_no = dm.emp_no
#          JOIN departments AS d ON d.dept_no = dm.dept_no
# WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
# GROUP BY d.dept_name, manager_name, s.salary;
