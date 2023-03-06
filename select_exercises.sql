USE codeup_test_db;

SELECT  *  FROM albums
           WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums
                    WHERE albums.name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums
             WHERE name = 'Nevermind';

SELECT name from albums
            WHERE release_date = '1990';

SELECT name from albums
            WHERE sales >= 20;

SELECT name from albums
            where genre = 'Rock';
