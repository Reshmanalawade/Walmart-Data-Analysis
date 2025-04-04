<img src="./Walmart img.jpg" width="3000" height="600"/>&nbsp;

# Walmart-Sales-Data-Analysis--SQL-Project
## About
We are analysing Walmart's sales data to identify high-performing branches and products, analyze the sales patterns of various products, and understand customer behavior. The primary objective is to enhance and optimize sales strategies. The dataset utilized in this project is sourced from the Kaggle Walmart Sales Forecasting Competition.

## Purposes of the Project
The main goal of this project is to gain understanding from Walmart's sales data, exploring the various factors that influence sales across different branches.

## About Data
This project's data was obtained from the Kaggle Walmart Sales Forecasting Competition and it encompasses sales transactions from three Walmart branches situated in Mandalay, Yangon, and Naypyitaw, respectively.
The data contains 17 columns and 1000 rows:


## Analysis List:

1.	Product Analysis

> Perform an analysis on the data to gain insights into different product lines, determine the top-performing product lines, and identify areas for improvement in other product lines.

2.	Sales Analysis
   
> The objective of this analysis is to address the inquiry regarding the sales trends of the product. The outcomes of this analysis can assist in evaluating the efficiency of each applied sales strategy in the business and determining necessary modifications to increase sales.

3.	Customer Analysis

> This analysis is focused on identifying various customer segments, understanding purchasing trends, and evaluating the profitability associated with each of these customer segments.

## Approach Used
***1.	Data Wrangling***

During this initial phase, the data is examined to detect any NULL or missing values, and strategies for data replacement are implemented to address and substitute these values effectively.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. Null values are not present in our database because, in creating the tables, NOT NULL was specified for each field, effectively filtering out any null values.

***2.	Feature Engineering***

This will help use generate some new columns from existing ones.
- Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
- Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
- Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

# Tools & Library Used
<img src="https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/mysql_img.png" width="200" height="200"/>&nbsp;

## Query Task

### 1. How many distinct cities are present in the dataset?

![City](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/city%20img%201.png) 

### 2. What is the most selling product line?
![selling_prod_line](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/selling%20product%202.png)

### 3. Which city has the largest tax percent/ VAT (Value Added Tax)?
![VAT](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/VAT%20%203.png)

### 4.Which city has the highest revenue?
![Highest_revenue](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/highest%20revenue%204.png) 

### 5. Which day of the week has the best avg ratings?
![Average_rating](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Average%20rating%205.png)

### 6. Which customer type buys the most?
![customer](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Customer%206.png)

### 7. Identify the customer type that generates the highest revenue.
![customer_high_revenue](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/cus_sales%20%207.png)

### 8. Which time of the day do customers give most ratings?
![Cus_rating](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Cus_Rating%208.png) 

### 9. Which customer type pays the most in VAT?
![cus_vat](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/cus_vat%209.png)

### 10. What is the total revenue by month?
![Cheapest Rental](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Revenue%20by%20month%2010.png)
