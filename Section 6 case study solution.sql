# Exerscise 1
CREATE TABLE books_and_books.invoices(
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookId INTEGER NOT NULL,
    invoice_date DATE,
    price DECIMAL(19,4)
);

# Exerscise 2
INSERT INTO books_and_books.invoices(
	invoice_id,store_id,BookId,invoice_date,price
) VALUES (19994,2,3,'2021-01-01',19),
(19995,4,7,'2020-03-03',1.5),
(19996,4,15,'2021-04-05',21.50);

SELECT * FROM books_and_books.books;
SELECT * FROM books_and_books.invoices;

# Exerscise 3
SELECT a.*,b.BookName
FROM books_and_books.invoices AS a
INNER JOIN books_and_books.books AS b
ON a.BookId = b.BookID;

# Exerscise 4
SELECT a.*,b.BookName,c.store_name
FROM books_and_books.invoices AS a
INNER JOIN books_and_books.books AS b
ON a.BookId = b.BookID
INNER JOIN books_and_books.stores AS c
ON a.store_id = c.store_id;

# Exerscise 5
SELECT a.*,b.BookName
FROM books_and_books.invoices AS a
LEFT JOIN books_and_books.books AS b
ON a.BookId = b.BookID;

# Exerscise 6
CREATE TABLE books_and_books.invoices_new(
	invoice_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    BookId INTEGER NOT NULL,
    invoice_date DATE,
    price DECIMAL(19,4),
    discount DECIMAL(19,4)
);

# Exerscise 7
INSERT INTO books_and_books.invoices_new(
	invoice_id,store_id,BookId,invoice_date,price,discount
) VALUES (19994,2,3,'2021-01-01',19,0),
(19997,2,1,'2020-11-03',2,1);

# Exerscise 8
SELECT invoice_id,store_id,BookId,invoice_date,price
FROM books_and_books.invoices
UNION ALL
SELECT invoice_id,store_id,BookId,invoice_date,price
FROM books_and_books.invoices_new;

# Exerscise 9
SELECT invoice_id,store_id,BookId,invoice_date,price
FROM books_and_books.invoices
UNION
SELECT invoice_id,store_id,BookId,invoice_date,price
FROM books_and_books.invoices_new;

# Exerscise 10
ALTER TABLE books_and_books.invoices
ADD COLUMN discount DECIMAL(19,4);

# Exerscise 11
SELECT invoice_id,store_id,BookId,invoice_date,price,discount,discount/price AS price_discount
FROM books_and_books.invoices
UNION ALL
SELECT invoice_id,store_id,BookId,invoice_date,price,discount,discount/price AS price_discount
FROM books_and_books.invoices_new;
