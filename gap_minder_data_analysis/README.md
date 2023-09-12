# Gapminder Data Analysis Project Readme

## Project Description

This project is inspired by the work of Hans Rosling, a Swedish professor and data visualization expert. The goal is to create an animated scatterplot, similar to the one in Hans Rosling's famous video, "200 Countries, 200 Years, 4 Minutes - The Joy of Stats." The project involves data retrieval, wrangling, exploration, and cleaning, as well as data analysis and visualization using Python and pandas.

## Data Sources

- Gapminder data from the Gapminder API in CSV format.

## Data Analytics Workflow

Follow these steps in your data analytics workflow:

1. **Define Questions:** Develop your own questions or use exemplary questions provided.
3. **Retrieve Data:** Read in the Gapminder data into a DataFrame.
4. **Data Wrangling, Exploration, and Cleaning:** Solve one-liner challenges, clean data, and account for missing data.
5. **Analyze Data:** Analyze the data with descriptive statistics.
6. **Present Data to Stakeholders:** Create explanatory plots of the data, create a Gapminder plot for a single year, and create an animated graphic by combining many plots into one GIF file.

## Solve with One-Liners

Using the `large_countries_2015.csv` dataset, solve the following tasks with pandas one-liners. Here are examples of some tasks:
 1. Read in data
 2. Check dataframe for null values
 3. Check datatypes
 4. Check how many countries from each continent are in the dataset
 5. Display a dataframe that only has countries located in Asia
 6. Display a dataframe that only has countries with a population over 250,000,000
 7. Display a dataframe that only has countries with a population between 100,000 and 250,000,000
 8. Display a dataframe that only has countries located in Asia with a fertility rate of less than 1.8


## Clean Gapminder Data

1. **Rename Columns:** Rename columns in the Gapminder datasets as needed to ensure clarity and consistency.

2. **Handling Missing Data:** Check for missing data in the datasets and decide on an appropriate strategy. You can choose to drop missing values or fill them based on your analysis needs.

3. **Filtering for Relevant Data:** Filter the datasets to include only the data relevant to your analysis. For example, you may want to focus on data starting from the year 1950.

4. **Saving Datasets:** Save the cleaned datasets as CSV files for future use. Consider naming them appropriately, such as `population_cleaned.csv`, `life_expectancy_cleaned.csv`, and `fertility_rate_cleaned.csv`.

## Pandas Descriptive Statistics Challenges

Use the cleaned Gapminder dataset to solve various descriptive statistics challenges. You can perform calculations like mean, median, standard deviation, minimum, maximum, quantiles, and more. 

## Combining DataFrames

Merge the cleaned Gapminder datasets into a single dataframe using. You can create a comprehensive dataset that combines population, life expectancy, and fertility rate information.

## Make a High-Quality Plot

Create a high-quality scatterplot using matplotlib. Customize the plot to make it visually appealing and informative. 

## Make an Animated Plot

Create an animated scatterplot to show the correlation between life expectancy and fertility rate for each year from 1960 to 2015. Save each scatterplot as an individual image, and then generate a GIF file from these images. You can use this animation to visualize changes over time.

## Tips

- Experiment with plot size, axis ranges, point size weighting, color schemes, and other visual enhancements to effectively convey your data story.

