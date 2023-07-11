SELECT *
FROM applestore.apple_store;

#How many apps are there in the data source?
SELECT COUNT(*) AS total_apps FROM apple_store;

#What is the average rating of all apps?
SELECT AVG(rating_count_tot) AS average_rating FROM apple_store;

#3. How many apps have an average rating no less than 4?
SELECT COUNT(*) AS high_rating_apps
FROM apple_store
WHERE rating_count_tot >= 4;

#4. How many genres are there in total for all the apps?
SELECT COUNT(DISTINCT prime_genre) AS total_genres FROM apple_store;

# 5. Which genre is most likely to contain free apps?
SELECT prime_genre
FROM apple_store
WHERE price = 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

