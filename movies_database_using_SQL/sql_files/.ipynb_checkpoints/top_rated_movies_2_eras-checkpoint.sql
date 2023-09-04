-- What are the top-rated movies in each genre? Find top genre in 2 different eras

-- From 1995 - 2005
create materialized view top_movie_genre_1995_2005 as (
	select movies.title as movie_title,
		max(ratings.rating)  as highest_ratings, 
		movies.genre as genre
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	where movies.year between 1995 and 2005
	group by movies.genre , movies.title 
	order by highest_ratings desc 	
);

-- From 2006 - 2018
create materialized view top_movie_genre_2006_2018 as (
	select movies.title as movie_title,
		max(ratings.rating)  as highest_ratings, 
		movies.genre as genre
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	where movies.year between 2006 and 2018
	group by movies.genre , movies.title 
	order by highest_ratings desc 
);

-- Find top genre in each era

-- 1995-2005 -- result: drama

select genre, count(*) as genre_count
from top_movie_genre_1995_2005
group by genre
order by genre_count desc 
limit 1;

-- 2006-2018 -- comedy

select genre, count(*) as genre_count
from top_movie_genre_2006_2018
group by genre
order by genre_count desc 
limit 1;

-- Batman movies released in different years   
select movies.title as movie_title,
		year as release_year,
		avg(ratings.rating)  as average_rating, 
		count(*) as movie_count
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	where movies.title like '%Batman%' 
	group by movie_title, release_year
	order by average_rating desc;

-- marvel vs dc -- joining 3 tables
select movies.title as movie_title,
		year as release_year,
		avg(ratings.rating)  as average_rating, 
		count(*) as movie_count,
		tags.tag as movie_tag
	from movies
	join ratings 
	on movies.movieid  = ratings.movieid 
	join tags 
	on movies.movieid  = tags.movieid 
	where tags.tag in ('Marvel', 'DC', 'MCU', 'Batman', 'superman')
	group by movie_title, release_year, movie_tag
	order by average_rating desc;



