SELECT * FROM apple_store;

SELECT COUNT(*) FROM apple_store;

SELECT AVG(user_rating) FROM apple_store;

SELECT COUNT(*)
FROM apple_store
WHERE user_rating > 4; 

SELECT COUNT(DISTINCT prime_genre)
FROM apple_store;

SELECT COUNT(*), prime_genre
FROM apple_store
WHERE price = 0
GROUP BY prime_genre;