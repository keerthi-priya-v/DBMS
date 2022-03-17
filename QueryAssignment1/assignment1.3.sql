/* Find out the list of customers from India who have rented sports movies.*/

SELECT DISTINCT customer_list.ID, customer_list.name, customer_list.country, category.name FROM customer_list
JOIN rental ON customer_list.ID = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_category ON inventory.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "Sports" and customer_list.country ="India" ;