-- to see transaction isolation level
SHOW VARIABLES LIKE 'transaction_isolation';

-- to set isolation level globally
SET GLOBAL TRANSACTION ISOLATION LEVEL  SERIALIZABLE;


-- to set isolation level for current session
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
