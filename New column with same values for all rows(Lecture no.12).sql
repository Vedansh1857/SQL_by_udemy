# Sakila.actor contains the actor's names id & dates...
select *
from sakila.actor;

# Creating a column explicitly named "person_role" with all 200 values as "actor"
select *,'actor' as person_role
from sakila.actor;