select * from sakila.actor;

/* Displaying all the columns of the actors table along with a newly created column as "Full_name" 
containing first names + last names. */

select *,concat(first_name,last_name) as Full_name
from sakila.actor;

# Adding a whitespace between the two names...
select *,concat(first_name,' ',last_name) as Full_name
from sakila.actor;

/* Note :- If we do not take a alias name then the created column will take the whole expression as the column name .*/