
-- Total Revenue
SELECT SUM(total_purchase_value) AS total_revenue FROM customer_purchases;

-- Average Order Value
SELECT AVG(total_purchase_value) AS avg_order_value FROM customer_purchases;

-- Revenue by Region
SELECT region, SUM(total_purchase_value) revenue
FROM customer_purchases
GROUP BY region
ORDER BY revenue DESC;

-- Revenue by Product Category
SELECT product_category, SUM(total_purchase_value) revenue
FROM customer_purchases
GROUP BY product_category
ORDER BY revenue DESC;

-- Top 10 Customers
SELECT customer_id, customer_name, SUM(total_purchase_value) revenue
FROM customer_purchases
GROUP BY customer_id, customer_name
ORDER BY revenue DESC
LIMIT 10;

-- Repeat Customers
SELECT customer_id, COUNT(*) purchases
FROM customer_purchases
GROUP BY customer_id
HAVING COUNT(*) > 1;
