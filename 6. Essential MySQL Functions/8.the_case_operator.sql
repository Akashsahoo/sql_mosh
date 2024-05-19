USE sql_store;
SELECT 
       order_id,
       CASE 
		   WHEN YEAR(order_date) = YEAR(NOW())-5 THEN 'active'
           WHEN YEAR(order_date) = YEAR(NOW())-5 THEN 'last year'
           WHEN YEAR(order_date) < YEAR(now())-5 THEN 'archived'
           ELSE 'future'
	   END AS category
FROM  orders       

-- '1', 'active'
-- '2', 'archived'
-- '3', 'archived'
-- '4', 'archived'
-- '5', 'archived'
-- '6', 'archived'
-- '7', 'archived'
-- '8', 'archived'
-- '9', 'archived'
-- '10', 'archived'
