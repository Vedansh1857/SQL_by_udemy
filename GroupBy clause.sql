SELECT * FROM sakila.film;

/* It returns only a single row... Like other functions it is not applied row by row */
select avg(length) as avg_length from sakila.film;

# The below query calculates the average age for each rating...
select rating,avg(length) as avg_length from sakila.film
group by rating;
/* Here the rating column is an aggregator,we use this column to groupby our result... the average length is grouped by the rating column */

# The below query returns the first rating in the original rating col and the average of all the lengths as there is no group by clause */
select rating,avg(length) as avg_length from sakila.film;

# The below query will group the data by 1st column listed just after the select statement
select rating,avg(length) as avg_length from sakila.film
group by 1;

# Grouping by two columns...
select rating,rental_duration,avg(length) as avg_length from sakila.film
group by rating,rental_duration;
