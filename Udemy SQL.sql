#Create Sales Database
CREATE DATABASE IF NOT EXISTS Sales;

#Use the sales database
USE Sales;

#Create "Sales" table in Sales database
CREATE TABLE Sales (
purchase_number INT AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number));



#Create "Items" table in Sales database
CREATE TABLE Items (
item_id VARCHAR(255),
item VARCHAR(255),
unit_price NUMERIC(10, 2),
company_id VARCHAR(255),
PRIMARY KEY (item_id));

#Create "Companies" table in Sales database
CREATE TABLE Companies (
company_id VARCHAR(255),
company_name VARCHAR(255),
headquarters_phone_number INT(12),
PRIMARY KEY (company_id));

#Drop "sales", "customers", "items" and "companies"
DROP TABLE Sales;
DROP TABLE Customers;
DROP TABLE Items;
DROP TABLE Companies;

#Create "Customers" table in Sales database
CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255), 
number_of_complaints INT,
PRIMARY KEY (customer_id));

ALTER TABLE Customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO Customers (first_name, last_name, gender, email_address,number_of_complaints)
VALUES ('John', 'Mackinley','M', 'john.mackinley@365careers.com', 0);

#Create "companies" table in Sales database
CREATE TABLE Companies (
company_id INT AUTO_INCREMENT,
company_name VARCHAR(255) DEFAULT 'X',
headquarters_phone_number INT(12),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number));

ALTER TABLE Companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE Companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL; 

