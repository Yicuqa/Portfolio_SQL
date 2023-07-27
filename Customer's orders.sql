# I started with creating a table for customers

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);

# I then insertes some data
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");


# After that I created another table for orders
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

# And inserted some data
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);


Q1: Which customers have placed orders and what items have they purchased along with the respective prices?
# This question is highly relevant for businesses in the retail, e-commerce, or service industries. It provides critical insights into the purchasing behavior of individual customers and helps track their buying preferences and patterns.
# Importance: Understanding which customers have placed orders and the items they purchased with their respective prices is essential for customer relationship management. It allows businesses to personalize their marketing efforts, offer targeted promotions, and recommend relevant products or services based on customers' past purchases. Additionally, this data aids in inventory management, as it helps businesses identify popular products and ensure their availability.
    
SELECT customers.name, customers.email, orders.item, orders.price FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;


Q2: What are the total amounts spent by each customer on their orders, and which customers have spent the most?
# This question is crucial for businesses to gauge customer spending habits and identify their most valuable customers in terms of revenue generation.
# Importance: Knowing the total amounts spent by each customer on their orders enables businesses to segment their customer base based on spending levels. This information can help in designing customer loyalty programs, rewarding high-spending customers, and implementing targeted retention strategies. By identifying customers who have spent the most, businesses can prioritize providing excellent customer service, ensuring customer satisfaction, and potentially fostering long-term customer loyalty. It also aids in identifying potential brand ambassadors or influencers who can positively impact the business's reputation and customer acquisition efforts.
    
SELECT customers.name, customers.email, SUM(orders.price) AS total_amount FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    GROUP BY customers.name
    ORDER BY orders.price desc;

