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


-- A : 연령대별 고객 수 분석 쿼리문
SELECT
	CASE
		WHEN age < 20 THEN '10대 이하',
        WHEN age < 30 THEN '20대',
        WHEN age < 40 THEN '30대',
        ELSE '40eo 이상'
	END age_group,
    COUNT(*) customer_count
FROM customers
GROUP BY age_group;