USE sql_invoicing;
SELECT
     MAX(invoice_total) AS highest,
     MIN(invoice_total) AS lowest,
     AVG(invoice_total) AS avg_sal,
     SUM(invoice_total) AS total,
     COUNT(*) as total_records,
     COUNT(DISTINCT client_id) AS total_records_client,
     COUNT(invoice_total) AS count_total,
     COUNT(payment_date) AS count_of_payments
FROM invoices
WHERE invoice_date > '2019-07-01';