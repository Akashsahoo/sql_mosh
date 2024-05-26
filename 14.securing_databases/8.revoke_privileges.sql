-- give moop_app create view privileges
GRANT CREATE VIEW
ON sql_store.*
TO moon_app;


-- REVOKE
REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;
