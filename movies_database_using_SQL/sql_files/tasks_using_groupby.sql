-- PROJECT CHALLENGES

-- 1. Display the total row count of the ratings table.
select count(*)
from ratings r ; 

-- 2.Display the total count of different genres combinations in the movies table.
select count(*) 
from ratings r 

-- 3. Display unique tags for movie with id equal 60756. Use tags table.
select distinct tag
from tags t 
where movieid = '60756';

-- 4. Display the count of movies in the years 1990-2000 using the movies table. 
-- Display year and movie_count.

select year, count(*) as movie_count
from movies m 
where year between 1990 and 2000
group by year
order by year;

-- 5. Display the year where most of the movies in the database are from.
select year, count(*) as movie_count
from movies m 
group by year
order by movie_count desc
limit 1;


-- 6. Display 10 movies with the most ratings. Use ratings table. 
-- Display movieid, count_movie_ratings.
select movieid, count(*) as count_movie_ratings
from ratings
group by movieid
order by count_movie_ratings desc 
limit 10;

-- 7. Display the top 10 highest rated movies by average that have at least 50 ratings.
--  Display the movieid, average rating and rating count. Use the ratings table.
select movieid, avg (rating) as average_rating, count(rating) as rating_count
from ratings
group by movieid 
having count(rating) >= 50
order by average_rating desc 
limit 10;

-- 8. Create a view that is a table of only movies that contain drama as one of it’s genres.
--  Display the first 10 movies in the view.
create view drama_movies as
select *
from movies m 
where genre like 'Drama%';

select *
from drama_movies
limit 10;


