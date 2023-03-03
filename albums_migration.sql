USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE albums (

                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(50) DEFAULT 'NONE',
                       name VARCHAR(100) NOT NULL,
                       release_date date,
                       sales DECIMAL(4,2),
                       genre VARCHAR(50),
                       PRIMARY KEY (id)
);


SELECT  * FROM albums;

