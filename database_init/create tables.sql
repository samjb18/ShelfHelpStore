USE shelf_help_store;

CREATE TABLE authors (
    author_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_forename VARCHAR(50) NOT NULL,
    author_surname VARCHAR(50) NOT NULL
);

CREATE TABLE book_types (
    type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_type VARCHAR(10) NOT NULL
);

CREATE TABLE genres (
	genre_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(50) NOT NULL
);

CREATE TABLE publishers (
	publisher_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher VARCHAR(100) NOT NULL
);

CREATE TABLE books (
	isbn VARCHAR(255) NOT NULL PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publisher_id INT NOT NULL,
    genre_id INT NOT NULL,
    type_id INT NOT NULL,
    blurb TEXT NOT NULL,
    cover VARCHAR(255),
    price DECIMAL(5,2) NOT NULL,
    rating FLOAT(2,1) NOT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    FOREIGN KEY (type_id) REFERENCES book_types(type_id)
);

CREATE TABLE customers (
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_forename VARCHAR(50) NOT NULL,
    customer_surname VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    postcode VARCHAR(30) NOT NULL,
    card_number VARCHAR(255) NOT NULL,
    card_expiry date NOT NULL,
    cvv VARCHAR(4) NOT NULL
);

CREATE TABLE orders (
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    date_ordered date NOT NULL,
    FOREIGN KEY (isbn) REFERENCES books(isbn)
);

CREATE TABLE completed_orders (
	order_id INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


