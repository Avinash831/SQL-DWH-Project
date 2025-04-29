/*
=========================
Create Database & Schemas
=========================
Purpose:
  This script creates a new database called 'DataWareHouse' after checking if it already exists.
  The database is dropped and recreated if it already exists.
  The script then sets up 3 schemas withing the database 'bronze', 'silver' & 'gold'.

Warning:
  Proceed with caution as the scirpt will drop the database 'DataWareHouse' if it exists, deleting
  all the data permanently. Ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWareHouse' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END
GO

-- Create database 'DataWareHouse'
CREATE DATABASE DataWareHouse
GO
USE DataWareHouse;
GO

-- Create Schemas [These are the 3 Layers of the Database]
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
