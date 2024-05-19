USE sql_store;
SELECT * FROM
customers 
WHERE customer_id IN (
SELECT customer_id FROM 
order_items oi
JOIN orders o USING (order_id)
WHERE oi.product_id =3
);