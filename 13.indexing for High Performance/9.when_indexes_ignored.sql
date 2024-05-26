USE sql_store2;

EXPLAIN  
   SELECT  customer_id 
   FROM customers WHERE state = 'CA' OR points>500;
   
   
-- best way
CREATE  INDEX  idx_points  ON  customers (points);
EXPLAIN  SELECT customer_id
FROM customers WHERE state = 'CA'
UNION
SELECT customer_id
FROM customers WHERE points > 500;
