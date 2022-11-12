USE `apple`;

select distinct count(track_name)
from apple_store;

select track_name, prime_genre
from apple_store
having avg(user_rating) >= 4;

select count(track_name)
from apple_store
where user_rating >= 4
order by user_rating desc;

select count(distinct prime_genre) as genres
from apple_store;

SELECT prime_genre, COUNT(*) as total
FROM apple_store 
WHERE price='0' 
GROUP BY prime_genre
ORDER BY total DESC;

SELECT * from apple_store;

