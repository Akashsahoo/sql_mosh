USE sql_store;
SELECT * 
FROM customers
WHERE first_name REGEXP 'elka|ambur';