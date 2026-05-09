# Retail Sales Analysis Using SQL

## Project Summary

This project presents an end-to-end analysis of retail transaction data using SQL. The objective is to extract actionable business insights from raw sales data by analyzing customer behavior, product performance, sales trends, and operational patterns.

The analysis is designed to simulate real-world business reporting scenarios used in data analyst roles.

---

## Business Objective

The primary goals of this analysis are:

* Understand overall sales performance
* Identify top-performing products and categories
* Analyze customer purchasing behavior
* Evaluate regional and temporal sales trends
* Segment customers based on contribution to revenue

---

## Dataset Overview

* Table: retail_sales
* Records: ~2000+ transactions
* Key Attributes:

  * transaction_id
  * sale_date
  * sale_time
  * customer_id
  * gender
  * age
  * category
  * quantity
  * price_per_unit
  * cogs
  * total_sale

---

## Data Preparation

SQL-based data cleaning was performed prior to analysis:

* Identified missing values across key attributes
* Removed incomplete records to ensure data quality
* Validated consistency of numeric and date fields

---

## Key Performance Indicators (KPIs)

The following KPIs were derived from SQL analysis:

* Total Revenue Generated
* Total Number of Transactions
* Unique Customers Count
* Average Order Value
* Top 5 Customers by Revenue
* Best Performing Product Category
* Monthly Sales Performance
* Peak Sales Time Segment

---

## Business Analysis Performed

### 1. Sales Performance Analysis

* Total sales by category
* High-value transactions analysis
* Average sales trends

### 2. Customer Analysis

* Top customers by total spend
* Customers exceeding average purchase value
* Customers purchasing across multiple categories
* First purchase tracking per customer

### 3. Product & Category Analysis

* Category-wise revenue contribution
* Customer distribution across categories
* Product performance comparison

### 4. Time-Based Analysis

* Monthly sales trend analysis
* Best-performing month per year
* Shift-wise sales distribution (Morning, Afternoon, Evening)
* Running total sales over time

### 5. Advanced SQL Analysis

* Customer ranking using RANK() function
* Second highest transaction using DENSE_RANK()
* Sales segmentation using CASE statements
* Above-average customer filtering using subqueries

---

## Key Insights

* Revenue is concentrated among a small group of high-value customers
* Certain product categories consistently generate higher sales
* Sales exhibit clear temporal patterns across months and time shifts
* Majority of revenue is driven by repeat customers
* Seasonal variations significantly impact overall sales performance

---

## SQL Concepts Demonstrated

* Aggregation functions (SUM, AVG, COUNT)
* GROUP BY and HAVING clauses
* JOIN operations (if applicable in extensions)
* Subqueries and nested queries
* Common Table Expressions (CTEs)
* Window functions (RANK, DENSE_RANK)
* CASE WHEN logic for segmentation
* Date and time functions (EXTRACT)

---

## Business Impact

This analysis can support business decision-making in the following areas:

* Inventory optimization based on demand patterns
* Customer segmentation for targeted marketing
* Identification of high-revenue products and categories
* Sales forecasting based on historical trends
* Operational improvements through time-based analysis

---

## Project Structure

retail-sales-sql-analysis/
├── retail-sales-analysis.sql
├── retail-sales-dataset.xlsx
├── README.md

---

## Conclusion

This project demonstrates the ability to transform raw retail transaction data into structured business insights using SQL. It reflects practical skills in data extraction, transformation, and analysis, aligned with real-world data analyst responsibilities.

---

## Author

Ayush Gupta
Aspiring Data Analyst
