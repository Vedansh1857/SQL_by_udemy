# EXERSCISE 1
create table books_and_books.stores(
	store_id integer primary key auto_increment,
    store_name varchar(30) not null,
    capacity tinyint
);

describe books_and_books.stores;

SELECT * FROM books_and_books.stores;

# EXERSCISE 2
ALTER TABLE books_and_books.stores
MODIFY capacity smallint;

# EXERSCISE 3
INSERT INTO books_and_books.stores(
	store_name , capacity
) values ("Booksy",500);

# EXERSCISE 4
INSERT INTO books_and_books.stores(
	store_name , capacity
) values ("Pagey",200),
("Leaflet",250);

# EXERSCISE 5
SET sql_safe_updates = 0;

# EXERSCISE 6
DELETE FROM books_and_books.stores
WHERE store_name IN ("Booksy","Leaflet");

# EXERSCISE 7
INSERT INTO books_and_books.stores(
	store_name , capacity
) values ("Library",2000);

# EXERSCISE 8
ALTER TABLE books_and_books.stores
CHANGE COLUMN capacity book_capacity
smallint;

# EXERSCISE 9
ALTER TABLE books_and_books.stores
ADD COLUMN region VARCHAR(100);