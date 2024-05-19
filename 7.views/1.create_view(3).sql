USE sql_invoicing;
SELECT 
* FROM
sales_by_client
JOIN clients USING (client_id);