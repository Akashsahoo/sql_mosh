USE sql_store;
UPDATE products
SET properties = JSON_SET(
properties,
'$.weight',20,
'$.age',10

)
WHERE product_id=1;


--  remove some property
USE sql_store;
UPDATE products
SET properties = JSON_REMOVE(
properties,
'$.age'
)
WHERE product_id=1;