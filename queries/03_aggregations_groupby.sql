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
