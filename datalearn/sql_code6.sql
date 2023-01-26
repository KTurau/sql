SELECT
	*
FROM
	video_game_sales
WHERE
	Platform = 'NULL'; -- syntax error


--Output rows that do not have value (NULL) in the Platform column
SELECT
	*
FROM
	video_game_sales
WHERE
	Platform IS NULL;


--Output rows except those with no value (NULL) in Platform column
SELECT
	*
FROM
	video_game_sales
WHERE
	Platform IS NOT NULL; 


--Rows from the avocado_prices table with region = 'Albania'
SELECT
	*
FROM
	avocado_prices
WHERE
	region = 'Albany';


--Output max, min, avg, sum, count value of Total_Volume from the avocado_prices table for the region = 'Albania'
SELECT
	MAX("total_volume") AS max_volume,
  MIN("total_volume") AS min_volume,
  AVG("total_volume") AS average_volume,
  SUM("total_volume") AS sum_volume,
  COUNT("total_volume") AS count_volume,
  SUM("total_volume") / COUNT("total_volume") AS average2
FROM
	avocado_prices
WHERE
	region = 'Albany';


SELECT
	region
FROM
	avocado_prices;


SELECT
	DISTINCT region
FROM
	avocado_prices;


--Number of values of the region column from the avocado_prices table (including duplicates)
SELECT
	COUNT(region)
FROM
	avocado_prices;


--Number of unique values of the region column from the avocado_prices table (no duplicates)
SELECT
	COUNT(DISTINCT region)
FROM
	avocado_prices;


--Output platforms from the video_game_sales table that have no platform value (we will get several NULL values)
SELECT
	platform
FROM
	video_game_sales
WHERE
	platform IS NULL;


--!Aggregate functions do not take null values into account! 
--Display the number of platforms from the video_game_sales table (NULL values are not taken into account)
SELECT
	COUNT(platform)
FROM
	video_game_sales;


--Display the number of rows from the video_game_sales table (NULL values are taken into account)
SELECT
	COUNT(*)
FROM
	video_game_sales;


--Number of unique platform values from the video_game_sales table (NULL values are not taken into account):
SELECT
	COUNT(DISTINCT platform)
FROM
	video_game_sales;


--Get all unique platform values from the video_game_sales table
SELECT
	DISTINCT platform
FROM
	video_game_sales;




















