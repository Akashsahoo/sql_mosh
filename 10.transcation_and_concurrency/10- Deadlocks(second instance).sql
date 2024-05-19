use sql_store;
start transaction;
update orders set status = 1 where  order_id = 1;
update customers set state = 'VA' where customer_id = 1;
commit;