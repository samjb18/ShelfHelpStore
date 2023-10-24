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
INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9780062662561', 'The Poppy War', 1, 1, 1, 1, 'An epic historical military fantasy, inspired by the bloody history of China’s twentieth century and filled with treachery and magic.', "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1515691735i/35068705.jpg", 19.99, 4.5, 100),
  ('9780062662585', 'The Dragon Republic', 1, 1, 1, 1, 'In the aftermath of the Third Poppy War, shaman and warrior Rin is on the run: haunted by the atrocity she committed to end the war, addicted to opium, and hiding from the murderous commands of her vengeful god, the fiery Phoenix. Her only reason for living is to get revenge on the traitorous Empress who sold out Nikan to their enemies.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1539963703i/41118857.jpg',21.99, 4.7, 150),
  ('9780062662578', 'The Burning God', 1, 1, 1, 1, 'The exciting end to The Poppy War trilogy, R. F. Kuang’s acclaimed, award-winning epic fantasy that combines the history of twentieth-century China with a gripping world of gods and monsters, to devastating, enthralling effect.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1584965579i/45857086.jpg',24.99, 4.8, 120);

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9780062662622', 'Babel', 1, 1, 1, 1, 'From award-winning author R. F. Kuang comes Babel, a historical fantasy epic that grapples with student revolutions, colonial resistance, and the use of language and translation as the dominating tool of the British Empire

Traduttore, traditore: An act of translation is always an act of betrayal.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1677361825i/57945316.jpg',18.99, 4.4, 110),
  ('9780062662592', 'Yellowface', 1, 1, 1, 1, 'Authors June Hayward and Athena Liu were supposed to be twin rising stars: same year at Yale, same debut year in publishing. But Athena\'s a cross-genre literary darling, and June didn\'t even get a paperback release. Nobody wants stories about basic white girls, June thinks.

So when June witnesses Athena\'s death in a freak accident, she acts on impulse: she steals Athena\'s just-finished masterpiece, an experimental novel about the unsung contributions of Chinese laborers to the British and French war efforts during World War I.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1687082673i/59357120.jpg',20.99, 4.6, 130);


INSERT INTO publishers (publisher) VALUES ('Hachette UK');

INSERT INTO authors (author_forename, author_surname)
VALUES ('Stephanie', 'Garber');

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9781250095251', 'Caraval', 2, 2, 1, 2, 'A legendary competition.
A mesmerizing romance.
An unbreakable bond
between two sisters.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1465563623i/27883214.jpg', 6.99, 4.3, 90),
  ('9781250095268', 'Legendary', 2, 2, 1, 2, 'A heart to protect. A debt to repay. A game to win.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1506803153i/36329818.jpg', 7.99, 4.5, 110),
  ('9781250095275', 'Finale', 2, 2, 1, 2, 'A love worth fighting for. A dream worth dying for. An ending worth waiting for.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1540221721i/40381392.jpg', 8.99, 4.6, 120);


-- START HERE --

