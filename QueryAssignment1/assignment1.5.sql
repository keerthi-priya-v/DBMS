/*Find out the number of movies in which “SEAN WILLIAMS” acted.*/

SELECT count(*) FROM film_actor 
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = "SEAN" and actor.last_name = "WILLIAMS";