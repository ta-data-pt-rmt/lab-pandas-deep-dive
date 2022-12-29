use apple;
select *
From apple.apple_store;

/*How many apps are there in the data source?*/
select count(track_name)
From apple.apple_store;
/*What is the average rating of all apps?*/
select avg(user_rating) 
From apple.apple_store;
/*How many apps have an average rating no less than 4?*/
select count(*) 
From apple.apple_store
Where user_rating>=4;
/*How many genres are there in total for all the apps?*/
Select count(distinct prime_genre)
From apple.apple_store;

/*Which genre is most likely to contain free apps?*/
Select prime_genre, count(prime_genre)
From apple.apple_store where price=0 group by prime_genre;

Select count(*) from apple.apple_store where prime_genre='Medical'and price=0;

/* What are the top 3 genres that have the most number of apps?*/
Select distinct prime_genre,count(track_name)
From apple.apple_store
GROUP BY  prime_genre
ORDER BY count(track_name)  DESC 
LIMIT 3;