USE sql_store;
SELECT * FROM
customers 
WHERE last_name REGEXP '[a-h]e';
-- ae or be or ce or de or ee or ge or he