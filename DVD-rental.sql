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

# Once all was uploaded, I explored the data using the following SQL queries and answered questions as below.
List all tables:
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

To explore the table called film:
SELECT * FROM film;

Q1: Which movie is in what language? I also ordered it by language and alphabetical order.
# This question is crucial for movie rental stores or video streaming platforms to provide information about the language of each movie in their catalog. Customers may prefer movies in specific languages, and this information helps them make informed choices.
# Importance: Organizing movies by language allows businesses to offer language-specific collections, making it easier for customers to find movies they understand and enjoy. Additionally, sorting movies alphabetically within each language category enhances the overall browsing experience.
	
SELECT film.title, language.name AS language FROM film
LEFT OUTER JOIN language
ON film.language_id = language.language_id
ORDER BY language, title;

Q2: How many different languages are spoken among these movies?
# Understanding the number of unique languages represented in the movie catalog is valuable for businesses to highlight the diversity of their content.
# Importance: Knowing the variety of languages helps businesses appeal to a broader audience and cater to customers from different linguistic backgrounds. It also allows them to evaluate their content acquisition strategy and potentially expand their catalog to include movies in more languages.
	
SELECT count(distinct language.name) AS number_of_languages FROM film
LEFT OUTER JOIN language
ON film.language_id = language.language_id;

Q3: How many customers go to each store?
# This question is crucial for physical movie rental stores with multiple locations or chains. It helps track store traffic and customer preferences at each location.
# Importance: Knowing the number of customers at each store assists businesses in optimizing inventory allocation, staffing, and marketing efforts. High-traffic stores may require more copies of popular movies, while less frequented stores can focus on personalized recommendations to improve customer satisfaction.
	
SELECT store_id, count(first_name) as customers FROM customer
GROUP BY store_id

Q4: What customer rented what movie and when?
# This question is fundamental for movie rental businesses to maintain accurate rental records and track customer preferences.
# Importance: Having a comprehensive rental history enables businesses to personalize recommendations for customers based on their past rentals. It also helps with inventory management and understanding the popularity of different movies among their customer base.
	
SELECT rental.rental_date, film.title AS movie, customer.first_name, customer.last_name
FROM rental
	LEFT OUTER JOIN customer
	ON rental.customer_id = customer.customer_id
	LEFT OUTER JOIN inventory
	ON rental.inventory_id = inventory.inventory_id
	LEFT OUTER JOIN film
	ON inventory.film_id = film.film_id;

Q5: Has any customer not returned the rented movie? If so, which customer hasn't returned their rented movie?
# Ensuring timely returns of rented movies is crucial for maintaining inventory and providing a smooth experience to other customers.
# Importance: Identifying customers who haven't returned rented movies allows businesses to follow up with them, remind them of the return due date, and potentially enforce late fees or other policies to incentivize prompt returns. This helps in managing inventory availability and maintaining a positive customer experience.
	
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
SELECT film.title, address.address AS store_address
FROM inventory
	LEFT OUTER JOIN film
	ON inventory.film_id = film.film_id
	
  LEFT OUTER JOIN store
	ON inventory.store_id = store.store_id
	
  LEFT OUTER JOIN address
	ON store.address_id = address.address_id
ORDER BY store_address;
