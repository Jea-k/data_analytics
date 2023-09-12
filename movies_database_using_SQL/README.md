# MovieLens SQL Project Readme

## Project Description

The board of governors at the Oscars believes that they may have overlooked many great films in the past due to various factors, including the zeitgeist. They have commissioned this project to explore historical movie data and user ratings to rectify this situation. The goal is to use SQL to analyze a dataset of movies and ratings, with a focus on understanding the data structure, exploring movie genres, and identifying popular movies.

## Project Goals

- Import a dataset into a cloud-based database.
- Solve SQL challenges to explore and analyze the movie data.
- Report findings to the Oscars board of governors.

## Define Questions

- Questions include exploring data structure, movie genres, release years, and popularity metrics.

## Identify Data Sources

- Set up a Google Cloud account.
- Retrieve movie data from the MovieLens database.
- Create a PostgreSQL database in the cloud.

## Retrieve Data

- Ingest data into the database using SQL.
- Extract data from the database using SQL.

## Data Wrangling, Exploration, and Cleaning

- Solve one-liner challenges to answer various questions.
- Create table definitions with SQL.

## Analyze Data

- Perform exploratory data analysis using SQL.
- Explore genres, release years, and popularity metrics.


## Solve with SQL

### Explanatory Data Analysis (EDA) Questions:

- Explore the data structure and display the movies table.
- Display movie titles and genres of the first 10 entries sorted alphabetically.
- Determine the total count of movies in the dataset.
- Explore movies with the "Drama" genre and count pure Drama movies.
- Check movies that have Drama as one of the assigned genres.
- Compare Drama movies with other genres.
- Analyze the distribution of movie release years.
- Find movies from the year 2003.
- Retrieve Star Wars movies.

### Further Analysis with Joins:

- Find movies with the lowest IMDb IDs.
- Modify the query to count Drama movies.
- Discover movies with the tag "fun."
- Find the first movie without any tags.
- Identify the most liked genres based on average ratings.
- Find movies watched by the largest group of people.
- Compare your favorite Star Wars movie with dataset ratings.
- Save results in a derived table.

### Bonus:

- Find top genres in 2 different era and top rated movies in each genre
- Use insights to advocate for specific movies.

## Files and Scripts

- `movielens_eda.sql`: SQL queries for initial data analysis.
- `movielens_groupby.sql`: SQL queries for groupby analysis.
- `movielens_joins.sql`: SQL queries using joins for comprehensive analysis.

## Conclusion

This project aims to leverage SQL to explore and analyze movie data, making it easier for the Oscars board of governors to recognize great films that may have been overlooked in the past.

For detailed implementation of each part of the project, refer to the respective SQL script files.

**Note:** The data and SQL scripts used in this project may vary based on the actual dataset and database setup.

Feel free to explore additional questions and insights to enhance the project's value.

Enjoy your SQL movie data analysis journey!
