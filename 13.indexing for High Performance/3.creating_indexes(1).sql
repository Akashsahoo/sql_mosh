-- DROP INDEX idx_state_points ON customers;

-- SHOW STATUS LIKE 'last_query_cost';

USE sql_store2;
EXPLAIN SELECT first_name  FROM customers WHERE state='CA';

USE sql_store2;
CREATE INDEX idx_state ON customers (state);