USE sql_store;
SELECT * 
FROM customers
-- WHERE phone LIKE '%9';
WHERE phone NOT  LIKE '%9';