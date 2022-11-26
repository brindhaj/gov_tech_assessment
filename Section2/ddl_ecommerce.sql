
-- Order Table
CREATE TABLE orders (
order_id VARCHAR ( 50 ) PRIMARY KEY,
membermembership_id_id VARCHAR ( 20 ),
date_ordered DATE,
date_required DATE,
status VARCHAR (10),
total_cost float 
);


-- Orderdetails 
CREATE TABLE fact_orderdetails (
order_id VARCHAR ( 50 ) ,
item_no VARCHAR ( 50 ) ,
quatity int ,
price float,
total_price_per_item float ,
total_weight int 
);

-- product table 
CREATE TABLE product (
item_no VARCHAR ( 50 ) PRIMARY KEY,
item_name VARCHAR ( 100 ),
manufacturer_name VARCHAR ( 100 ),
cost float ,
weight FLOAT
);

-- Customer Table DDL
CREATE TABLE cutomer_table (
	membermembership_id_id VARCHAR ( 20 ) PRIMARY KEY,
	email VARCHAR ( 100 ) UNIQUE NOT NULL,
	date_of_birth DATE,
	mobile_no varchar(8) NOT NULL,
	above_18 BOOLEAN NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
	);