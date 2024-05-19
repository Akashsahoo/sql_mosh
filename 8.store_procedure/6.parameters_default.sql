USE sql_invoicing;
DROP PROCEDURE IF EXISTS get_clients_by_state_default ;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state_default (
state CHAR(2))
BEGIN
   IF state IS NULL THEN
	  SELECT * FROM clients;
   ELSE
      SELECT * FROM clients c
	  WHERE c.state = state;
   END IF ;
END $$
DELIMITER ;
  
  
