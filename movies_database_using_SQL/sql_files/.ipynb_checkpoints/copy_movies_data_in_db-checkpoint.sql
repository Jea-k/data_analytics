/*creating table for movies.csv */
drop table if exists movies cascade;
create table movies (
    movieid int primary key,
    title varchar(255),
    genre varchar(255),
    year int
);
\copy movies from '../data/movies.csv' DELIMITER ',' CSV HEADER;

-- create a genre table
drop table if exists genre;
create table genre as (
    select
    	movieid,
    	regexp_split_to_table(genre, '\|') as genre
    from movies
);
alter table genre
add constraint fk_genre
foreign key (movieid) references movies(movieid);


/*creating table for ratings.csv */
drop table if exists ratings;
create table ratings (
    userid int,
    movieid int references movies(movieid),
    rating numeric,
    r_timestamp int
);
\copy ratings from '../data/ratings.csv' delimiter ',' csv header;
alter table ratings add COLUMN id serial primary key;

/*creating table for links.csv */
drop table if exists links;
create table links (
    movieid int references movies(movieid),
    imdbId int,
    tmdbId int
);
\copy links from '../data/links.csv' DELIMITER ',' CSV HEADER;

/*creating table for tags.csv */
drop table if exists tags;
create table tags (
    userid int not null,
    movieid int references movies(movieid),
    tag varchar(255),
    timestamp int
);
\copy tags from '../data/tags.csv' DELIMITER ',' CSV HEADER;