USE sql_store2;

CREATE INDEX idx_lastname_state ON customers (last_name,state);

CREATE INDEX idx_state_lastname ON customers (state,last_name);



EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA' AND last_name LIKE 'A%';
-- order matters in composite indexes

EXPLAIN SELECT customer_id FROM customers USE  INDEX (idx_state_lastname)
WHERE state = 'NY' AND last_name LIKE 'A';



DROP INDEX idx_lastname_state ON customers;