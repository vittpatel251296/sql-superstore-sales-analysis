-- Customers in California
SELECT * FROM customers WHERE state = 'California';

-- Customers in West region
SELECT * FROM customers WHERE region = 'West';

-- Technology products
SELECT * FROM products WHERE category = 'Technology';

-- Orders with sales > 100
SELECT * FROM orders WHERE sales > 100;

-- Orders with profit > 50
SELECT * FROM orders WHERE profit > 50;

-- Orders in January 2024
SELECT * FROM orders
WHERE order_date >= '2024-01-01' AND order_date <= '2024-01-31';

-- Corporate segment customers
SELECT customer_name, city
FROM customers
WHERE segment = 'Corporate';

-- Furniture products
SELECT product_name, subcategory
FROM products
WHERE category = 'Furniture';

-- Sort customers by name
SELECT * FROM customers ORDER BY customer_name ASC;

-- Sort orders by sales (highest first)
SELECT * FROM orders ORDER BY sales DESC;

-- Top 5 highest sales orders
SELECT * FROM orders
ORDER BY sales DESC
LIMIT 5;

-- Top 3 most profitable orders
SELECT * FROM orders
ORDER BY profit DESC
LIMIT 3;

-- Sort products by category, then by product name
SELECT * FROM products
ORDER BY category ASC, product_name ASC;

-- 5 cheapest orders
SELECT * FROM orders
ORDER BY sales ASC
LIMIT 5;
