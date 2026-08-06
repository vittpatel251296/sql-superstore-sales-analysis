-- Total number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Total sales
SELECT SUM(sales) AS total_sales FROM orders;

-- Total profit
SELECT SUM(profit) AS total_profit FROM orders;

-- Average order value
SELECT AVG(sales) AS avg_order_value FROM orders;

-- Min and max sales
SELECT MIN(sales) AS min_sale,
       MAX(sales) AS max_sale
FROM orders;

-- Count orders by ship mode
SELECT ship_mode, COUNT(*) AS order_count
FROM orders
GROUP BY ship_mode;

-- Count products by category
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- Count customers by region
SELECT region, COUNT(*) AS customer_count
FROM customers
GROUP BY region;

-- Total sales by customer
SELECT customer_id, SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id;

-- Total sales by product
SELECT product_id, SUM(sales) AS total_sales
FROM orders
GROUP BY product_id;

-- Average profit by ship_mode
SELECT ship_mode, AVG(profit) AS avg_profit
FROM orders
GROUP BY ship_mode;

-- Customers with more than 2 orders
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 2;

-- Products with total sales > 200
SELECT product_id, SUM(sales) AS total_sales
FROM orders
GROUP BY product_id
HAVING SUM(sales) > 200;
