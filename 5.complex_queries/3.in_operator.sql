USE sql_store;
SELECT * FROM sql_store.order_items;

SELECT * FROM products 
WHERE product_id NOT IN (
SELECT DISTINCT product_id FROM order_items
)
