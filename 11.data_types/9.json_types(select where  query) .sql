USE sql_store;
SELECT product_id,
name,
properties ->> '$.manufactor.name' AS manufactor_name
FROM products
WHERE properties ->> '$.manufactor.name' = 'sony';