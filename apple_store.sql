SELECT * FROM apple.apple_store;
SELECT COUNT(*) FROM apple.apple_store;
/* there are 7197 apps in the dataset*/
SELECT AVG(user_rating) FROM apple.apple_store;
/* the average user rating is 3.53 (rounded)*/
select count(user_rating)
from apple.apple_store
where user_rating > 4;
/*3155 apps are rated with a 4 or higher*/

select count(distinct prime_genre)
from apple.apple_store;
/*there are 23 different genres*/

select prime_genre, price 
from apple.apple_store 
where price = 0
group by prime_genre
ORDER BY COUNT(prime_genre) DESC;
/*games is the genre that has the most apps for free*/

