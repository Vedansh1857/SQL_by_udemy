# Exerscise 1
SET SQL_SAFE_UPDATES = 0;

# Exerscise 2
UPDATE books_and_books.invoices
SET price = 100
WHERE invoice_id = 19995;

# Exerscise 3
UPDATE books_and_books.invoices
SET store_id = 3 , discount = 2
WHERE invoice_id = 19994;

# Exerscise 4
UPDATE books_and_books.books
SET ReleaseYear = 2012
WHERE AuthorFirstName IN ("Yuval","Nassim");

# Exerscise 5
UPDATE books_and_books.books
SET NumberPages = 400
WHERE AuthorFirstName IN ("George","Aldous");