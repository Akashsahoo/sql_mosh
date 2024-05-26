USE sql_store2;

EXPLAIN SELECT customer_id
FROM customers WHERE points+10>500;

-- best way
EXPLAIN SELECT customer_id
FROM customers WHERE points>500;