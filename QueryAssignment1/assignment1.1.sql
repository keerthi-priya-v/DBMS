/*Find out the PG-13 rated comedy movies. DO NOT use the film_list table.*/

SELECT film.title, film.rating, category.name FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE film.rating = "PG-13" and category.name = "Comedy";