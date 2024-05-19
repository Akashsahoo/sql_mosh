USE sql_store;
SELECT 
    order_id,
    IFNULL(shipper_id,'not assigned') AS shipper_id
FROM orders;



-- coalesce return first not null value
SELECT 
    order_id,
    COALESCE(shipper_id,comments,'not assigned') AS shipper_id
FROM orders;
   