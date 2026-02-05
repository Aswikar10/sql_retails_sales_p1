-- create table
transactions_id	sale_date	sale_time	customer_id	gender	age	category	quantiy	price_per_unit	cogs	total_sale

DROP TABLE IF EXISTS retails_sales;
CREATE TABLE retails_sales (
   transactions_id	INT PRIMARY KEY,
   sale_date DATE,
   sale_time TIME,
   customer_id INT,	
   gender VARCHAR (15),
   age	INT,
   category VARCHAR(15),
   quantiy INT,
   price_per_unit FLOAT,
   cogs	FLOAT,
   total_sale FLOAT
);

SELECT * FROM retails_sales
LIMIT 10;

SELECT 
 COUNT(*)
 FROM retails_sales

--
SELECT * FROM retails_sales
where transactions_id ISNULL;


SELECT * FROM retails_sales
where sale_date ISNULL;

SELECT * FROM retails_sales
where sale_time ISNULL;


SELECT *
FROM retails_sales
WHERE 
    transactions_id IS NULL
 OR sale_date IS NULL
 OR sale_time IS NULL
 OR gender IS NULL
 OR category IS NULL
 OR quantiy IS NULL
 OR cogs IS NULL
 OR total_sale IS NULL;


--
DELETE FROM retails_sales
WHERE 
    transactions_id IS NULL
 OR sale_date IS NULL
 OR sale_time IS NULL
 OR gender IS NULL
 OR category IS NULL
 OR quantiy IS NULL
 OR cogs IS NULL
 OR total_sale IS NULL;

--Data exploration
-- How many sales we have?
SELECT COUNT(*) total_sales FROM retails_sales

-- How many Unique customers we have

SELECT COUNT(DISTINCT category) total_sales FROM retails_sales


SELECT DISTINCT  category FROM retails_sales

--Data analysis & business key problems and answers
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
SELECT *
FROM retails_sales
WHERE sale_date = '2022-11-05';


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
SELECT
category,
*
FROM retails_sales
WHERE category = 'Clothing'
AND 
TO_CHAR(sale_date, 'YYYY-MM')='2022-11'
AND
quantiy >=4

 