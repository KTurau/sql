--(PL/pgSQL)



--adding new column
SELECT
	*,
	'test' AS test_column
FROM
	books;


--English books
SELECT
	title,
	language_code,
	language_code = 'eng' AS English_book
FROM
	books;


--comparison operators
SELECT
	title,
	num_pages,
	num_pages > 652 AS more_than_652,
	num_pages >= 652 AS more_and_equal_than_652,
	average_rating,
	average_rating < 4.38 AS "less_than_4.38",
	average_rating <= 3.74 AS "less_and_equal_than_3.74",
	authors,
	authors != 'J.K. Rowling' AS not_rowling,
	authors <> 'J.K. Rowling' AS not_rowling2
FROM
	books;


--comparison operators & ORDER BY
SELECT
	title,
	average_rating,
	average_rating <= 4.38 AS "less_than_4.38"
FROM
	books
ORDER BY
	"less_than_4.38" ASC;


--Output the sum of all book ratings (== average_rating * ratings_count) from the books table.
SELECT
	average_rating * ratings_count AS grades
FROM
	books;

