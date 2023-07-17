SELECT * FROM pandas_deep_dive.apple_store;

SELECT COUNT(DISTINCT track_name) AS total_apps
FROM apple_store;

SELECT AVG(user_rating) AS average_rating
FROM apple_store;

SELECT COUNT(*) AS app_count
FROM apple_store
WHERE user_rating >= 4;

SELECT COUNT(DISTINCT prime_genre) AS genre_count
FROM apple_store;

SELECT prime_genre, COUNT(*) AS free_app_count
FROM apple_store
WHERE price = 0
GROUP BY prime_genre
ORDER BY free_app_count DESC
LIMIT 1;
