-- Insert into customer DB
INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info 
) VALUES (
	1,
	'Elon Musk',
	'773-777-1234',
	'1 Washigton Ave, West Palm Beach. FL 22212',
	'1234-4567-3245-5432 222 01/23'
);


-- Insert into movies
INSERT INTO movies (
	movie_id,
	movie_name,
	tix_amount,
	cart_id
) VALUES (
	102,
	'Avengers 6',
	10.00,
	1
);

-- Insert statement for c_order
INSERT INTO comp_order (
	order_id,
	sub_total,
	total_cost,
	cart_id
) VALUES (
	1,
	40.00,
	45.50,
	1
);

-- Insert statement for inventory
INSERT INTO inventory(
	sku,
	product_amount
) VALUES (
	103,
	18.00
);

INSERT INTO inventory(
	sku,
	product_amount
) VALUES (
	201,
	1
);

INSERT INTO inventory(
	sku,
	product_amount
) VALUES (
	102,
	10.00
);


INSERT INTO inventory(
	sku,
	product_amount
) VALUES (
	202,
	15.00
);


-- Insert statement for product
INSERT INTO cart (
	cart_id,
	customer_id 
) VALUES(
	1,
	1
);


-- Insert statement for concessions
insert into concessions_stand (
	snack_id,
	product_name,
	product_amount,
	cart_id,
	sku
) values (
	2,
	'M&M',
	1,
	1,
	201
);

insert into concessions_stand (
	snack_id,
	product_name,
	product_amount,
	cart_id,
	sku
) values (
	201,
	'M&M',
	15.00,
	1,
	202
);

insert into comp_order (
	order_id,
	sub_total,
	total_cost,
	cart_id
)  values (
	1,
	30.00,
	32.50,
	1
);

SELECT *
FROM product;