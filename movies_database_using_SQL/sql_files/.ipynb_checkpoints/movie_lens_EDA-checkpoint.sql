-- CRUD PROJECT CHALLENGE

--1. Display the (whole) movies table.
select * 
from movies;

--2.Display only title and genres of the first 10 entries from the movies table that is sorted alphabetically (starting from A) by the movie titles.
select title, genre 
from movies
where title like 'A%'
order by title 
limit 10;

--3. How many movies do we have the data for? Display the total row count
select count(distinct title) 
from movies m ;

--4. Display first 10 pure Drama movies. Only Drama is in the genre column.
--Display the count of pure Drama movies.
select *
from movies m 
where genre like 'Drama'
limit 10;

select count(*) 
from movies m 
where genre like 'Drama';

--Display the count of drama movies that can also contain other genres.
select count(*) 
from movies m 
where genre like 'Drama%';

--Is this number different from the one in the previous question? Why do you think so?
-- The count from only drama genres is 1052
-- The count from drama and other genres is 2224
-- There is a difference in count because one shows genre with only drama 
-- and other shows combination of drama and other genres

--6. Display the count of movies don’t have drama (in any combination) as assigned genre
select count(*)
from movies m 
where not genre like  'Drama%'; -- count is 7505

--7. Display the count of movies that were released in 2003.
select count(*)
from movies m 
where year =  '2003'; -- count is 279

select *
from movies m 
where year = '2003' and title like 'Lord%'; --fav movie Lord of the rings

--8. Find all movies with a year lower 1910.
select *
from movies m 
where year <= '1910';

--9. Retrieve all Star Wars movies from the movie table.
select *
from movies m 
where title like 'Star Wars%';

-- Lord of the rings
select *
from movies m 
where title like 'Lord of the Rings%'; 

-- Scary movie
select *
from movies m 
where title like 'Scary%'; 


