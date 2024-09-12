USE applestore;

# 1. How many apps are there in the data source?
SELECT id
FROM apple_store;

SELECT COUNT(id) # column name
FROM apple_store; # table name

# 2) What is the average rating of all apps?
SELECT AVG(user_rating)
FROM apple_store;

# 3) How many apps have an average rating no less than 4?
SELECT COUNT(user_rating)
FROM apple_store
WHERE (user_rating >= 4);

# 4) How many genres are there in total for all the apps?
SELECT COUNT(DISTINCT prime_genre)
FROM apple_store;

# 5) Which genre is most likely to contain free apps?
SELECT MAX(prime_genre)
FROM apple_store
WHERE (price <= 0);
