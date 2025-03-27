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


## Queries and Visualizations

### 1. How many distinct cities are present in the dataset?

![Customer Info](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/EMAIL_ID_LIST.png) 

### 2. What is the most selling product line?
![Cheapest Rental](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/CHEAPEST_RENTALS.png)

### 3. Which city has the largest tax percent/ VAT (Value Added Tax)?
![Cheapest Rental](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/CHEAPEST_RENTALS.png)

### 4.Which city has the highest revenue?
![Customer Info](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/EMAIL_ID_LIST.png) 

### 5. Which day of the week has the best avg ratings?
![Cheapest Rental](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Average%20rating.png)

### 6. Which customer type buys the most?
![Cheapest Rental](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Customer%20.png)

### 7. Identify the customer type that generates the highest revenue.
![Cheapest Rental](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/CHEAPEST_RENTALS.png)

### 8. Which time of the day do customers give most ratings?
![Customer Info](https://github.com/Reshmanalawade/Walmart-Data-Analysis/blob/main/Output/Cus_Rating.png) 

### 9. Identify the customer type that generates the highest revenue.
![Cheapest Rental](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/CHEAPEST_RENTALS.png)

### 10. What is the total revenue by month?
![Cheapest Rental](https://github.com/Reshmanalawade/Maven_Movies_Rental/blob/main/Code%20Output/CHEAPEST_RENTALS.png)
