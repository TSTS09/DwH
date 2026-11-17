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



-- crm_prd_info__scripts

-- Check For NUlls or Dplicates in primar Key
-- Expectation: No Result
SELECT   prd_id,
         COUNT(*)
FROM     bronze.crm_prd_info
GROUP BY prd_id
HAVING   COUNT(*) > 1
         OR prd_id IS NULL;

-- Seperate Product keys into subsomponnents and replace the seprator with Underscore 
SELECT prd_id,
       prd_key,
       REPLACE (
           SUBSTRING (
               prd_key,
               1,
               5
           ),
           '-',
           '_'
       ) AS cat_id,
       SUBSTRING (
           prd_key,
           7,
           LEN (prd_key)
       ) AS prd_key,
       prd_nm,
       prd_cost,
       prd_line,
       prd_start_dt,
       prd_end_dt
FROM   bronze.crm_prd_info;

-- Checking categories matches accros tables 
-- Expectation: No results
-- cat_id && id from product categories table 
SELECT prd_id,
       prd_key,
       REPLACE (
           SUBSTRING (
               prd_key,
               1,
               5
           ),
           '-',
           '_'
       ) AS cat_id,
       prd_nm,
       prd_cost,
       prd_line,
       prd_start_dt,
       prd_end_dt
FROM   bronze.crm_prd_info
WHERE  REPLACE (
           SUBSTRING (
               prd_key,
               1,
               5
           ),
           '-',
           '_'
       ) NOT IN (SELECT DISTINCT id
                 FROM   bronze.erp_px_cat_g1v2);

-- prd_keys && order ids from order and sales table
SELECT prd_id,
       prd_key,
       REPLACE (
           SUBSTRING (
               prd_key,
               1,
               5
           ),
           '-',
           '_'
       ) AS cat_id,
       SUBSTRING (
           prd_key,
           7,
           LEN (prd_key)
       ) AS prd_key,
       prd_nm,
       prd_cost,
       prd_line,
       prd_start_dt,
       prd_end_dt
FROM   bronze.crm_prd_info
WHERE  SUBSTRING (
           prd_key,
           7,
           LEN (prd_key)
       ) NOT IN (SELECT sls_prd_key
                 FROM   bronze.crm_sales_details);

--- Check for Unwanted Spaces
-- Expectations: No results 
SELECT prd_nm
FROM   bronze.crm_prd_info
WHERE  prd_nm != TRIM(prd_nm);

--- Check for NULLs or Negative Numbers 
-- Expectations 
SELECT prd_cost
FROM   bronze.crm_prd_info
WHERE  prd_cost < 0
       OR prd_cost IS NULL;

-- Data Stansardization & Consistency 
SELECT DISTINCT prd_line
FROM   bronze.crm_prd_info;

--Check for Invalid Date Orders
SELECT *
FROM   bronze.crm_prd_info
WHERE  prd_end_dt < prd_start_dt;

-- Specific time frame transformation
SELECT prd_id,
       prd_key,
       prd_nm,
       prd_start_dt,
       prd_end_dt,
       LEAD(prd_start_dt) OVER (PARTITION BY prd_key ORDER BY prd_start_dt) - 1 AS prd_end_dt_test
FROM   bronze.crm_prd_info
WHERE  prd_key IN (
    'AC-HE-HL-U509-R',
    'AC-HE-HL-U509'
);