-- Movie Theater

--Customer profile

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- inventory
CREATE TABLE inventory (
	sku SERIAL PRIMARY KEY,
	product_amount INTEGER
);

-- customer's cart
CREATE TABLE cart (
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Movie Selection
CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	tix_amount INTEGER,
	cart_id INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id)
);

-- concessions
CREATE TABLE concessions_stand (
	snack_id SERIAL PRIMARY KEY,
	product_amount INTEGER,
	product_name VARCHAR(100),
	cart_id INTEGER NOT NULL,
	sku INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
	FOREIGN KEY(sku) REFERENCES inventory(sku)
);

-- complete order
CREATE TABLE comp_order(
	order_id SERIAL PRIMARY KEY, 
	order_date DATE DEFAULT current_date,  
	sub_total NUMERIC(7,2),
	total_cost NUMERIC(7,2),
	cart_id INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id)
);