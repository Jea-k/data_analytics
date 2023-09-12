# Climate Data Project Readme

## Project Description

### Project Goal
The goal of this project is to design an interactive climate data visualization using SQL, pandas, and Plotly. The project involves working with a large, messy real-world dataset containing daily temperature records from hundreds of weather stations across Europe, with records dating back to the 17th century.

### Identify Data Sources
- The project uses real-world data from the [European Climate Assessment & Dataset (ECAD) project](https://www.ecad.eu/dailydata/predefinedseries.php).

### Retrieve Data
- The climate data is distributed across thousands of .csv files.
- Data from these files is imported into a climate database on a cloud server.

### Data Wrangling, Exploration, and Cleaning
- Thousands of .csv files are combined into one and aggregated.
- SQL queries are used to clean up and preprocess the data.
- Derived tables are created, including yearly temperature averages for all weather stations.
- A subset of the data is imported into a Python dataframe.

### Analyze Data
- Visualizations are used to analyze the data, including temperature bar plots and interactive climate maps created with Plotly.

### Solve with SQL
- SQL queries are used to create derived tables, including yearly temperature averages and temperature categorization (hot, normal, cold).

### Solve with SQLAlchemy, Pandas, and Plotly
- A subset of the climate yearly data is imported into a Python DataFrame.
- Interactive temperature bar plots are created for various locations using Plotly.
- Animated choropleth maps, scattermaps, hexbin maps, and warming stripes are created using Plotly.

## Data Files

### Countries Data
- `country_codes.csv` contains a list of countries with their numeric, two-letter, and three-letter country codes.
- It also includes latitude and longitude coordinates for the geographic center of each country.
- This data is useful for visualizing country-level data on a map.

### Stations Data
- The stations data is used for station information and is part of the downloaded ECA_blend data folder.
- The data is processed in a similar way to the countries data.
- Cleanup of column names is required, and a foreign key constraint for the `cn` column is added to point to the `alpha2` column of the countries table.


## Repository

The project repository contains code, scripts, and data files necessary to work on and complete the project. Please refer to the repository for more details on implementing each part of the project.
