-- in consistent read value
USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
SELECT points 
FROM customers 
WHERE customer_id = 1;

SELECT points 
FROM customers 
WHERE customer_id = 1;
COMMIT;