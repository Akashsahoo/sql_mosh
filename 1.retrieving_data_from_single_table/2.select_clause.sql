USE sql_store;
SELECT last_name,
first_name,points,
(points + 10)*100 AS 'discount factor'
FROM customers