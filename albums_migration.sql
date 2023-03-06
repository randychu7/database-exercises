USE codeup_test_db;
USE employees;
# DROP TABLE IF EXISTS albums;
# CREATE TABLE albums (
#
#
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        artist VARCHAR(50) DEFAULT 'NONE',
#                        name VARCHAR(100) NOT NULL,
#                        release_date INT UNSIGNED,
#                        sales FLOAT,
#                        genre VARCHAR(50),
#                        PRIMARY KEY (id)
# );

select emp_no, last_name, first_name  from employees
WHERE last_name LIKE 'a%' AND last_name LIKE '%z';

SELECT DISTINCT first_name, last_name FROM employees WHERE first_name LIKE '%z%';
# SELECT  * FROM albums WHERE artist = 'Pink Floyd';

# SELECT * from employees WHERE emp_no BETWEEN 10000 AND 20000 OR emp_no BETWEEN 30000 AND 40000 ;

SELECT *
FROM employees
ORDER BY hire_date ASC;
