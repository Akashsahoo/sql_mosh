-- {
-- "dimensions":[1,2,3],
-- "weight":10,
-- "manufactor":{"name" : "sony"}
-- } 

USE sql_store;
SELECT product_id,
-- JSON_EXTRACT(properties,'$.weight') AS weight
properties -> '$.weight' AS weight,
properties -> '$.dimensions[0]' AS dimensions,
properties -> '$.manufactor.name' AS name,
-- To extract string
properties ->> '$.manufactor.name' AS name2

FROM products