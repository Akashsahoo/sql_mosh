USE sql_invoicing;
SELECT p.payment_id,c.name,p.amount,
pm.name
FROM payments p
JOIN clients c
USING (client_id)
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id