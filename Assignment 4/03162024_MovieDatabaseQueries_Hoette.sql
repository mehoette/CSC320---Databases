SELECT * FROM moviedatabase.movies;

SELECT * FROM moviedatabase.movies WHERE studioName = "Disney";

SELECT * FROM moviedatabase.movies WHERE studioName = "Fox" AND year < 1985;

SELECT * FROM moviedatabase.movies WHERE genre = "comedy" OR length > 55;

UPDATE moviedatabase.movies
SET title = "Star Wars 2"
WHERE title = "Star Wars";

SELECT * FROM moviedatabase.movies ORDER BY year DESC;

UPDATE moviedatabase.movies
SET genre = "horror"
WHERE genre = "comedy" AND year < 2005;





