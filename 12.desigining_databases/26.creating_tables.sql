CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;
DROP TABLE IF EXISTS customers;
CREATE TABLE   customers 
(
   customer_id INT PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(50) NOT NULL,
   points INT NOT NULL DEFAULT 0,
   email VARCHAR(255) NOT NULL UNIQUE
)