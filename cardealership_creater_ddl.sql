--creating customer table 

create table customer(
	customer_id serial primary key,
	first_name VARCHAR (50),
	last_name VARCHAR (50), 
	address VARCHAR (50), 
	email VARCHAR (50)
);


--creating car table

create table car(
	car_id SERIAL primary key, 
	make VARCHAR (50),
	model VARCHAR (50), 
	year_ INTEGER,
	serial_number int unique not null, 
	foreign key(serial_number) references service_history(serial_number), 
	new_or_used BOOLEAN, 
	price NUMERIC (8,2)
);


-- create sales invoice table

create table sales_invoice(
	invoice_number SERIAL primary key,
	car_id int not null, 
	foreign key(car_id) references car(car_id),
	customer_id int, 
	foreign key(customer_id) references customer(customer_id)
);


--create sales_person table 

create table sales_person(
	sales_person_id SERIAL primary key, 
	first_name VARCHAR (50), 
	last_name VARCHAR (50)
);

--create service_ticket

create table service_ticket(
	serial_number_id SERIAL primary key,
	serial_number, 
	car_id int unique not null, 
	foreign key(car_id) references car(car_id), 
	customer_id int, 
	foreign key(customer_id) references customer(customer_id)
);

--create service history 

create table service_history(
	service_id SERIAL primary key, 
	service_name VARCHAR (50), 
	price numeric(8,2), 
	serial_number int, 
	foreign key(serial_number) references service_ticket(serial_number)
);

--create mechanic table 

create table mechanic(
	mechanic_id SERIAL primary key, 
	first_name VARCHAR (50), 
	last_name VARCHAR (50)
)

--create parts table 

create table parts(
	part_id SERIAL primary key, 
	part_name VARCHAR(50), 
	part_price numeric(7,2)
)







