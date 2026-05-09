# Retail Sales SQL Analysis

## Overview
This project analyzes retail sales data using SQL to understand customer behavior, product performance, and sales trends.  
The analysis was performed using PostgreSQL and includes data cleaning, exploratory analysis, and business-focused SQL queries.
Analyzed 2000+ retail transaction records to extract meaningful business insights.
---

## Tools Used
- PostgreSQL
- SQL
- pgAdmin

---

## Dataset Details
The dataset contains retail transaction records with the following columns:
- Transaction ID
- Sale Date
- Sale Time
- Customer ID
- Gender
- Age
- Category
- Quantity
- Price Per Unit
- COGS
- Total Sale

---

## Data Cleaning
The dataset was cleaned before analysis by:
- Checking for NULL values
- Removing incomplete records
- Validating cleaned data

---

## Analysis Performed

### Sales & Customer Analysis
- Sales made on a particular date
- Transactions from the Clothing category in November 2022
- Transactions where total sales exceeded 1000
- Top 5 customers based on total sales
- Customers with above-average spending

### Category Analysis
- Total sales by category
- Unique customers in each category
- Customers purchasing from multiple categories

### Time-Based Analysis
- Best-selling month in each year
- Shift-wise sales analysis
- Running total sales calculation

### Advanced SQL Queries
- Customer ranking using `RANK()`
- Second highest sales using `DENSE_RANK()`
- First purchase date of each customer
- Sales performance categorization using `CASE WHEN`

---

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- Aggregate Functions
- CASE WHEN
- CTEs
- Subqueries
- Window Functions
- RANK()
- DENSE_RANK()

---

## Project Structure

```text
retail-sales-sql-analysis/
│
├── README.md
├── retail-sales-analysis.sql
├── retail-sales-dataset.xlsx
```

---

## Author
Ayush Gupta  
Aspiring Data Analyst
