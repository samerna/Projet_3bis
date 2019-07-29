DROP SCHEMA IF EXISTS production ;
DROP schema IF exists sales;
CREATE SCHEMA production ;
USE production ;

CREATE TABLE categories (
	category_id INT AUTO_INCREMENT  PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

CREATE TABLE brands (
	brand_id INT AUTO_INCREMENT  PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE products (
	product_id INT AUTO_INCREMENT  PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL
-- 	FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id)
-- 	FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
-- 	FOREIGN KEY (store_id) REFERENCES sales.stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE customers (customers_id INT AUTO_INCREMENT  PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL, last_name VARCHAR (255), phone int, 
    email VARCHAR (255) , street VARCHAR (255) , city VARCHAR (255) , state VARCHAR (255) ,
    zip_code VARCHAR (255));
    
    CREATE TABLE orders (order_id INT AUTO_INCREMENT  PRIMARY KEY,
	customer_id INT, order_status VARCHAR (255), order_date date, 
    required_date date, shipped_date date, store_id INT, staff_id INT);
    
   CREATE TABLE stores (store_id INT AUTO_INCREMENT  PRIMARY KEY,
	store_name VARCHAR (255), email varchar (255), 
	phone INT, street varchar (255) , city varchar (255), state varchar (255), zip_code
    int);
    
    CREATE TABLE order_items (order_id INT AUTO_INCREMENT  PRIMARY KEY,
	item_id INT , product_id INT, 
	quantity INT, list_price decimal, discount decimal );
    
    




