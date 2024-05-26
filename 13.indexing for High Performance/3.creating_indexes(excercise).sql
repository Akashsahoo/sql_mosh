USE sql_store2;
EXPLAIN SELECT customer_id FROM customers WHERE points>500;


CREATE INDEX idx_points ON customers (points);