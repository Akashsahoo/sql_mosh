USE sql_store;
SELECT 
sh.name AS shipper,
p.name AS product
FROM shippers sh, products p
ORDER BY sh.name