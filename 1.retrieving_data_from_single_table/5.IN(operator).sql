USE sql_store;
SELECT  * 
FROM customers
WHERE state IN ('VA','FL','GA');
-- WHERE state='VA' OR state='FL'OR state='GA';