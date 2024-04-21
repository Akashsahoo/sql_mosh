USE sql_store;
SELECT * FROM
customers 
WHERE last_name REGEXP '^field';
-- ^ begining
-- $ end
-- | logical or 
-- [abcd]
-- [a-h]