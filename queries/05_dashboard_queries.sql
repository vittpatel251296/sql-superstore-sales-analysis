-- 1. Total Revenue
SELECT SUM(sales) AS total_revenue
FROM orders;

-- 2. Total Profit
SELECT SUM(profit) AS total_profit
FROM orders;

-- 3. Total Number of Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 4. Average Order Value
SELECT AVG(sales) AS avg_order_value
FROM orders;

-- 5. Total Sales by Region
SELECT c.region,
       SUM(o.sales) AS total_sales,
       COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;

-- 6. Total Sales by Category
SELECT p.category,
       SUM(o.sales) AS total_sales,
       COUNT(o.order_id) AS total_orders
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

-- 7. Top 5 Customers by Sales
SELECT c.customer_name,
       c.city,
       SUM(o.sales) AS total_sales,
       COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name, c.city
ORDER BY total_sales DESC
LIMIT 5;

-- 8. Top 5 Products by Sales
SELECT p.product_name,
       p.category,
       SUM(o.sales) AS total_sales,
       SUM(o.profit) AS total_profit
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name, p.category
ORDER BY total_sales DESC
LIMIT 5;

-- 9. Daily Sales
SELECT o.order_date,
       SUM(o.sales) AS daily_sales,
       COUNT(o.order_id) AS daily_orders
FROM orders o
GROUP BY o.order_date
ORDER BY o.order_date;

-- 10. Profit Margin by Category
SELECT p.category,
       SUM(o.sales) AS total_sales,
       SUM(o.profit) AS total_profit,
       ROUND((SUM(o.profit) / SUM(o.sales)) * 100, 2) AS profit_margin_percent
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY profit_margin_percent DESC;
