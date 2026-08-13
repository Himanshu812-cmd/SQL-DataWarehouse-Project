/*
===================================================================
DDL Script: Create Bronze Tables
===================================================================
Script Purpose: 
    This script tables for the 'bronze' schema.
    Run this script to redefine the DDL structure of 'bronze' Tables
====================================================================
*/

-- Creating Table: bronze_crm_cust_info

CREATE TABLE bronze_crm_cust_info(
cst_id INT PRIMARY KEY,
cst_key INT NOT NULL,
cst_firstname VARCHAR(30) NOT NULL,
cst_lastname VARCHAR(30) NOT NULL,
cst_marital_status ENUM('M','S') NOT NULL,
cst_gndr ENUM('M','F','Other')NOT NULL,
cst_create_date DATE NOT NULL
);

-- Creating Table: bronze_crm_prd_info

CREATE TABLE bronze_crm_prd_info(
prd_id INT PRIMARY KEY,
prd_key INT,
prd_nm VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(1),
prd_start_dt DATE,
prd_end_dt date
);

-- Creating Table: bronze_crm_sales_details

CREATE TABLE bronze_crm_sales_details(
sls_ord_num VARCHAR(30),
sls_prd_key VARCHAR(30),
sls_cust_id INT ,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

-- Creating Table: bronze_erp_cust_az12

CREATE TABLE bronze_erp_cust_az12(
cid VARCHAR(30),
bdate DATE,
gen VARCHAR(30)
);

-- Creating Table: bronze_erp_loc_a101

CREATE TABLE bronze_erp_loc_a101(
cid VARCHAR(30),
cntry VARCHAR(30)
);

-- Creating Table: bronze_erp_px_cat_g1v2

CREATE TABLE bronze_erp_px_cat_g1v2(
id VARCHAR(30),
cat VARCHAR(30),
subcat VARCHAR(30),
maintanance VARCHAR(10)
);
