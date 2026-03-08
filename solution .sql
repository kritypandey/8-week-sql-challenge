-- Danny's Diner SQL Case Study

-- Question 1
-- What is the total amount each customer spent at the restaurant?

SELECT
s.customer_id,
SUM(m.price) AS total_spent
FROM sales s
JOIN menu m
ON s.product_id = m.product_id
GROUP BY s.customer_id
ORDER BY total_spent DESC;


-- Question 2
-- How many days has each customer visited the restaurant?

SELECT
customer_id,
COUNT(DISTINCT order_date) AS visit_days
FROM sales
GROUP BY customer_id;


-- Question 3
-- First item purchased by each customer

SELECT *
FROM (
SELECT 
s.customer_id,
m.product_name,
ROW_NUMBER() OVER(
PARTITION BY s.customer_id
ORDER BY s.order_date
) AS rn
FROM sales s
JOIN menu m
ON s.product_id = m.product_id
) t
WHERE rn = 1;