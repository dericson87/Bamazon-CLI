DROP DATABASE if exists bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
	item_id INT AUTO_INCREMENT,
	product_name VARCHAR(30) NOT NULL,  
	department_name VARCHAR(30) NOT NULL,
	price DECIMAL(10,2) NOT NULL,
	stock_quantity INT NOT NULL,
    product_sales DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (item_id)
);

CREATE TABLE departments(
	department_id INT AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
    over_head_costs DECIMAL NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO departments(department_name, over_head_costs)
VALUES ('Videogames', 6000);

INSERT INTO departments(department_name, over_head_costs)
VALUES ('Home Goods', 5000);

INSERT INTO departments(department_name, over_head_costs)
VALUES ('Pets', 3000);

INSERT INTO departments(department_name, over_head_costs)
VALUES ('Books', 1000);

INSERT INTO departments(department_name, over_head_costs)
VALUES ('Beer', 500);
-----------------------------------------

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Nintendo Switch', 'Videogames',300.00,20, 3000);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('PS4', 'Videogames',400.00,10, 2500);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Stylish Lamp', 'Home Goods', 49.99, 5, 20);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Batteries', 'Home Goods', 12.99, 50, 100);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Dark Souls 4', 'Videogames', 59.99, 1, 0);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Yellow Snow Pilsner', 'Beer', 10.99, 20, 20);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('50 Shades of Grey', 'Books', 19.99, 150, 10000);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Water Bottle', 'Home Goods', 9.99, 120, 200);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Litter Box', 'Pets', 49.99, 20, 10);

INSERT INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('Starcraft II', 'Videogames', 49.99, 20, 100);
-------------------------------------------------------------

SELECT * FROM departments;

SELECT * FROM products;

SELECT COUNT(department_name), department_name
FROM products
GROUP BY department_name;

SELECT * FROM products
LEFT JOIN departments ON products.department_name = departments.department_name;

