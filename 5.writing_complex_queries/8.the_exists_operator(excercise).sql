USE sql_store;

-- apporach 1
SELECT *
FROM products
WHERE product_id  NOT IN (
SELECT DISTINCT product_id from 
order_items 
);

-- apporach 2
SELECT * 
FROM products p
WHERE NOT EXISTS (
SELECT product_id FROM
order_items WHERE product_id = p.product_id );