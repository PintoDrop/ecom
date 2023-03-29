-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE ecommerce_db;
-- CREATE TABLE category (
--   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   category_name NOT NULL STRING
-- )

-- CREATE TABLE product (
--   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   product_name NOT NULL VARCHAR(30),
--   price DECIMAL NOT NULL DECIMAL,
--   -- (validate value is decimal)
--   stock INT NOT NULL DEFAULT 10,
--   -- (set default value of 10 & validates value is numeric)
--   category_id INT 
--   -- references the category model's id
-- )

-- CREATE TABLE tag (
--   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   tag_name VARCHAR(30)
--   -- make string
-- )

-- CREATE TABLE productTag (
--   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   product_id INT,
--   -- references the product models' id
--   tag_id INT "SELECT id from tag join id on productTag.tag_id = tag.id"
  -- references the tag model's id / using foreign or primary key?
-- )



