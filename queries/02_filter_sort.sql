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
