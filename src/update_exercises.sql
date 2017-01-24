USE codeup_test_db;

SELECT name
FROM albums;

SELECT name
FROM albums
WHERE release_date<1980;

SELECT name
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = 1800
WHERE release_date BETWEEN 1800 AND 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT name, sales
FROM albums
WHERE sales >20000000;

SELECT name, release_date
FROM albums
WHERE release_date = 1800;

SELECT artist
FROM albums
WHERE artist = 'Peter Jackson';

