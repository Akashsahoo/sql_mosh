USE sql_store2;

CREATE INDEX idx_state_points ON customers (state,points);
EXPLAIN SELECT customer_id FROM customers
WHERE state='CA' AND points >500;

-- composite indexes is better than single column index
