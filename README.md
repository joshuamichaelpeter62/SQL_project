# this is my data warehouse analytic project using SQL server

-- *Welcome to "dataware and analytic project" repository*

# Objective
This project focuses on building a simple Data Warehouse ETL pipeline using SQL Server.
The goal is to transform raw, dirty data into clean, structured data ready for analysis.

#Specification 
-- **Data Source**: data from CSV file
-- **Data Quality**: clean and resolve data quality issue prior to analysis
-- **Intergration**: Make a data source user friendly data model designed for analytical queries
-- **Documentation** provide clear documentation of the data model

# Objective
--- **Sales performance by transforming raw transactional data into clean, structured data for reporting and decision-making**.
--- **Product performance**
--- **Sale trend**

# project license
--- **This license is under [MIT license]**

# Architecture
The project follows a Medallion Architecture:
  1. Bronze Layer → Raw data (dirty, inconsistent)
  2. Silver Layer → Cleaned and transformed data
  3. Gold Layer (optional) → Analytics-ready data

# Key Features
Data cleaning and transformation using SQL
Handling:
  1. Missing values (NULL)
  2. Invalid values (negative quantity, sales)
  3. Incorrect data types (VARCHAR → numeric)
  4. Invalid dates
  5. Duplicates
Data validation using TRY_CAST and TRY_CONVERT

Data Cleaning Steps
  1. Trimmed text fields (names, departments)
  2. Converted numeric fields safely using TRY_CAST
  3. Replaced invalid values with NULL
  4. Imputed missing values using averages
  5. Standardized date format using TRY_CONVERT
  6. Removed duplicate records

# project license
--- **This license is under [MIT license]

# About me
i am Joshua Michael Peter, studying Data science at kigali independent Univeristy (Rwanda). This is my first project in SQL data warehouse
