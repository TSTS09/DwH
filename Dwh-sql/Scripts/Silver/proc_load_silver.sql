/*
===============================================
Stored Procedure: Load Silver layer (Bronze to Silver)
===============================================

Script Purpose:
    This script is designed to load data from the Bronze layer into the Silver layer of the Data Warehouse. 
    It performs necessary transformations and ensures that the data is structured according to the defined schema in the Silver layer.
    Action Performed: 
        - Truncates silver tables
        - Full load of data: Inserts transformed cleansed data from Bronze to Silver tables. 

parameters:
    None
        This Stored Procedure does not accept any parameters. It is designed to be executed as a standalone process for loading data into the Silver layer.

Usage Example:
    EXEC silver.load_silver;

*/

CREATE OR ALTER PROCEDURE silver.load_silver AS
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time  DATETIME, @batch_end_time DATETIME;
    BEGIN TRY 
        SET @batch_start_time = GETDATE();
         PRINT '================================================';
        PRINT 'Loading Silver Layer';
        PRINT '================================================';

        PRINT '------------------------------------------------';
        PRINT 'Loading CRM Tables';
        PRINT '------------------------------------------------';

        -- loading silver.crm_cust_info
        set @start_time = GETDATE(); 
        PRINT 'TRUNCATING TABLE silver.crm_cust_info';
        TRUNCATE TABLE silver.crm_cust_info;
        PRINT 'INSERTING DATA INTO silver.crm_cust_info';
        -- Transformation Scripts
-- crm_cust_info__scripts
-- Ranking the most updated ifnormation amongst duplicates and Trimmnig training spance
USE DataWarehouse;
GO
INSERT INTO silver.crm_cust_info (
    cst_id,
    cst_key,
    cst_firstname,
    cst_lastname,
    cst_material_status,
    cst_gndr,
    cst_create_date
)
SELECT cst_id,
       cst_key,
       TRIM(cst_firstname) AS cst_firstname,
       TRIM(cst_lastname) AS cst_lastname,
       CASE WHEN UPPER (
                     TRIM (cst_material_status)
                 ) = 'S' THEN 'Single' WHEN UPPER (
                                                TRIM (cst_material_status)
                                            ) = 'M' THEN 'Married' ELSE 'n/a)' END cst_material_status, --Normalise marital status values to readable format
       CASE WHEN UPPER (
                     TRIM (cst_gndr)
                 ) = 'F' THEN 'Female' WHEN UPPER (
                                                TRIM (cst_gndr)
                                            ) = 'M' THEN 'Male' ELSE 'n/a)' END cst_gndr,  --Normalise gender values to readable format
       cst_create_date
FROM   (SELECT *,
               ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) AS flag_last
        FROM   bronze.crm_cust_info
        WHERE  cst_id IS NOT NULL) AS t
WHERE  flag_last = 1;

SET @end_time = GETDATE();
  PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
PRINT '>> -------------';

