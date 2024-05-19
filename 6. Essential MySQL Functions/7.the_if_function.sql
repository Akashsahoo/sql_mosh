
-- IF(exp1,first_statement,second_statement)
USE sql_store;
SELECT 
  order_id,
  order_date,
  IF(YEAR(order_date) = YEAR(NOW()) , 'Active','Archieved') AS category 
  FROM orders;