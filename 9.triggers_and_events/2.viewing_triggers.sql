USE sql_invoicing;

SHOW TRIGGERS ;

SHOW TRIGGERS LIKE 'payments%';

-- convention
-- payments_after_insert
-- tablename__after/before__insert/update/delete;