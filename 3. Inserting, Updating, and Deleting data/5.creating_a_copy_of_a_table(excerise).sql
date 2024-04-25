USE sql_invoicing;
CREATE TABLE invoices_archieved  AS 
SELECT i.invoice_id,
i.invoice_date,c.name,i.payment_date,i.invoice_total 
FROM invoices i
JOIN clients c
ON i.client_id = c.client_id
WHERE payment_date IS NOT NULL;