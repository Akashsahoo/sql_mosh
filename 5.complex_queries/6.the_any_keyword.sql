USE sql_invoicing;
SELECT *
FROM clients WHERE client_id = ANY (
SELECT client_id
FROM invoices
GROUP BY client_id 
Having COUNT(*) >=2
)

-- IN = (= ANY)

-- USE sql_invoicing;
-- SELECT *
-- FROM clients WHERE client_id IN (
-- SELECT client_id
-- FROM invoices
-- GROUP BY client_id 
-- Having COUNT(*) >=2
-- )