USE sql_invoicing;


-- apporach 1
SELECT *
FROM clients
WHERE client_id IN (
SELECT DISTINCT client_id FROM
invoices 
);

-- apporach 2
SELECT * FROM
clients c
WHERE EXISTS (
SELECT client_id FROM
invoices 
WHERE client_id = c.client_id
);


-- apporach 2 is better than apporach 1

