USE apple;

# How many apps are there in the data source?

SELECT COUNT(DISTINCT track_name) AS total_unique_apps FROM apple_store;
 
# What is the average rating of all apps?

SELECT ROUND(AVG(user_rating), 2) AS average_user_rating FROM apple_store;

# How many apps have an average rating no less than 4?

SELECT COUNT(*) AS total_apps
FROM (
    SELECT track_name, AVG(user_rating) AS avg_user_rating
    FROM apple_store
    GROUP BY track_name
    HAVING avg_user_rating >= 4
) AS apps_rating4;
 
# How many genres are there in total for all the apps?

SELECT COUNT(DISTINCT prime_genre) AS total_unique_apps FROM apple_store;

# Which genre is most likely to contain free apps?

SELECT prime_genre, 
       COUNT(*) AS count_free_apps,
       COUNT(*) * 100 / SUM(COUNT(*)) OVER () AS percentage_free_apps
FROM apple_store
WHERE price = 0
GROUP BY prime_genre
ORDER BY count_free_apps DESC;