-- 1.
-- Create a query which returns the yearly_mean_temperature table with an average_temp_all_time column.
-- TIP: The column can be created using a window function that partitions over the station ids.

SELECT  yearly_temp,
	staid,
	avg(yearly_temp) OVER(partition BY staid) AS avg_temp_all_time
FROM yearly_mean_temperature ymt ;

-- 2.
-- What are the rankings of the yearly average temperatures for each of the stations?
-- Using yearly_mean_temperature create a query to add a ranking per year partitioned by the station
--  and ordered by the avg_temp
-- TIP: The column can be created using a window function that partitions over the station ids
-- and ranks based on the temperature.

SELECT *
FROM (
	SELECT yearly_temp,
	staid,
	avg(yearly_temp) OVER(partition BY staid) AS avg_temp_all_time
	rank() OVER(PARTITION BY staid
			ORDER BY yearly_temp  DESC) AS overall_rank 
	FROM yearly_mean_temperature ymt 
) AS tmp 

-- 3.
--For every mean measurement we want to know what is the difference in the measured temperature compared to the previous measurement. 
--Using mean_temperature and stations create a query which results in a table with staid, date, temp (tg/10), staname, cn and a column with the day over day temperature difference for one station.
--Requires: window function, JOIN, and WHERE

  SELECT staid, staname, cn, date, temp, temp_previous_day, (temp - temp_previous_day) AS temp_diff
    FROM(
        SELECT
            staid,
            date,
            tg::float/10 AS temp,
            avg(tg) over(rows between 1 preceding and 1 preceding) /10 AS temp_previous_day
        FROM mean_temperature) AS subquery
    INNER JOIN stations
    USING(staid);
   
-- 4. 
-- Investigate global warming patterns by creating a query that will return staid, year, 
-- avg_temp as yearly_avg, staname, cn, the all time average per station, 
-- and the average of each station up until the current row’s year.
-- Then you can compare the average over time and see if it increases, 
-- stays the same or decreases. It can also then be compared to the all time average 
-- and each year’s average temperature.


SELECT staid, staname, cn, year, yearly_temp AS yearly_avg, st_avg, yearly_temp - st_avg AS avg_diff
    FROM(
        SELECT
            staid,
            year,
            yearly_temp,
            AVG(yearly_temp) OVER(PARTITION BY staid) AS st_avg
        FROM yearly_mean_temperature) AS subquery
    INNER JOIN stations
    USING(staid)
    ;

   
