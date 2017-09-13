select customer.first_name, customer.last_name, city.city, address.address
from customer
join address
on address.address_id = customer.address_id
join city
on city.city_id = address.city_id
where city.city_id = 312;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from film
join film_category
on film.film_id = film_category.film_id
join category
on film_category.category_id = category.category_id
where category.name = "Comedy";

select actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year, film.film_id
from film
join film_actor
on film.film_id = film_actor.film_id
join actor
on film_actor.actor_id = actor.actor_id
where actor.actor_id = 5;

select customer.first_name, customer.last_name, customer.email, address.address
from customer
join address
on address.address_id = customer.address_id
join city
on address.city_id = city.city_id
join store
on store.store_id = customer.store_id
where store.store_id = 1 and city.city_id in (1, 42, 312, 459);

select film.title, film.description, film.release_year, film.rating, film.special_features
from film
join film_actor
on film.film_id = film_actor.film_id
join actor
on film_actor.actor_id = actor.actor_id
where actor.actor_id = 15 and film.rating = "G" and film.special_features like '%behind the scenes%';

select film.film_id, film.title, actor.actor_id, concat(actor.first_name, " ", actor.last_name) as Name
from actor
join film_actor
on actor.actor_id = film_actor.actor_id
join film
on film_actor.film_id = film.film_id
where film.film_id = 369;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
from film
join film_actor
on film.film_id = film_actor.film_id
join actor
on film_actor.actor_id = actor.actor_id
join film_category
on film_category.film_id = film.film_id
join category
on category.category_id = film_category.category_id
where actor.first_name = "SANDRA" and actor.last_name = "KILMER" and category.name = "action";