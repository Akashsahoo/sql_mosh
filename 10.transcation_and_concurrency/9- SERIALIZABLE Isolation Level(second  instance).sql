USE sql_store;
START TRANSACTION;
UPDATE customers SET state='CO'  WHERE customer_id = 3;
COMMIT;