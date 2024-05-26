USE sql_store2;
SHOW INDEXES IN customers;
EXPLAIN SELECT customer_id FROM customers
WHERE state='CA' AND points > 500;
