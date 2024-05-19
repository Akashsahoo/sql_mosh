SELECT DATE_ADD(NOW(),INTERVAL 1 DAY);
-- '2024-05-11 02:00:25'

SELECT DATE_ADD(NOW(),INTERVAL -1 YEAR);
-- '2023-05-10 02:00:44'

SELECT DATE_SUB(NOW(),INTERVAL 1 YEAR);
-- '2023-05-10 02:01:02'

SELECT DATEDIFF('2019-03-01', '2019-02-01');
-- '28'

SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02') ;
-- '-120'