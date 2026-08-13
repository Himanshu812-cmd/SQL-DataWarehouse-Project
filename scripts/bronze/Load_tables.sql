/*
===============================
Loading Bronze Layer ...
===============================
*/

/*
-------------------------------
Loading CRM Tables
-------------------------------
*/

SET @batch_start_time = NOW();

-- Loading Data Into: bronze_crm_cust_info
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;

-- Loading Data Into: bronze_crm_prd_info
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;

-- Loading Data Into: bronze_crm_sales_details
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
INTO TABLE bronze_crm_sales_details
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;
/*
-------------------------------
Loading ERP Tables
-------------------------------
*/

-- Loading Data Into: bronze_erp_cust_az12
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_erp/cust_az12.csv'
INTO TABLE bronze_erp_cust_az12
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;

-- Loading Data Into: bronze_erp_loc_a101 
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_erp/loc_a101.csv'
INTO TABLE bronze_erp_loc_a101
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;

-- Loading Data Into: bronze_erp_px_cat_g1v2
SET @start_time = NOW();
LOAD DATA LOCAL INFILE
'C:/Users/Himanshu/OneDrive/Desktop/Coding_HOME/SQL/sql-data-warehouse-project/datasets/source_erp/px_cat_g1v2.csv'
INTO TABLE bronze_erp_px_cat_g1v2
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
SET @end_time = NOW();
SELECT CONCAT('>> Load Duration: ', TIMESTAMPDIFF(SECOND, @start_time, @end_time), 'seconds') AS Loading_Time;
SET @batch_end_time = NOW();

-- Retreiving Total Load Time for bronze layer
SELECT CONCAT('>> Total Bronze Load: ',TIMESTAMPDIFF(SECOND,@batch_start_time,@batch_end_time), ' seconds') AS Total_Load;
