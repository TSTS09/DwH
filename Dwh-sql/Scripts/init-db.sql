/*

======================================================
Create Database and Schemas
======================================================
Script Purpose:
This scripts create a new database named 'DataWarehouse' after checking if it already exists. If the database exist, its dropped and recreated. Additionally, the scrips sets up three schemas and withing the database: 'bronze', 'silver' and 'gold'. 

Warning: 
Running this script will drop the entire "DataWarehouse" database if it exist. All the data in the database will be permanently deleted. Proceed with Cautiono and ensure proper backups before runing this script. 

*/
USE master;

GO
-- Drop and recreate datawarehouse 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse
END;

GO
-- Create datawarehouse database 
CREATE DATABASE DataWarehouse;

GO
-- Use data warehouse 
USE DataWarehouse:
GO
-- create the schmas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;