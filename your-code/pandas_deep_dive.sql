SELECT * FROM applestore2;

/* 
1. How many apps are there in the data source?
2. What is the average rating of all apps?
3. How many apps have an average rating no less than 4?
4. How many genres are there in total for all the apps?
5. Which genre is most likely to contain free apps? 
*/

SELECT COUNT(DISTINCT(id)) FROM applestore2;

/* 1. Solution: there are 7142 apps */

SELECT AVG(user_rating) as avg_rating
FROM applestore2;

/* 2. Solution: 3.52835 is the average rating of all apps */ 

SELECT COUNT(*)
FROM applestore2
WHERE user_rating >= 4;

/* 3. Solution: 4743 apps have at least a 4 stars rating */

SELECT COUNT(DISTINCT prime_genre)
FROM applestore2;

/* 4. Solution: There are 23 different genres */

SELECT prime_genre, COUNT(track_name) AS free_apps
FROM applestore2
WHERE price = 0
GROUP BY prime_genre
ORDER BY free_apps DESC
LIMIT 1;

/* 5. Solution: Games is the genre with most free apps */
