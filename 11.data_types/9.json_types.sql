USE sql_store;
UPDATE products
SET properties = '
{
"dimensions":[1,2,3],
"weight":10,
"manufactor":{"name" : "sony"}
} 
'
WHERE product_id=1