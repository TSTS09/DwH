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
        INSERT INTO
            silver.crm_cust_info (
                cst_id,
                cst_key,
                cst_firstname,
                cst_lastname,
                cst_marital_status,
                cst_gndr,
                cst_create_date
            )
        SELECT
            cst_id,
            cst_key,
            TRIM(cst_firstname) AS cst_firstname,
            TRIM(cst_lastname) AS cst_lastname,
            CASE
                WHEN UPPER(TRIM(cst_material_status)) = 'S' THEN 'Single'
                WHEN UPPER(TRIM(cst_material_status)) = 'M' THEN 'Married'
                ELSE 'n/a)'
            END cst_material_status, --Normalise marital status values to readable format
            CASE
                WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
                WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
                ELSE 'n/a)'
            END cst_gndr, --Normalise gender values to readable format
            cst_create_date
        FROM (
                SELECT *, ROW_NUMBER() OVER (
                        PARTITION BY
                            cst_id
                        ORDER BY cst_create_date DESC
                    ) AS flag_last
                FROM bronze.crm_cust_info
                WHERE
                    cst_id IS NOT NULL
            ) AS t
        WHERE
            flag_last = 1;

        SET @end_time = GETDATE ();

        PRINT '>> Load Duration: ' + CAST(
            DATEDIFF(
                SECOND,
                @start_time,
                @end_time
            ) AS NVARCHAR
        ) + ' seconds';

        PRINT '>> -------------';

        ---------------- crm-prd-info__scripts
        set @start_time = GETDATE();
        IF OBJECT_ID ('silver.crm_prd_info', 'U') IS NOT NULL
        DROP TABLE silver.crm_prd_info;

        CREATE TABLE silver.crm_prd_info (
            prd_id INT,
            cat_id NVARCHAR (50),
            prd_key NVARCHAR (50),
            prd_nm NVARCHAR (50),
            prd_cost INT,
            prd_line NVARCHAR (50),
            prd_start_dt DATE,
            prd_end_dt DATE,
            dwh_create_date DATETIME2 DEFAULT GETDATE ()
        );
        PRINT '>> Truncating Table: silver.crm_prd_info';
        TRUNCATE TABLE silver.crm_prd_info;
        PRINT '>> Inserting Data Into: silver.crm_prd_info';

        INSERT INTO
            silver.crm_prd_info (
                prd_id,
                cat_id,
                prd_key,
                prd_nm,
                prd_cost,
                prd_line,
                prd_start_dt,
                prd_end_dt
            )
        SELECT prd_id,
        REPLACE (
                SUBSTRING(prd_key, 1, 5),
                '-',
                '_'
            ) AS cat_id, --Extract category ID from product key and replace hyphens with underscores
            SUBSTRING(prd_key, 7, LEN (prd_key)) AS prd_key, -- ADD: Extract product key from the full product key by removing the category prefix
            prd_nm,
            ISNULL(prd_cost, 0) AS prd_cost,
            CASE
                WHEN UPPER(TRIM(prd_line)) = 'M' THEN 'MOUNTAIN'
                WHEN UPPER(TRIM(prd_line)) = 'R' THEN 'ROAD'
                WHEN UPPER(TRIM(prd_line)) = 'S' THEN 'Other Sales'
                WHEN UPPER(TRIM(prd_line)) = 'T' THEN 'Touring'
                ELSE 'n/a'
            END AS prd_line,  -- Map product line codes to descriptive values
            CAST(prd_start_dt AS DATE) AS prd_start_dt,
            CAST(
                LEAD(prd_start_dt) OVER (
                    PARTITION BY
                        prd_key
                    ORDER BY prd_start_dt
                ) - 1 AS DATE
            ) AS prd_end_dt  -- Calculate end date as one day before the next start date(Data enrichment)
        FROM bronze.crm_prd_info
        -- WHERE
        --     SUBSTRING(prd_key, 7, LEN (prd_key)) NOT IN(
        --         SELECT sls_prd_key
        --         FROM bronze.crm_sales_details
        --     );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
    