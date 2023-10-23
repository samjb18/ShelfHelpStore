USE shelf_help_store;

INSERT INTO authors (author_forename, author_surname)
VALUES ('R.F.', 'Kuang');

INSERT INTO book_types (book_type)
VALUES ('Hardback'),
	   ('Paperback');

INSERT INTO genres (genre)
VALUES ('Fantasy');

INSERT INTO publishers (publisher)
VALUES ('Harper Voyager');

-- Insert R.F. Kuang's books
INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, price, rating, stock)
VALUES
  ('9780062662561', 'The Poppy War', 1, 1, 1, 1, 'The Poppy War is a fantasy novel...', 19.99, 4.5, 100),
  ('9780062662585', 'The Dragon Republic', 1, 1, 1, 1, 'The Dragon Republic is the second book in the series...', 21.99, 4.7, 150),
  ('9780062662578', 'The Burning God', 1, 1, 1, 1, 'The Burning God concludes the trilogy...', 24.99, 4.8, 120);
  
-- START HERE --