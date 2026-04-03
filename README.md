# Data Warehouse & Analytics Project (SQL Server)

## Overview

Welcome to the **Data Warehouse and Analytics Project** repository.

This project demonstrates how to build a simple **ETL pipeline using SQL Server**, transforming raw, dirty data into clean, structured data ready for analysis and reporting.

---

## Objective

The objective of this project is to design and implement a data warehouse solution that enables business insights from transactional sales data.

Key goals:

* Transform raw data into a clean and structured format
* Improve data quality and consistency
* Support analysis of:

  * Sales performance
  * Product performance
  * Sales trends over time

---

## Specifications

* **Data Source**: CSV files
* **Data Quality**: Data is cleaned and validated before analysis
* **Integration**: Structured data model optimized for analytical queries
* **Documentation**: Clear explanation of data model and transformations

---

## Architecture

This project follows the **Medallion Architecture**:

1. **Bronze Layer** → Raw data (dirty, inconsistent)
2. **Silver Layer** → Cleaned and transformed data
3. **Gold Layer (Optional)** → Analytics-ready data

---

## Key Features

* Data cleaning and transformation using SQL Server
* Handling of:

  * Missing values (NULL)
  * Invalid values (negative quantity, sales)
  * Incorrect data types (VARCHAR → numeric)
  * Invalid dates
  * Duplicate records
* Data validation using:

  * `TRY_CAST`
  * `TRY_CONVERT`

---

## Data Cleaning Process

* Trimmed text fields (e.g., names, departments)
* Converted numeric fields using `TRY_CAST`
* Replaced invalid values with NULL
* Imputed missing values using averages
* Standardized date formats using `TRY_CONVERT`
* Removed duplicate records

---

## Outcome

* Clean and reliable dataset
* Ready for analytics and reporting
* Can be used with BI tools such as **Tableau** or **Power BI**

---

## License

This project is licensed under the **MIT License**.

---

## About Me

My name is **Joshua Michael Peter**, a Data Science student at **Kigali Independent University (Rwanda)**.

This is my first Data Warehouse project using SQL Server, where I applied data cleaning, ETL design, and data modeling concepts.
