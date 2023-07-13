# For this project, I downloaded dvdrental data from PostgreSQL Sample Database.
# Then I inserted dvdrental.tar file into postgresql

The existing tables are:
actor,
address,
category,
city,
country,
customer,
film,
film_actor,
film_category,
inventory,
language,
payment,
rental,
staff,
store

#Once all was uploaded, I explored the data using the following SQL queries and answered questions as below.
List all tables:
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

To explore the table called film:
SELECT * FROM film;

Q1. Which movie is in what language? I also ordered it by language and alphabetical order.
QUERY:
SELECT film.title, language.name AS language FROM film
LEFT OUTER JOIN language
ON film.language_id = language.language_id
ORDER BY language, title;

Q2. How many different languages are spoken among these movies?
QUERY:
SELECT count(distinct language.name) AS number_of_languages FROM film
LEFT OUTER JOIN language
ON film.language_id = language.language_id;

Q3. How many customers go to each store?
QUERY:
SELECT store_id, count(first_name) as customers FROM customer
GROUP BY store_id

Q4. What customer rented what movie and when?
QUERY:
SELECT rental.rental_date, film.title AS movie, customer.first_name, customer.last_name
FROM rental
	LEFT OUTER JOIN customer
	ON rental.customer_id = customer.customer_id
	LEFT OUTER JOIN inventory
	ON rental.inventory_id = inventory.inventory_id
	LEFT OUTER JOIN film
	ON inventory.film_id = film.film_id;

Q5. Has any customer not returned the rented movie?
    If so, which customer hasn't returned their rented movie?
QUERY:
SELECT rental.rental_date, customer.first_name, customer.last_name,
	CASE
	WHEN rental.return_date IS NULL THEN 'Not returned'
	ELSE 'Has been returned'
	END return_status
FROM rental
	LEFT OUTER JOIN customer
	ON rental.customer_id = customer.customer_id
WHERE rental.return_date IS NULL
ORDER BY customer.last_name, customer.first_name;

Q6. What store has which movie?
QUERY:
SELECT film.title, address.address AS store_address
FROM inventory
	LEFT OUTER JOIN film
	ON inventory.film_id = film.film_id
	
  LEFT OUTER JOIN store
	ON inventory.store_id = store.store_id
	
  LEFT OUTER JOIN address
	ON store.address_id = address.address_id
ORDER BY store_address;
