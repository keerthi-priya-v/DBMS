/*Find out the number of R rated movies rented by “SUSAN WILSON”.*/

SELECT count(*) FROM film_list
JOIN inventory on film_list.FID = inventory.film_id 
JOIN rental on inventory.inventory_id = rental.inventory_id
JOIN customer_list on  rental.customer_id = customer_list.ID
and customer_list.name ='Susan Wilson' and film_list.rating='R';