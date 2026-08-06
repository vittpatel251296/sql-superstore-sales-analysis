-- Orders with customer names
SELECT o.order_id,
       c.customer_name,
       o.sales,
       o.profit
FROM orders o
JOIN customers c
  ON o.customer_id = c.customer_id;

-- Orders with product names
SELECT o.order_id,
       p.product_name,
       o.quantity,
       o.sales
FROM orders o
JOIN products p
  ON o.product_id = p.product_id;

-- Orders with customer and product details
SELECT o.order_id,
       o.order_date,
       c.customer_name,
       c.city,
       p.product_name,
       p.category,
       o.quantity,
       o.sales,
       o.profit
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products  p ON o.product_id  = p.product_id;

-- All customers and their orders (including customers with no orders)
SELECT c.customer_name,
       o.order_id,
       o.sales
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id;

-- Total sales by customer name
SELECT c.customer_name,
       SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;

-- Total sales by product name
SELECT p.product_name,
       SUM(o.sales) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;
