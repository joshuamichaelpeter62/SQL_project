/ *
==============================================
Create databases and schemas
==============================================
 Purpose       :
       To prepare a clean and structured environment for building
       a Data Warehouse ETL pipeline using the Medallion Architecture.

   Warning       :
       This script will permanently DELETE the existing database 
       'Data_exploration' if it exists.
       All data inside the database will be LOST.
       Ensure you have backups before running this script.
Usage        :
       Run this script in SQL Server Management Studio (SSMS)
       before loading or processing any data.

============================================================ */

-- Switch to the master database to perform database-level operations
use master
go 

-- ============================================
-- Drop database if it already exists
-- ============================================

-- Check if the database 'Data_exploration' exists
if exists (select name from sys.databases where name ='Data_exploration')
-- Set database to SINGLE_USER mode to disconnect all active users
begin
	alter database Data_exploration set single_user with rollback immediate
	 -- Drop (delete) the existing database
	drop database Data_exploration
end
go

-- ============================================
-- Create new database
-- ============================================
-- Create a fresh database for the project
create database Data_exploration
go

-- ============================================
-- Use the newly created database
-- ============================================

-- Switch context to the Data_exploration database
use Data_exploration
go

-- ============================================
-- Create schemas (Bronze, Silver, Gold)
-- ============================================

-- Create Gold schema if it does not already exist
-- Gold layer is used for analytics-ready data
if not exists (select 1 from sys.schemas where name = 'Gold')
	Exec('create schema Gold')
go

-- Create Silver schema if it does not already exist
-- Silver layer stores cleaned and transformed data
if not exists (select 1 from sys.schemas where name = 'Silver')
	Exec('create schema Silver')
go

-- Create Bronze schema if it does not already exist
-- Bronze layer stores raw (uncleaned) data
if not exists (select 1 from sys.schemas where name = 'Bronze')
	Exec('create schema Bronze')
go

-- ============================================
-- Verify schemas
-- ============================================

-- List all schemas in the current database
select name from sys.schemas
go

-- ============================================
-- Check tables in Bronze schema
-- ============================================

-- View all tables that belong to the Bronze layer
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Bronze';
go

-- ============================================
-- Check tables in Silver schema
-- ============================================

-- View all tables that belong to the Silver layer
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Silver';
go

-- ============================================
-- Check tables in Gold schema
-- ============================================

-- View all tables that belong to the Gold layer
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Gold';
