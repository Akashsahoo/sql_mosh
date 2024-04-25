USE sql_store;
UPDATE customers SET points = points + 50 
where birth_date < '1990-01-01'