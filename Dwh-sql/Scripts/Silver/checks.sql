-- crm_cust_info__scripts



-- Check for Null and Duplicate values in primary keys 
-- Expectation: No Results
SELECT cst_id, COUNT(*) FROM bronze.crm_cust_info GROUP BY cst_id HAVING COUNT(*) >1 OR cst_id IS NULL;



--Check for Unwanted String Values
SELECT cst_firstname FROM bronze.crm_cust_info WHERE cst_firstname != TRIM(cst_firstname);
SELECT cst_lastname FROM bronze.crm_cust_info WHERE cst_lastname != TRIM(cst_lastname);
SELECT cst_material_status FROM bronze.crm_cust_info WHERE cst_material_status != TRIM(cst_material_status);
SELECT cst_gndr FROM bronze.crm_cust_info WHERE cst_gndr != TRIM(cst_gndr);

-- Data Standardization and Consistency 
SELECT DISTINCT cst_gndr FROM bronze.crm_cust_info;



-- In Silver
-- Check for Null and Duplicate values in primary keys 
-- Expectation: No Results
SELECT cst_id, COUNT(*) FROM silver.crm_cust_info GROUP BY cst_id HAVING COUNT(*) >1 OR cst_id IS NULL;



--Check for Unwanted String Values
SELECT cst_firstname FROM silver.crm_cust_info WHERE cst_firstname != TRIM(cst_firstname);
SELECT cst_lastname FROM silver.crm_cust_info WHERE cst_lastname != TRIM(cst_lastname);
SELECT cst_material_status FROM silver.crm_cust_info WHERE cst_material_status != TRIM(cst_material_status);
SELECT cst_gndr FROM silver.crm_cust_info WHERE cst_gndr != TRIM(cst_gndr);

-- Data Standardization and Consistency 
SELECT DISTINCT cst_gndr FROM silver.crm_cust_info;



-- #crm_prd_info__scripts

