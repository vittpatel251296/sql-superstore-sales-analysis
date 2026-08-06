-- See all customers
SELECT * FROM customers;

-- See specific columns from customers
SELECT customer_name, city, state FROM customers;

-- See all products
SELECT * FROM products;

-- See product name and category
SELECT product_name, category FROM products;

-- See all orders
SELECT * FROM orders;

-- See key order fields
SELECT order_id, customer_id, product_id, sales, profit FROM orders;
