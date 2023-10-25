select * from books_and_books.books;

/* Exerscise 2 */
select * from books_and_books.books
where ReleaseYear > 2000;

/* Exerscise 3 */
select BookName from books_and_books.books
where AuthorFirstName = "Stephen";

/* Exerscise 4 */
select AuthorFirstName,avg(NumberPages) as mean_pages
from books_and_books.books
group by AuthorFirstName;

/* Exerscise 5 */
select AuthorFirstName,avg(NumberPages) as mean_pages
from books_and_books.books
group by AuthorFirstName
having mean_pages > 600;

/* Exerscise 6 */
select * from books_and_books.books
order by NumberPages desc;

/* Exerscise 7 */
select concat(AuthorFirstName," ",AuthorLastName) as Author_name , count(BookName) as no_of_books
from books_and_books.books
group by AuthorFirstName,AuthorLastName
having no_of_books > 1;

/* Exerscise 8 */
select *,concat(AuthorFirstName," ",AuthorLastName) as FullName from books_and_books.books;

/* Exerscise 9 */
select (NumberPages/10) as nb_pages_div from books_and_books.books;