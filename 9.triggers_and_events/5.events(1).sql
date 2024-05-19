USE sql_invoicing;
DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
   -- at '2019-05-01'
   EVERY 1 YEAR STARTS '2019-01-01' END '2029-01-01'
DO 
   BEGIN
     DELETE FROM payment_audit
     WHERE action_date < NOW() - INTERVAL 1 YEAR ;
END $$

DELIMITER ;   