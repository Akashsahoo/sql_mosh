DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN
    
    SELECT * FROM sql_invoicing.invoices_with_balance
    WHERE balance >0 ;

END$$

DELIMITER ;