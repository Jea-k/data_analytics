-- SQL JOINS PROJECT CHALLENEGS


--1. Using a JOIN display 5 movie titles with the lowest imdb ids

select movies.title as movie_title, links.imdbid  as imdb_ids
from movies
join links 
on movies.movieid  = links.movieid 
order by links.imdbid asc 
limit 5;

-- 2. As we have created the genres table before, we want to modify the query asking about the count of drama movies.
-- Display the count of drama movies
select count(*)
from genre
where genre like 'Drama';

-- 3. Find out all the movies that are matching a defined tag (e.g. ‘fun’).
-- Using a JOIN display all of the movie titles that have the tag fun
select movies.title as movie_title, tags.tag  as movie_tags
from movies
join tags  
on movies.movieid  = tags.movieid 
where tags.tag like '%fun%';

--4. Using a JOIN find out which movie title is the first without a tag
select movies.title as movie_title, tags.tag  as movie_tags
from movies
left join tags  -- to ensures all movies are included, even if they don't have corresponding tags
on movies.movieid  = tags.movieid 
where tags.tag is null 
limit 1;

-- 5. Which genres are the most liked ones? Calculate average rating for all the genres 
--and show the 3 highest rated ones. (Tip: Join the genres and the rating table.)
-- Using a JOIN display the top 3 genres and their average rating
select genre.genre as movie_genres, avg(ratings.rating) as average_ratings
from genre
join ratings
on genre.movieid  = ratings.movieid
group by genre.genre
order by average_ratings desc 
limit 3;

--6. Which movies where watched by the biggest group of people?
-- Using a JOIN display the top 10 movie titles by the number of ratings
select movies.title as movie_title, count(ratings.rating)  as ratings_count
from movies
join ratings 
on movies.movieid  = ratings.movieid 
group by movies.title
order by ratings_count desc 
limit 10;

--7. Using a JOIN display all of the Star Wars movies in order of average rating 
--where the film was rated by at least 40 users
select movies.title as movie_title, avg(ratings.rating) as average_ratings
from movies
join ratings 
on movies.movieid  = ratings.movieid 
where movies.title like '%Star Wars%' 
group by movies.title
having count(ratings.rating) >=40
order by average_ratings desc 
;

--Save the results in the derived table.
--Create a derived table from one or more of the above queries
create table starwar_movies as (
	select movies.title as movie_title, avg(ratings.rating) as average_ratings
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	where movies.title like '%Star Wars%' 
	group by movies.title
	having count(ratings.rating) >=40
	order by average_ratings desc 
);

-- as a materialized view
create materialized view starwar_mat_view as (
	select movies.title as movie_title, avg(ratings.rating) as average_ratings
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	where movies.title like '%Star Wars%' 
	group by movies.title
	having count(ratings.rating) >=40
	order by average_ratings desc 
);

-- Difference between View and derived Table 
-- View contains no data of its own but it is like a ‘window’ through which data from tables can be viewed or changed.  
-- It is a query of one or more tables that provides another way of presenting the information. 
-- Table is used to store data in relational databases in the form of rows and columns
-- View depends upon table, Table is independent
-- View doesn't utiize db space, Table does
-- Cannot add/update data in View, can do it in Tables
-- View can be recreated, Table can only be created / dropped
-- Can aggregate data in Views, cannot do it in Tables





