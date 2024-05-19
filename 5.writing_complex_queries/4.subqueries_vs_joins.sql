USE sql_invoicing;
SELECT *
FROM clients
WHERE client_id NOT IN 
(SELECT DISTINCT client_id FROM invoices
);

-- outer join

SELECT c.client_id,c.name,
c.address,c.city,c.state,c.phone FROM clients c
LEFT JOIN invoices i
ON (c.client_id = i.client_id)
WHERE invoice_id IS NULL;