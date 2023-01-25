--arithmetic operations with cell values
SELECT
	title,
	average_rating,
	average_rating + 1 AS average_rating_plus_one
FROM
	books;


--output unique authors and unique languages from books table
SELECT
	DISTINCT authors,
	language_code
FROM
	books
ORDER BY
	authors ASC,
	language_code DESC;


--sort books and authors by ratings_count in descending order
SELECT
	title,
	authors,
	ratings_count
FROM
	books
ORDER BY
	ratings_count DESC;


--output top 10 most popular books based on ratings_count
SELECT
	title,
	authors,
	ratings_count
FROM
	books
ORDER BY
	ratings_count DESC
LIMIT
	10;


--truncate-offset some lines from the output
SELECT
	title,
	authors,
	ratings_count
FROM
	books
ORDER BY
	ratings_count DESC
OFFSET
	10;


--LIMIT & OFFSET
SELECT
	title,
	authors,
	ratings_count
FROM
	books
ORDER BY
	ratings_count DESC
LIMIT
	3
OFFSET
	3;


--10 rows from the table
SELECT
	*
FROM
	books
LIMIT
	10;
