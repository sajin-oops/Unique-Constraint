CREATE TABLE users(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(40),
password_hash VARCHAR(50),  
created_at INT,
updated_at INT
);




CREATE TABLE categories(
category_id SERIAL PRIMARY KEY,
category_name VARCHAR(40),
parent_category_id INT
)


CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(40),
description VARCHAR(100),
price INT,
stock_quantity INT,
category_id INT,
FOREIGN KEY (category_id) REFERENCES categories(category_id) 
);


SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM products;