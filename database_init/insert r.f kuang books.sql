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
USE shelf_help_store;

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9781250144737', 'Once Upon a Broken Heart', 2, 2, 1, 1,'How far would you go for happily ever after?

For as long as she can remember, Evangeline Fox has believed in true love and happy endings... until she learns that the love of her life will marry another.

Desperate to stop the wedding and to heal her wounded heart, Evangeline strikes a deal with the charismatic but wicked Prince of Hearts. In exchange for his help, he asks for three kisses, to be given at the time and place of his choosing.

But after Evangeline’s first promised kiss, she learns that bargaining with an immortal is a dangerous game—and that the Prince of Hearts wants far more from her than she’d pledged. He has plans for Evangeline, plans that will either end in the greatest happily ever after or the most exquisite tragedy...', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1615486938i/55987278.jpg',15.99, 3.9, 100),
  ('9781250144751', 'The Ballad of Never After', 2, 2, 1, 1, 'Not every love is meant to be.

After Jacks, the Prince of Hearts, betrays her, Evangeline Fox swears she\'ll never trust him again. Now that she’s discovered her own magic, Evangeline believes she can use it to restore the chance at happily ever after that Jacks stole away.

But when a new terrifying curse is revealed, Evangeline finds herself entering into a tenuous partnership with the Prince of Hearts again. Only this time, the rules have changed. Jacks isn’t the only force Evangeline needs to be wary of. In fact, he might be the only one she can trust, despite her desire to despise him.

Instead of a love spell wreaking havoc on Evangeline’s life, a murderous spell has been cast. To break it, Evangeline and Jacks will have to do battle with old friends, new foes, and a magic that plays with heads and hearts. Evangeline has always trusted her heart, but this time she’s not sure she can...', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1645642179i/59808071.jpg',17.99, 4.6, 95),
  ('9781250144768', 'A Curse for True Love', 2, 2, 1, 1, 'Two villains, one girl, and a deadly battle for happily ever after.

Evangeline Fox ventured to the Magnificent North in search of her happy ending, and it seems as if she has it. She’s married to a handsome prince and lives in a legendary castle. But Evangeline has no idea of the devastating price she’s paid for this fairytale. She doesn’t know what she has lost, and her husband is determined to make sure she never finds out . . . but first he must kill Jacks, the Prince of Hearts.

Blood will be shed, hearts will be stolen, and true love will be put to the test in A Curse for True Love, the breathlessly anticipated conclusion to the Once Upon A Broken Heart trilogy.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1674501506i/62816044.jpg',20.99, 4.5, 110);

-- START --

INSERT INTO authors (author_forename, author_surname)
VALUES ('Julia', 'Quinn'), ('Taylor Jenkins', 'Reid'), ('Jennette', 'McCurdy');

INSERT INTO genres (genre) VALUES ('Romance'), ('Historical Fiction'), ('Crime'), ('Non-fiction');

INSERT INTO publishers (publisher) VALUES ('Harper Collins'), ('Simon & Schuster');

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9780062353645', 'The Duke and I', 3, 3, 3, 2, 'The Duke and I is a romance set in the Regency era.

In the ballrooms and drawing rooms of Regency London, rules abound. From their earliest days, children of aristocrats learn how to address an earl and curtsey before a prince—while other dictates of the ton are unspoken yet universally understood. A proper duke should be imperious and aloof. A young, marriageable lady should be amiable… but not too amiable.

Daphne Bridgerton has always failed at the latter. The fourth of eight siblings in her close-knit family, she has formed friendships with the most eligible young men in London. Everyone likes Daphne for her kindness and wit. But no one truly desires her. She is simply too deuced honest for that, too unwilling to play the romantic games that captivate gentlemen.

Amiability is not a characteristic shared by Simon Basset, Duke of Hastings. Recently returned to England from abroad, he intends to shun both marriage and society—just as his callous father shunned Simon throughout his painful childhood. Yet an encounter with his best friend’s sister offers another option. If Daphne agrees to a fake courtship, Simon can deter the mamas who parade their daughters before him. Daphne, meanwhile, will see her prospects and her reputation soar.

The plan works like a charm—at first. But amid the glittering, gossipy, cut-throat world of London’s elite, there is only one certainty: love ignores every rule...', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1609249697i/56468652.jpg', 7.99, 3.6, 120),
  ('9780062353652', 'The Viscount Who Loved Me', 3, 3, 3, 2, 'ANTHONY’S STORY

This time the gossip columnists have it wrong. London’s most elusive bachelor Anthony Bridgerton hasn’t just decided to marry—he’s even chosen a wife! The only obstacle is his intended’s older sister, Kate Sheffield—the most meddlesome woman ever to grace a London ballroom. The spirited schemer is driving Anthony mad with her determination to stop the betrothal, but when he closes his eyes at night, Kate’s the woman haunting his increasingly erotic dreams...

Contrary to popular belief, Kate is quite sure that reformed rakes do not make the best husbands—and Anthony Bridgerton is the most wicked rogue of them all. Kate’s determined to protect her sister—but she fears her own heart is vulnerable. And when Anthony’s lips touch hers, she’s suddenly afraid she might not be able to resist the reprehensible rake herself...', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1616098940i/57094327.jpg',7.99, 4.0, 110),
  ('9780062353669', 'An Offer From a Gentleman', 3, 3, 3, 2, 'Sophie Beckett never dreamed she\'d be able to sneak into Lady Bridgerton\'s famed masquerade ball—or that "Prince Charming" would be waiting there for her! Though the daughter of an earl, Sophie has been relegated to the role of servant by her disdainful stepmother. But now, spinning in the strong arms of the debonair and devastatingly handsome Benedict Bridgerton, she feels like royalty. Alas, she knows all enchantments must end when the clock strikes midnight.

Who was that extraordinary woman? Ever since that magical night, a radiant vision in silver has blinded Benedict to the attractions of any other—except, perhaps, this alluring and oddly familiar beauty dressed in housemaid\'s garb whom he feels compelled to rescue from a most disagreeable situation. He has sworn to find and wed his mystery miss, but this breathtaking maid makes him weak with wanting her. Yet, if he offers her his heart, will Benedict sacrifice his only chance for a fairy tale love?', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1634096852i/59340141.jpg',7.99, 3.2, 20);

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9781234567890', 'I\'m Glad My Mom Died', 5, 4, 5, 1, 'A heartbreaking and hilarious memoir by iCarly and Sam & Cat star Jennette McCurdy about her struggles as a former child actor—including eating disorders, addiction, and a complicated relationship with her overbearing mother—and how she retook control of her life.

Jennette McCurdy was six years old when she had her first acting audition. Her mother’s dream was for her only daughter to become a star, and Jennette would do anything to make her mother happy. So she went along with what Mom called “calorie restriction,” eating little and weighing herself five times a day. She endured extensive at-home makeovers while Mom chided, “Your eyelashes are invisible, okay? You think Dakota Fanning doesn’t tint hers?” She was even showered by Mom until age sixteen while sharing her diaries, email, and all her income.

In I’m Glad My Mom Died, Jennette recounts all this in unflinching detail—just as she chronicles what happens when the dream finally comes true. Cast in a new Nickelodeon series called iCarly, she is thrust into fame. Though Mom is ecstatic, emailing fan club moderators and getting on a first-name basis with the paparazzi (“Hi Gale!”), Jennette is riddled with anxiety, shame, and self-loathing, which manifest into eating disorders, addiction, and a series of unhealthy relationships. These issues only get worse when, soon after taking the lead in the iCarly spinoff Sam & Cat alongside Ariana Grande, her mother dies of cancer. Finally, after discovering therapy and quitting acting, Jennette embarks on recovery and decides for the first time in her life what she really wants.

Told with refreshing candor and dark humor, I’m Glad My Mom Died is an inspiring story of resilience, independence, and the joy of shampooing your own hair.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1649286799i/59364173.jpg', 19.99, 4.4, 95);

INSERT INTO books (isbn, book_title, author_id, publisher_id, genre_id, type_id, blurb, cover, price, rating, stock)
VALUES
  ('9781234567891', 'The Seven Husbands of Evelyn Hugo', 4, 4, 3, 2, 'Aging and reclusive Hollywood movie icon Evelyn Hugo is finally ready to tell the truth about her glamorous and scandalous life. But when she chooses unknown magazine reporter Monique Grant for the job, no one is more astounded than Monique herself. Why her? Why now?

Monique is not exactly on top of the world. Her husband has left her, and her professional life is going nowhere. Regardless of why Evelyn has selected her to write her biography, Monique is determined to use this opportunity to jumpstart her career.

Summoned to Evelyn’s luxurious apartment, Monique listens in fascination as the actress tells her story. From making her way to Los Angeles in the 1950s to her decision to leave show business in the ‘80s, and, of course, the seven husbands along the way, Evelyn unspools a tale of ruthless ambition, unexpected friendship, and a great forbidden love. Monique begins to feel a very real connection to the legendary star, but as Evelyn’s story nears its conclusion, it becomes clear that her life intersects with Monique’s own in tragic and irreversible ways.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1664458703i/32620332.jpg', 8.99, 4.9, 110);