--(PL/pgSQL)



SELECT * FROM avocado_prices; 

SELECT * FROM books; 

SELECT * FROM video_game_sales; 


-- Comments
 /*
 - books table:
 - (book_id),
 - (title),
 - (authors), 
 - (average_rating),
 - (language_code),
 - (num_pages),
 - (ratings_count),
 - (publisher).
 */


SELECT title, authors, publisher FROM books; 

SELECT language_code, title, publication_date FROM books;

SELECT DISTINCT language_code FROM books; 

