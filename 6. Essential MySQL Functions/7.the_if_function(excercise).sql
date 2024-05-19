USE sql_store;
SELECT product_id,
name,
COUNT(*) AS orders,
IF(COUNT(*)>1,'many times','once') AS ordered
FROM products
JOIN order_items USING(product_id)
GROUP BY product_id , name

-- '1', 'Foam Dinner Plate', '3', 'many times'
-- '2', 'Pork - Bacon,back Peameal', '2', 'many times'
-- '3', 'Lettuce - Romaine, Heart', '4', 'many times'
-- '4', 'Brocolinni - Gaylan, Chinese', '2', 'many times'
-- '5', 'Sauce - Ranch Dressing', '2', 'many times'
-- '6', 'Petit Baguette', '2', 'many times'
-- '8', 'Island Oasis - Raspberry', '1', 'once'
-- '9', 'Longan', '1', 'once'
-- '10', 'Broom - Push', '1', 'once'
