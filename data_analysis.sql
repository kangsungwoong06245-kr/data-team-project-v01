CREATE DATABASE data_project;

USE data_project;

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    created_at DATETIME
    );
    
SELECT * FROM customers;

-- B : 성별 고객 수 분석
SELECT
	gender,
    COUNT(*) customer_count
FROM customers
GROUP BY gender;