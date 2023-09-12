# Project: US Baby Names

## Data Analytics Workflow

### Project Description

The US authorities have registered the names of all US citizens born since 1880. The record is publicly available. For data protection reasons, only names that have been used at least 5 times are listed in the data record.

**Goal:** Design, implement, and present a visualization using the baby names dataset.

## Project Challenges

### Total number of babies in specific years

- Write a program that calculates the total number of babies for the year 2020 and prints the number to the screen.
- Do the same for 1950 and compare the results.
- What other interesting insights can you find about a year using some of pandas methods?

### Write code to combine datasets for analysis

- Create code that loops over every year in the baby names data folder and combine the datasets into one dataset.
- Define an empty DataFrame with the column names 'names,' 'gender,' 'frequency,' and 'year' as df.
- Loop over each year and apply the `parse_dataset()` function to each year and save it in a variable such as df_temp.
- Within the loop, add a column to df_temp 
- Use the `pd.concat()` function to combine df and df_temp in every iteration until all datasets have been combined into one.
- Save the DataFrame in your data folder for later use.

### Analyzing Names

In order to analyze the trend of one name over time it would be beneficial to have a dataframe of particular names per gender overtime.
- Filter the combined dataset for the name Emily
- Filter that for only females
- Save the DataFrame for later analysis
- Filter and save other names of interest to analyze and investigate the popularity of celebrity names over time, e.g. try out Luke, Leia, Arielle, Tyrion, Barack

### Visualize the Names Dataset

Create a plot of the summed up frequency (total births) per year from 1880 to 2020

### Bonus

Identify naming patterns specific to different generations