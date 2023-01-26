--Output aggregated data for all regions
SELECT
	region,
	MAX("total_volume") AS max_volume,
	MIN("total_volume") AS min_volume,
	AVG("total_volume") AS average_volume,
	SUM("total_volume") AS sum_volume,
	COUNT("total_volume") AS count_volume
FROM
	avocado_prices
GROUP BY
	region
ORDER BY
	region;


--Output aggregated data for Albany and Atlanta
SELECT
	region,
	MAX("total_volume") AS max_volume,
	MIN("total_volume") AS min_volume,
	AVG("total_volume") AS average_volume,
	SUM("total_volume") AS sum_volume,
	COUNT("total_volume") AS count_volume
FROM
	avocado_prices
WHERE
	region = 'Albany' OR region = 'Atlanta'
GROUP BY
	region
ORDER BY
	region;


--Output aggregated data for several regions
SELECT
	region,
	MAX("total_volume") AS max_volume,
	MIN("total_volume") AS min_volume,
	AVG("total_volume") AS average_volume,
	SUM("total_volume") AS sum_volume,
	COUNT("total_volume") AS count_volume
FROM
	avocado_prices
WHERE
	region = 'Albany' OR
	region = 'BaltimoreWashington' OR
	region = 'California' OR
	region = 'DallasFtWorth' OR
	region = 'HarrisburgScranton'
GROUP BY
	region
ORDER BY
	region;


--Output aggregated data for several regions using IN operator
SELECT
	region,
	MAX("total_volume") AS max_volume,
	MIN("total_volume") AS min_volume,
	AVG("total_volume") AS average_volume,
	SUM("total_volume") AS sum_volume,
	COUNT("total_volume") AS count_volume
FROM
	avocado_prices
WHERE
	region IN ('Albany',
		   'BaltimoreWashington',
		   'California',
		   'DallasFtWorth',
		   'HarrisburgScranton')
GROUP BY
	region
ORDER BY
	region;
  
  
