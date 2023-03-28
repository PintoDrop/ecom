-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;
CREATE TABLE category (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  category_name NOT NULL STRING
)

CREATE TABLE product (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  product_name NOT NULL STRING
  price DECIMAL NOT NULL 
  -- (validate value is decimal)
  stock INT NOT NULL 
  -- (set default value of 10 & validates value is numeric)
  category_id INT 
  -- references the category model's id
)

CREATE TABLE tag (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  tag_name 
  -- make string
)

CREATE TABLE productTag (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  product_id INT
  -- references the product models' id
  tag_id INT
  -- references the tag model's id
)


