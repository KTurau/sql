SELECT * FROM avocado_prices; 

SELECT * FROM books; 

SELECT * FROM video_game_sales; 

/* books table:
 - (book_id),
 - (title),
 - (authors), 
 - (average_rating),
 - (isbn),
 - (language_code),
 - (num_pages),
 - (ratings_count),
 - (text_reviews_count),
 - (publication_date),
 - (publisher).
 */

SELECT title, authors, publisher FROM books; 

SELECT language_code, title, publication_date FROM books;

SELECT DISTINCT language_code FROM books; 

