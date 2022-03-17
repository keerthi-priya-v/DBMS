/*Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.*/

SELECT DISTINCT customer_list.name AS customer_name, customer_list.country, actor.first_name as actor_first_name, actor.last_name as actor_last_name FROM customer_list
JOIN rental ON customer_list.ID = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_actor ON inventory.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = "NICK" and actor.last_name = "WAHLBERG" and customer_list.country ="Canada" ;