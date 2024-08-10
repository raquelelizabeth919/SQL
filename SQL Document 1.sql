-- 1. How many actors are there with the last name ‘Wahlberg’?
select * from actor where last_name = 'Wahlberg'


-- 2. How many payments were made between $3.99 and $5.99? This syntax should work but it does not??
select * from payment
where amount between 3.99 and 5.99


-- 3. What film does the store have the most of? search in inventory
SELECT film_id, COUNT(inventory_id) AS film_count
FROM inventory
JOIN film ON inventory.film_id = film.film_id
GROUP BY title
ORDER BY film_count DESC
LIMIT 1;


--4. How many customers have the last name ‘William’?
select * from customer where last_name = 'William'


--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(rental_date)
from rental
group by staff_id 
limit 1;


--6. How many different district names are there?
SELECT COUNT(DISTINCT district) 
FROM address;


--7. What film has the most actors in it? use film_actor table and get film_id
select film_id, count(distinct actor_id) as actor_count
from film_actor
group by film_id
order by actor_count desc
limit 1;


--8. From store_id 1, how many customers have a last name ending with ‘es’? use customer table
SELECT COUNT(DISTINCT last_name)
FROM customer 
WHERE store_id = 1 
AND last_name LIKE '%es';


--9. How many payment amounts 4.99, 5.99, etc. had a number of rentals above 250 for customers
--with ids between 380 and 430? use group by and having > 250 ... this question is too vague.
SELECT amount, COUNT(*) 
FROM payment p 
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(*)
from film
group by rating
order by count desc;


