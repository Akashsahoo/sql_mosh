SELECT DISTINCT c.customer_id,c.first_name,c.last_name FROM 
order_items oi
JOIN orders o USING (order_id)
JOIN customers c USING (customer_id)
WHERE oi.product_id =3