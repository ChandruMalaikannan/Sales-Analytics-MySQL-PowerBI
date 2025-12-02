CREATE DATABASE PROJECTSQL;                                    -- Create database and select it
USE PROJECTSQL;

CREATE TABLE IF NOT EXISTS customers (		                   -- Customers lookup table  
customer_id INT PRIMARY KEY,            
customer_name VARCHAR(150) NOT NULL     
);

-- Import customers data using MySQL Workbench GUI

select * from customers                                        -- Preview customer data  
limit 5;

                                           
CREATE TABLE IF NOT EXISTS products (                          -- Products lookup table
  indexx INT PRIMARY KEY,             
  product_name VARCHAR(250) NOT NULL      
);

-- Import products data using MySQL Workbench GUI

select * from products                                         -- Preview product data
limit 5;


CREATE TABLE IF NOT EXISTS regions (                           -- Regions lookup table
  region_id INT PRIMARY KEY,
  City varchar(150),                    
  Country VARCHAR(150),
  Fullname VARCHAR(150)
);

-- Import regions data using MySQL Workbench GUI

select * from regions                                         -- Preview region data
limit 5;


Create table sales_order (                                    -- Sales main table with foreign keys
OrderNumber varchar(100),
OrderDate varchar(100),
Customer_Name_Index int,
Chanel varchar(100),
Currency_Code varchar(100),
Warehouse_Code varchar(100),
Delivery_Region_Index int,
Product_Description_Index int,
Order_Quantity int,
Unit_Price DECIMAL(10,2),
total_sales DECIMAL(10,2),
Total_Unit_Cost DECIMAL(10,2),
primary key( ordernumber, Customer_Name_Index, Delivery_Region_Index, Product_Description_Index ),


CONSTRAINT fk_sales_customer FOREIGN KEY (Customer_Name_Index) REFERENCES customers(customer_id),
CONSTRAINT fk_sales_product  FOREIGN KEY (Product_Description_Index) REFERENCES products(indexx),
CONSTRAINT fk_sales_region   FOREIGN KEY (Delivery_Region_Index) REFERENCES regions(region_id)
);

-- Import sales_order data using MySQL Workbench GUI


alter table sales_order                                        -- Add new DATE column
add column OrderDate_new DATE;

update sales_order
SET OrderDate_new = STR_TO_DATE(OrderDate, '%d-%m-%Y');       -- Convert text date to DATE

alter table sales_order                                       -- Drop old date & rename new one
drop column orderdate;
alter table sales_order
change column orderdate_new  orderdate date;

alter table sales_order
add column profit decimal(10,2);                               -- Add Profit column  

update sales_order
set profit = total_sales - Total_Unit_Cost;                    -- Calculate Profit

select * from sales_order
limit 10;                                                      -- View final data 


-- Connect Power BI to this MySQL database
-- Load all tables (customers, products, regions, sales_order) into Power BI
-- Build visuals such as sales trends, profit analysis, and regional performance






