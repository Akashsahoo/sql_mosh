USE sql_invoicing;
SELECT 
       client_id,
       SUM(invoice_total) AS total_sales,
       COUNT(*) AS invoice_recipt_counting
       FROM invoices
       GROUP BY client_id
       HAVING total_sales > 500 AND
       invoice_recipt_counting >5
       