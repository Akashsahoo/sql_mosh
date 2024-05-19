select length('sky');
-- 3

select upper('sky');
-- SKY

select lower('Sky');
-- sky
select ltrim('   Sky ');
-- 'Sky '
select rtrim('  Sky ');
-- '  Sky'
select trim('  Sky ');
-- 'Sky'
select left('kindgarten',4);
-- kind

select right('kindgarten',6);
-- garten

select substring('kindgarten',3,5);
-- ndgar

select locate('n','kindgarten');
-- 3


select replace('kindgarten','garten','garden');
-- kindgarden

select concat('first','last');
-- firstlast
