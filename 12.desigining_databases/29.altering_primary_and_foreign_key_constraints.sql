ALTER TABLE orders 
	ADD PRIMARY KEY (order_id),
    DROP PRIMARY KEY,
    DROP FOREIGN KEY fk_orders_customers, -- orders_ibfk_1,
    ADD FOREIGN KEY fk_orders_customers (customer_id)
      REFERENCES customers (customer_id)
      ON UPDATE CASCADE
      ON DELETE NO ACTION;