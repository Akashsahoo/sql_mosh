USE sql_invoicing;
SELECT
      c.client_id,
      c.name,
      SUM(invoice_total) AS total_sales
FROM invoices i 
JOIN clients c
ON i.client_id = c.client_id
WHERE invoice_date >= '2019-07-01'
GROUP BY c.name,c.client_id
ORDER BY total_sales DESC;