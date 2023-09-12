# Capital Bikeshare Data Analysis Project Readme

## Project Description

Capital Bikeshare would like to find out how many bicycles need to be ready at a given time in the Washington, D.C. market.

## Related Files

- dc_bikes.csv 

## Project Goals

- Explore DC bike data to understand rental demand over time.
- Fit a regression line to the data for predictive analysis.

## Retrieve Data

- Read the bike data into a DataFrame.

## Data Wrangling, Exploration, and Cleaning

- Extract features from datetime variables.
- Bin data into multiple categories for analysis.
- Plot traffic density over time.
- Save the cleaned dataset in a CSV file.
- Calculate and plot a rolling average.

## Analyze Data

- Create a pivot table of traffic density over weekdays and/or hours.
- Prepare a naive forecast of bicycle counts.
- Calculate feature correlations.
- Calculate confidence intervals for feature means.
- Use hypothesis testing to analyze temperature features.
- Determine clusters in weather data.


## Data Analytics Workflow

### Dataset Description

- Describe the dataset, including columns such as seasons, holidays, weather, temperature, humidity, windspeed, and bike counts.

### Applying Datetime Functions

- Extract features like hour, month, etc., from the datetime column.
- Plot sections of the count data over time.
- Create a part_of_day column.
- Save the new dataset.

### Pivot Tables

- Create pivot tables of traffic density.
- Identify confounding factors.

### Error Metrics on a Naive Forecast

- Calculate the root mean square error (RMSE) for a naive forecast.
- Evaluate the accuracy of the naive prediction.

### Linear Regression

- Perform linear regression analysis.
- Calculate R^2 values for different feature combinations.
- Observe changes in R^2 when adding features.
- Explore additional features for model improvement.

### Bikes Distribution

- Plot the distribution of bike counts during a day and for the entire year.

### Confidence Intervals

- Calculate confidence intervals for the mean of the windspeed feature using bootstrapping.

### A/B Testing

- Perform hypothesis testing to compare temperature columns (temp vs. atemp).

### Practicing K-means Clustering

- Use the elbow method to determine the number of clusters for weather data.
- Compare the suggested number of clusters with existing weather groups.


## Repository

- The project repository contains code, scripts, and data files necessary for analysis. Refer to the repository for detailed implementation.
