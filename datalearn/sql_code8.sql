--HOW SQL Works ?!
    -- FROM
    -- ON
    -- JOIN
    -- WHERE
    -- GROUP BY
    -- HAVING
    -- SELECT
    -- DISTINCT
    -- ORDER BY


--Filtering aggregated data
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
HAVING
	MAX("total_volume") > 1000000
ORDER BY
	max_volume DESC;


--Filtering aggregated data and filtering by column data
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
	region IN ('Albany', 'California', 'Chicago', 'Anatolii')
GROUP BY
	region
HAVING
	MAX("total_volume") > 1000000
ORDER BY
	max_volume DESC;
