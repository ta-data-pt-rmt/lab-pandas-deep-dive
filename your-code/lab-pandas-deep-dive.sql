USE Appstore;

SELECT *
FROM applestore2;

-- How many apps are there in the data source?

SELECT COUNT(DISTINCT track_name)
FROM applestore2;

-- What is the average rating of all apps?

SELECT AVG(user_rating)
FROM applestore2;

-- How many apps have an average rating no less than 4?

SELECT COUNT(*)
FROM applestore2
WHERE user_rating >=4;

-- How many genres are there in total for all the apps?

SELECT COUNT(DISTINCT prime_genre)
FROM applestore2;

-- Which genre is most likely to contain free apps?

SELECT prime_genre, COUNT(*) AS total_free_app
FROM applestore2
WHERE price=0
GROUP BY prime_genre
ORDER BY total_free_app DESC
LIMIT 1;