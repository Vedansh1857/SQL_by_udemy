# Exerscise 1
SELECT result.*
FROM
(SELECT b.*
FROM books_and_books.invoices AS a
INNER JOIN books_and_books.books AS b
ON a.BookID = b.BookID) AS result;

# Exerscise 2
SELECT AVG(result.NumberPages)
FROM
(SELECT b.*
FROM books_and_books.invoices AS a
INNER JOIN books_and_books.books AS b
ON a.BookID = b.BookID) AS result;

# Exerscise 3
SELECT AVG(ans.price) AS avg_price
FROM
(SELECT * FROM books_and_books.invoices WHERE store_id = 4) AS ans;

# Exerscise 4
DELETE FROM books_and_books.invoices_new
WHERE invoice_id = 19994;

# Exerscise 5
INSERT INTO books_and_books.invoices(
	invoice_id,store_id,BookId,invoice_date,price,discount
)SELECT * FROM books_and_books.invoices_new;