📊 Sales Data Analytics Project (MySQL + Power BI)
📌 Overview

This project demonstrates an end-to-end Sales Analytics workflow using MySQL for database design and Power BI for business intelligence.
Raw CSV files were transformed into a clean relational database, and an interactive Power BI dashboard was built to analyze sales, profit, product performance, pricing, and regional trends.

🏗️ Project Workflow
1️⃣ Database Creation & Schema Design (MySQL)

Created a relational database with Customers, Products, Regions, and Sales_Order tables

Defined Primary Keys and Foreign Keys to maintain referential integrity

Imported CSV files via MySQL Workbench GUI

Added a new DATE column and converted DD-MM-YYYY text dates

Converted price fields to DECIMAL for accurate calculations

Calculated Profit = total_sales - total_unit_cost

2️⃣ Data Cleaning (SQL)

Date formatting using STR_TO_DATE()

Numeric formatting for Unit Price, Total Sales, and Unit Cost

Removal of old text fields after conversion

Added a Profit column for analytics

Validated data with sample queries

3️⃣ Dashboard Development (Power BI)

Connected Power BI to the MySQL database and built visual insights, including:

KPIs: Total Sales, Total Orders, Profit Percentage

Price Gauge: Displays high, low, and average unit price

Yearly Sales Trend Line Chart

Warehouse-wise Order Distribution

Channel-wise Profit Contribution

Unit Price vs Unit Cost Comparison

Top 5 Customers by Sales

Slicers for City, Product, Channel, and Date Range


🛠️ Tools & Technologies

MySQL Workbench

SQL (DDL, DML, Functions, PK, FK)

Power BI Desktop

Excel / CSV

GitHub

🚀 How to Run This Project

Import SQL files into MySQL Workbench

Load CSV datasets into their matching tables

Open the Power BI .pbix file

Update the MySQL connection string

Refresh data and explore visuals

📌 Key Learnings

Database normalization

Working with foreign keys

Date and numeric data cleaning

Creating calculated fields

Power BI report building

End-to-end analytics pipeline

📧 Contact

If you’d like to discuss this project, connect with me on LinkedIn:
👉 https://www.linkedin.com/in/chandru-malaikannan-48a3ab368
