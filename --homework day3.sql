--homework day3

SELECT CONCAT(customer.first_name, ' ', customer.last_name) as customer_name, actor_full_name, COUNT(actor_full_name) as number_of_rental_appearences
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_actor ON film_actor.film_id = film.film_id
JOIN (SELECT DISTINCT CONCAT(actor.first_name, ' ', actor.last_name) as actor_full_name, actor_id FROM actor) as a_names
ON a_names.actor_id = film_actor.actor_id
GROUP BY customer_name, actor_full_name
ORDER BY customer_name, number_of_rental_appearences DESC
;

--1
SELECT first_name, last_name, email, district
FROM customer
JOIN address
ON address.address_id = customer.address_id
JOIN city 
ON address.city_id = city.city_id
JOIN country
ON city.country_id = country.country_id
WHERE district = 'Texas';

--2
SELECT first_name, last_name, email, amount
FROM payment
JOIN customer
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;
--3
SELECT *
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY first_name, last_name, payment.customer_id, amount
    HAVING SUM(amount) >=175
    ORDER BY SUM(amount)
    );

--4
SELECT first_name, last_name, email, city
FROM customer
JOIN address
ON address.address_id = customer.address_id
JOIN city 
ON city.city_id = address.city_id
WHERE city = 'Nepal';

--5
SELECT first_name, last_name
FROM staff
JOIN payment
ON staff.staff_id = payment.payment_id
GROUP BY first_name, last_name
ORDER BY COUNT(payment.payment_id) DESC;

-- 6
SELECT *
FROM (SELECT COUNT(rating) as cnt_rate, rating
from film
GROUP BY rating) as cnts;

--7
SELECT *
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY first_name, last_name, payment.customer_id, amount =1
    HAVING SUM(amount) > 6.99
    ORDER BY SUM(amount)
    );

--8
SELECT *
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY first_name, last_name, payment.customer_id, amount =1
    HAVING SUM(amount) = 0
    ORDER BY SUM(amount)
    );