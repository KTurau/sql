--Only JK Rowling books
SELECT
	*
FROM
	books
WHERE
	authors = 'J.K. Rowling';


--Output books from Scholastic Inc.
SELECT
	*
FROM
	books
WHERE
	publisher = 'Scholastic Inc.';


--Multiple publishers
SELECT
	*
FROM
	books
WHERE
	publisher = 'Scholastic Inc.'
	OR
	publisher = 'Scholastic';


--Output books with publisher (Scholastic Inc.) or books written in 'eng' language
SELECT
	*
FROM
	books
WHERE
	publisher = 'Scholastic Inc.'
	OR
	language_code = 'eng'
ORDER BY
	publisher;


--Output books published by Scholastic Inc. and also written in 'eng' language
SELECT
	*
FROM
	books
WHERE
	publisher = 'Scholastic Inc.'
	AND
	language_code = 'eng'
ORDER BY
	publisher;


--Output books with publisher (Scholastic Inc.) or books written in 'eng-US' language
SELECT
	*
FROM
	books
WHERE
	publisher = 'Scholastic Inc.'
	OR
	language_code = 'eng-US'
ORDER BY
	publisher;


--Books by John McPhee with an average book rating of more than 4
SELECT
	*
FROM
	books
WHERE
	authors = 'John McPhee'
	AND
	average_rating > 4;


--Books by John McPhee or books with an average book rating of more than 4
SELECT
	*
FROM
	books
WHERE
	authors = 'John McPhee'
	OR
	average_rating > 4
ORDER BY
	authors;


--Filter books by author (Douglas Adams ; Frank Herbert)
SELECT
	*
FROM
	books
WHERE
	authors = 'Douglas Adams'
	OR
	authors = 'Frank Herbert';


--Books written by two authors
SELECT
	*
FROM
	books
WHERE
	authors = 'J.K. Rowling/Mary GrandPré';


--Books that are NOT written by J.K. Rowling
SELECT
	*
FROM
	books
WHERE
	NOT authors = 'J.K. Rowling';


--Books with rating of 4.57 or 3.60 in descending order
SELECT
	*
FROM
	books
WHERE
	average_rating = 4.57
	OR
	average_rating = 3.60
ORDER BY
	average_rating DESC;


--Books with a rating between 3.60 and 4.57 in descending order
SELECT
	*
FROM
	books
WHERE
	average_rating >= 3.60
	AND
	average_rating <= 4.57
ORDER BY
	average_rating DESC;


--Books with a rating between 3.60 and 4.57 in descending order using the BETWEEN operator
SELECT
	*
FROM
	books
WHERE
	average_rating BETWEEN 3.60 AND 4.57
ORDER BY
	average_rating DESC;


--Books in the range 3.60 and 4.57 in desc order. Values 3.60 and 4.57 are not included
SELECT
	*
FROM
	books
WHERE
	average_rating > 3.60
	AND
	average_rating < 4.57
ORDER BY
	average_rating DESC;


--Books by author Bill Bryson, the average rating of his books = 3.90 OR the number of pages is more than 300
SELECT
	*
FROM
	books
WHERE
	authors = 'Bill Bryson'
	AND (average_rating = 3.90 OR num_pages > 300);


--Books by author Bill Bryson, the average rating of his books = 3.90 AND the number of pages is more than 300
SELECT
	*
FROM
	books
WHERE
	authors = 'Bill Bryson'
	AND (average_rating = 3.90 AND num_pages > 300);


--Combined condition (priority of operators AND and OR)
SELECT
	*
FROM
	books
WHERE
	authors = 'Bill Bryson'
	AND average_rating = 3.90 OR num_pages > 300
ORDER BY
	authors,
	average_rating;


--Changing priority with curly braces
SELECT
	*
FROM
	books
WHERE
	authors = 'Bill Bryson'
	AND (average_rating = 3.90 OR num_pages > 300)
ORDER BY
	authors,
	average_rating;

