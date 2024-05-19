USE sql_store;
SELECT CONCAT(first_name,' ',last_name) AS full_name ,points,
CASE 
    WHEN points>=3000 THEN 'Gold'
    WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
    ELSE 'Bronze'
END AS category
FROM customers


-- 'Babara MacCaffrey', '2273', 'Silver'
-- 'Ines Brushfield', '947', 'Bronze'
-- 'Freddi Boagey', '2967', 'Silver'
-- 'Ambur Roseburgh', '457', 'Bronze'
-- 'Clemmie Betchley', '3675', 'Gold'
-- 'Elka Twiddell', '3073', 'Gold'
-- 'Ilene Dowson', '1672', 'Bronze'
-- 'Thacher Naseby', '205', 'Bronze'
-- 'Romola Rumgay', '1486', 'Bronze'
-- 'Levy Mynett', '796', 'Bronze'
