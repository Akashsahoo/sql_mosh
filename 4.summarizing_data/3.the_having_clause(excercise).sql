USE sql_store;
SELECT c.first_name,
c.last_name ,
c.state,
c.city,
SUM(oi.quantity * oi.unit_price)  AS total_pay
FROM customers c
JOIN orders o
USING (customer_id)
JOIN order_items oi
USING (order_id)
WHERE state = 'va'
GROUP BY o.customer_id
HAVING total_pay > 100