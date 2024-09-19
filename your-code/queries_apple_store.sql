SELECT * FROM apple.apple_store;

/*How many apps are there in the data source?*/
/*Here we can count the number of rows for any column, I`ll use id*/
SELECT COUNT(id)
FROM  apple.apple_store;

/*What is the average rating of all apps?*/
SELECT avg(user_rating)
FROM  apple.apple_store;

/*How many apps have an average rating no less than 4?*/
SELECT count(user_rating)
FROM  apple.apple_store
WHERE user_rating>=4;
 
/*How many genres are there in total for all the apps?*/
 SELECT count(DISTINCT prime_genre)
FROM  apple.apple_store;

/*Which genre is most likely to contain free apps?*/
 SELECT prime_genre, COUNT(*) AS free_app_count
FROM apple.apple_store
WHERE price = '0'
GROUP BY prime_genre
ORDER BY free_app_count DESC;