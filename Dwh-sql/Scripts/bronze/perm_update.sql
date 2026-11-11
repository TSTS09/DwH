/*
============================================
Fix: Changing file user permissions

Script Purpose: 
Updating database access permission from single user to multi-user. 

Important:
This will terminates existing connections to the database and rolls back their active transactions. Make sure this won't interrupt important work.

============================================
*/

USE master; 

GO 

SELECT
    d.name,
    d.user_access_desc,
    d.state_desc,
    s.session_id,
    s.login_name,
    s.host_name,
    s.program_name
FROM sys.databases d
LEFT JOIN sys.dm_exec_sessions s
    ON s.database_id = d.database_id
WHERE d.name = 'DataWarehouse';

USE master;
GO

ALTER DATABASE [DataWarehouse]
SET MULTI_USER
WITH ROLLBACK IMMEDIATE;
GO
