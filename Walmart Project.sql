CREATE DATABASE  WALMART;

USE WALMART;

CREATE TABLE sales(
invoicecustomerscustomers_id VARCHAR(30) NOT NULL PRIMARY KEY,
branch VARCHAR(5) NOT NULL,
city VARCHAR(30) NOT NULL,
customer_type VARCHAR(30) NOT NULL,
gender VARCHAR(10) NOT NULL,
product_line VARCHAR(100) NOT NULL,
unit_price DECIMAL(10,2) NOT NULL,
quantity INT(20) NOT NULL,
vat FLOAT(6,4) NOT NULL,
total DECIMAL(12, 4) NOT NULL,
date DATETIME NOT NULL,
time TIME NOT NULL,
payment VARCHAR(15) NOT NULL,
cogs DECIMAL(10,2) NOT NULL,
gross_margin_pct FLOAT(11,9),
gross_income DECIMAL(12, 4),
rating FLOAT(2, 1)
);

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;


LOAD DATA LOCAL INFILE 
'/Users/mohammedshehbazdamkar/Downloads/WalmartSalesData.csv.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- The Feature Enginnering --
-- 1. Time_of_day

SELECT time,
(CASE 
	WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
	WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
	ELSE "Evening" 
END) AS time_of_day
FROM sales;

ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);

UPDATE sales
SET time_of_day = (
	CASE 
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
		WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
		ELSE "Evening" 
	END
);


-- 2.Day_name

SELECT date,
DAYNAME(date) AS day_name
FROM sales;

ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);

UPDATE sales
SET day_name = DAYNAME(date);


-- 3.Month_name

SELECT date,
MONTHNAME(date) AS month_name
FROM sales;

ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);

UPDATE sales
SET month_name = MONTHNAME(date);



-- Questions --

-- 1.How many distinct cities are present in the dataset?
SELECT DISTINCT city 
FROM sales;

-- 2.What is the most selling product line?
SELECT product_line, count(product_Line) AS most_selling_product
FROM sales 
GROUP BY product_line 
ORDER BY most_selling_product DESC LIMIT 1;


-- 3.Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT city, SUM(VAT) AS total_VAT
FROM sales 
GROUP BY city 
ORDER BY total_VAT DESC LIMIT 1;

-- 4.Which city has the highest revenue?
SELECT city, SUM(total) AS total_revenue
FROM sales 
GROUP BY city 
ORDER BY total_revenue DESC LIMIT 1;

-- 5.Which day of the week has the best avg ratings?
SELECT day_name, AVG(rating) AS average_rating
FROM sales 
GROUP BY day_name 
ORDER BY average_rating DESC LIMIT 1;


-- 6.Which customer type buys the most?
SELECT customer_type, SUM(total) as total_sales
FROM sales 
GROUP BY customer_type 
ORDER BY total_sales LIMIT 1;

-- 7.Identify the customer type that generates the highest revenue.
SELECT customer_type, SUM(total) AS total_sales
FROM sales 
GROUP BY customer_type 
ORDER BY total_sales DESC LIMIT 1;


-- 8.Which time of the day do customers give most ratings?
SELECT time_of_day, AVG(rating) AS average_rating
FROM sales 
GROUP BY time_of_day 
ORDER BY average_rating DESC LIMIT 1;


-- 9.Which customer type pays the most in VAT?
SELECT customer_type, SUM(VAT) AS total_VAT
FROM sales 
GROUP BY customer_type 
ORDER BY total_VAT DESC LIMIT 1;


-- 10.What is the total revenue by month?
SELECT month_name, SUM(total) AS total_revenue
FROM SALES 
GROUP BY month_name 
ORDER BY total_revenue DESC;
