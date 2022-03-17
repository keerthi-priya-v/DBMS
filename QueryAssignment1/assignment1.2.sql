/* Find out the top 3 rented horror movies.*/

SELECT film.film_id, film.title, film.rental_rate, category.name FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = "Horror" ORDER BY film.rental_rate DESC LIMIT 3;