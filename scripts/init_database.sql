/*
============================================
  Create Database and Schemas
============================================

Script Purpose:
    This Script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionaly, the script sets up three schemas
    within the database: 'bronze', 'silver' and 'gold'.

WARNING:
    Running the script with drop the entire 'DataWarehouse' Database if it exists.
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop the Database if it already exists
DROP DATABASE IF EXISTS DataWarehouse;

-- Creating the database named 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
