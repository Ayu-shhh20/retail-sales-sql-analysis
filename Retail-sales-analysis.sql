-- RETAIL SALES ANALYSIS PROJECT


-- creating a table

CREATE TABLE retail_sales
            (
                transaction_id INT PRIMARY KEY,	
                sale_date DATE,	 
                sale_time TIME,	
                customer_id	INT,
                gender	VARCHAR(15),
                age	INT,
                category VARCHAR(15),	
                quantity	INT,
                price_per_unit FLOAT,	
                cogs	FLOAT,
                total_sale FLOAT
            );

-- importing data

-- retrieving data

SELECT * FROM retail_sales;

-- checking null values

SELECT * FROM retail_sales
WHERE transaction_id IS NULL
OR
sale_date IS NULL
OR
sale_time IS NULL
OR
Customer_id IS NULL
OR
gender IS NULL
OR
age IS NULL
OR 
category IS NULL
OR 
quantity IS NULL
OR 
price_per_unit IS NULL
OR 
cogs IS NULL
OR
total_sale IS NULL;

-- after this we got to know that there is 10 null values in age,3 nulls in quantity,price_per_unit,cogs,and total_sale

-- data cleaning / removing null values

DELETE FROM retail_sales
WHERE 
    transaction_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
	age IS NULL
	OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;

-- fetching cleaned data

SELECT * FROM retail_sales;

-- counting total rows

SELECT COUNT(*) FROM retail_sales;

-- data exploration

-- how many sales we have done till now

SELECT COUNT(total_sale) as overall_Sales
FROM retail_sales;

-- how many unique customers we have?

SELECT COUNT(DISTINCT customer_id) from retail_sales;

-- Data Analysis & Business Key Problems & Answers

--my findings base on the dataset

-- Retrieve all sales records made on 2022-11-05.

SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';

-- Retrieve all transactions where:Category = Clothing,Quantity sold > 4,Transaction month = November 2022

SELECT *
FROM retail_sales
WHERE category = 'Clothing'
AND sale_date BETWEEN '2022-11-01' AND '2022-11-30'
AND quantity >= 4;

-- SQL query to calculate the total sales (total_sale) for each category.

SELECT category,
	SUM(total_sale) AS overall_Sale
	FROM retail_sales
	GROUP BY category;

-- SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT ROUND(AVG(age),2) AS avg_age_customers
FROM retail_sales
WHERE category = 'Beauty';

 -- SQL query to find all transactions where the total_sale is greater than 1000.

 SELECT * FROM retail_sales
 WHERE total_sale > 1000;

-- SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT category,
gender,
COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY gender,category
ORDER BY category DESC;

-- SQL query to calculate the average sale for each month. Find out best selling month in each year

SELECT * FROM
(
SELECT
EXTRACT(YEAR FROM sale_date) AS year,
EXTRACT(MONTH FROM sale_date) AS month,
AVG(total_sale) AS avg_sales,
RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC ) AS rank
FROM retail_sales
GROUP BY year,month
) AS T1
WHERE rank = 1;

-- SQL query to find the top 5 customers based on the highest total sales 

SELECT customer_id,
	SUM(total_sale) AS highest_sale
	FROM retail_sales
	GROUP BY customer_id
	ORDER BY highest_sale DESC
	LIMIT 5;


-- SQL query to find the number of unique customers who purchased items from each category.

SELECT category,
	COUNT(DISTINCT customer_id) as unique_customers
	FROM retail_sales
	GROUP BY category
	ORDER BY unique_customers DESC;


-- SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

WITH hourly_sales
AS
(
SELECT *,
	CASE 
	WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
	WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
	ELSE 'Evening'
	END as shifts
 FROM retail_sales
)
SELECT shifts,
	COUNT(*) AS total_orders
	FROM hourly_sales
	GROUP BY shifts
	ORDER BY total_orders DESC;


--  SQL query to find Top 3 Customers by Total Sales

SELECT customer_id,
	SUM(total_sale) AS total_sales
	FROM retail_sales
	GROUP BY customer_id
	ORDER BY total_sales DESC
	LIMIT 3;

-- SQL query to Rank Customers Based on Sales

SELECT customer_id,
	SUM(total_sale) AS total_sales,
	RANK() OVER(ORDER BY SUM(total_sale) DESC ) as rank
	FROM retail_sales
	GROUP BY customer_id;

-- SQL query to find 2nd highest sale
SELECT * FROM
(
SELECT 
total_sale,
DENSE_RANK() OVER(ORDER BY total_sale DESC) AS RANK
FROM retail_sales
) AS t1
WHERE RANK = 2;

-- SQL query to Find Customers Whose Sales Are Above Average

SELECT 
customer_id,
SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
HAVING SUM(total_sale) >
(
SELECT AVG(total_sales)
FROM
(
    SELECT customer_id,
	SUM(total_sale) AS total_sales
        FROM retail_sales
        GROUP BY customer_id
    ) AS avg_table
);

-- SQL query to find First Purchase Date of Each Customer

SELECT customer_id,
	MIN(sale_date) AS first_purchase
	FROM retail_sales
	GROUP BY customer_id
	ORDER BY customer_id;

-- SQL query to Categorize Sales Performance

SELECT 
	transaction_id,
	total_Sale,
	CASE 
	WHEN total_sale > 1000 THEN 'High sales performance'
	WHEN total_sale BETWEEN 500 AND 1000 THEN 'Medium sales performance'
	ELSE 'Low sales performance'
	END AS sales_performance
	FROM retail_sales;

-- SQL query to find Customers Purchasing from Multiple Categories

SELECT customer_id,
	COUNT(DISTINCT category) AS unique_category
	FROM retail_sales
	GROUP BY customer_id
	HAVING COUNT(DISTINCT category) > 1;

--SQL query to find Running Total of Sales

SELECT
    sale_date,
    total_sale,
    SUM(total_sale) OVER(ORDER BY sale_date) AS running_total
FROM retail_sales;


--END OF THE PROJECT......

