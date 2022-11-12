/*1. How many apps are there in the data source?.*/
USE apple_lab;

SELECT * 
FROM apple_store;

SELECT COUNT(track_name) FROM apple_store;

/*There are 7.197 apps*/


/*2. What is the average rating of all apps?*/
SELECT AVG (user_rating)
FROM apple_store;

/*Average user rating for all apps is 3,5269*/


/*3. How many apps have an average rating no less than 4?*/
SELECT COUNT(track_name) FROM apple_store
WHERE (user_rating)>4;

/*3.155 apps have an average rating higher than 4*/


/*4. How many genres are there in total for all the apps?*/
SELECT prime_genre FROM apple_store
GROUP BY prime_genre;

SELECT COUNT( DISTINCT prime_genre )
FROM apple_store;

/*23 different genres*/


/*5. Which genre is most likely to contain free apps?*/
SELECT count(track_name), prime_genre FROM apple_store
WHERE (price)=0
GROUP BY prime_genre
ORDER BY count(track_name) DESC;

/*First place to Games and then Entertainment*/