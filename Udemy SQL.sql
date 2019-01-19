CREATE DATABASE IF NOT EXISTS Sales;

USE Sales;

CREATE TABLE Sales (
purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL);

CREATE TABLE Customers (
customer_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
email_address VARCHAR(255),
number_of_complaints INT NOT NULL);

SELECT * FROM sales;

SELECT * FROM Sales.Sales;

DROP TABLE sales;

CREATE TABLE Sales (
purchase_number INT AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number));

DROP TABLE Customers;

CREATE TABLE Customers (
customer_id INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255), 
number_of_complaints INT,
PRIMARY KEY (customer_id));

CREATE TABLE Items (
item_id VARCHAR(255),
item VARCHAR(255),
unit_price NUMERIC(10, 2),
company_id VARCHAR(255),
PRIMARY KEY (company_id));

CREATE TABLE Companies (
company_id VARCHAR(255),
company_name VARCHAR(255),
headquarters_phone_number INT(12));

DROP TABLE Items;

DROP TABLE Companies;

CREATE TABLE Items (
item_id VARCHAR(255),
item VARCHAR(255),
unit_price NUMERIC(10, 2),
company_id VARCHAR(255),
PRIMARY KEY (item_id));

CREATE TABLE Companies (
company_id VARCHAR(255),
company_name VARCHAR(255),
headquarters_phone_number INT(12),
PRIMARY KEY (company_id));
