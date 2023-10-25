select * from books_and_books.books;

-- Solution 1.
describe books_and_books.books;

-- Solution 2.
#varchar(255)

-- Solution 3.
#255 characters

-- Solution 4.
#BookID

-- Solution 5.
# Not appropriate, First name can't be of 100 characters

-- Solution 6.
select log(BookName*5) from books_and_books.books;
# Not a valid calculation.

-- Solution 7.
#1984

-- Solution 8.
describe books_and_books.authors;

-- Solution 9.
# Yes it can have negative values as it doesn't have unsigned clause