--1.
CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);

--Output - no rows selected

--2.
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

--Output - no rows selected

--3.
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

--Output - no rows selected

--4.
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

--Output - no rows selected

--5.
SELECT customers.name, customers.email, orders.item, orders.price FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;

/*Output:

name              email                        item                        price
----              -----                        ----                        -----
Doctor Who        doctorwho@timelords.com      Sonic Screwdriver           1000
Doctor Who        doctorwho@timelords.com      TARDIS                      1000000
Harry Potter      harry@potter.com             High Quality Broomstick     40
Captain Awesome   captain@awesome.com          NULL                        NULL

*/

--6.
SELECT customers.name, customers.email, SUM(orders.price) AS total_amount FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    GROUP BY customers.name
    ORDER BY orders.price desc;

/*Output:

name              email                        item                        price
----              -----                        ----                        -----
Doctor Who        doctorwho@timelords.com      TARDIS                      1001000
Harry Potter      harry@potter.com             High Quality Broomstick     40
Captain Awesome   captain@awesome.com          NULL                        NULL

*/
