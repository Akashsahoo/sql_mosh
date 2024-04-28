USE sql_invoicing;
SELECT p.date,
pm.name,
sum(amount) AS total_payments 
 FROM payments p
 JOIN payment_methods pm
 ON p.payment_id = pm.payment_method_id
 GROUP BY p.date , pm.name
--  order by total_payments desc