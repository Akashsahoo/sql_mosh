DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
    
    SELECT * FROM sql_invoicing.clients;

END$$

DELIMITER ;