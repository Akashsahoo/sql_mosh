USE sql_store2;
SHOW INDEXES IN customers;

EXPLAIN SELECT  customer_id FROM customers ORDER BY state DESC,points DESC;
-- full table scan
EXPLAIN SELECT customer_id  FROM customers  ORDER BY first_name;

SHOW STATUS LIKE 'last_query_cost';

-- rules to sort data
-- (a,b) index
-- a
-- a,b
-- a DESC , b DESC

-- but not used (FULL TABLE SCAN INDEX NOT USED)
-- a,c,b
-- b
-- a,b DESC
-- a DESC,b
