/*
Stored Procedure: Load Bronze Layer (Source -> Bronze)

Script Purpose:
	This is stroed procedure load data into the 'bronze' schema form external CSV
	files. It performs the following actions: 
	- Truncates the bronze tables before loading data 
	- Uses the 'BULK INSERT' command to load data from csv files to bronze tables. 

Parameters: 
	None
		This stored procedure does not acceppt any parameters or return any values. 

Used Example: 
	EXEC bronze.load_bronze

Note: 
	The BULK INSERT paths point to my local datasets paths. 
	Change them to the folders where you saved the datasets. 

*/
CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN
    DECLARE @start_time AS DATETIME, @end_time AS DATETIME, @batch_start_time AS DATETIME, @batch_end_time AS DATETIME;
    BEGIN TRY
        PRINT ('================================================');
        PRINT ('Loading CRM Tables');
        PRINT ('================================================');
        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.crm_cust_info;
        BULK INSERT bronze.crm_cust_info FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_crm\cust_info.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';

        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.crm_prd_info;
        BULK INSERT bronze.crm_prd_info FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_crm\prd_info.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';

        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.crm_sales_details;
        BULK INSERT bronze.crm_sales_details FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_crm\sales_details.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
        

        PRINT ('================================================');
        PRINT ('Loading ERP Tables');
        PRINT ('================================================');
        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.erp_loc_a101;
        BULK INSERT bronze.erp_loc_a101 FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_erp\LOC_A101.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
        
        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.erp_cust_az12;
        BULK INSERT bronze.erp_cust_az12 FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_erp\CUST_AZ12.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
        
        SET @start_time = GETDATE();
        TRUNCATE TABLE bronze.erp_px_cat_g1v2;
        BULK INSERT bronze.erp_px_cat_g1v2 FROM 'C:\Users\sekal\Documents\Amahoro\AWS_dWH_Practice\sql-data-warehouse-project\01_datasets\source_erp\PX_CAT_G1V2.csv'
            WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
    END TRY
    BEGIN CATCH
        PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
        PRINT 'Error Message:' + ERROR_MESSAGE();
        PRINT 'Error Number:' + CAST (ERROR_NUMBER() AS NVARCHAR);
        PRINT 'Error state:' + CAST (ERROR_STATE() AS NVARCHAR);
    END CATCH
END




