USE sql_store;
SELECT c.first_name,c.customer_id,
COUNT(*) AS order_frequency
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id , c.first_name
HAVING COUNT(*)>1 ;