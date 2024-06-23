USE apple;

SELECT *
FROM apple_store;

############################ Question 1 ###################################

SELECT COUNT(*) AS total_apps
FROM apple_store;


############################ Question 2 ###################################

SELECT AVG(user_rating) AS average_rating
FROM apple_store;

############################ Question 3 ###################################

SELECT COUNT(*) AS apps_with_high_rating
FROM apple_store
WHERE user_rating >= 4;


############################ Question 4 ###################################

SELECT COUNT(DISTINCT prime_genre) AS total_genres
FROM apple_store;


############################ Question 5 ###################################

SELECT prime_genre, COUNT(*) AS num_apps
FROM apple_store
GROUP BY prime_genre
ORDER BY num_apps DESC
LIMIT 3;


############################ Question 6 ###################################

SELECT prime_genre, COUNT(*) AS free_app_count
FROM apple_store
WHERE price = 0
GROUP BY prime_genre
ORDER BY free_app_count DESC
LIMIT 1;

###########################################################################

############################ Question 7 ###################################

SELECT prime_genre, COUNT(*) AS paid_app_count
FROM apple_store
WHERE price > 0
GROUP BY prime_genre
ORDER BY paid_app_count DESC
LIMIT 1;

###########################################################################