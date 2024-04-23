USE sql_store;
SELECT * , 'Bronze' AS type 
FROM customers WHERE points <1000
UNION
SELECT * , 'Silver' AS type
FROM customers WHERE points BETWEEN 1000 AND 3000
UNION
SELECT * , 'Gold' AS type 
FROM customers WHERE points >3000
