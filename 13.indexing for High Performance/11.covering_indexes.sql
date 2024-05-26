
USE sql_store2;

-- full table scan
EXPLAIN  SELECT  first_name FROM customers 
ORDER BY state;


-- covering index 
EXPLAIN  SELECT  custoer_id FROM customers 
ORDER BY state;

SHOW STATUS LIKE 'last_query_cost';

