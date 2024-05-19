USE sql_store;
START TRANSACTION;
UPDATE customers 
SET points = 2999 -- or 30
WHERE customer_id = 1;
commit;