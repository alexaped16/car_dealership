-- creating customer data 

insert into customer(first_name, last_name, address, email)
	values('Alexa', 'Pedersen', '120 Real Street', 'alexap@gmail.com'), 
		('Maggie', 'Caldwell', '38 Best Street', 'magscaldwell@gmail.com'), 
		('Connor', 'James', '101 North Ave', 'connorj@gmail.com')
	
--create car data 

insert into car(make, model, year_, serial_number, new_or_used, price)
	values('Honda', 'Civic', '2022', '293719', true, 25000), 
			('Toyota', 'Corolla IM', '2016', '283484', false, 15000)
	
	
--create mechanic data

insert into mechanic(first_name, last_name)
	values('Sally', 'Jo'), 
			('Jon', 'Smith')
	
--create parts data 
	insert into parts(part_name, part_price)
	values('Engine', 4000), 
				('Tires', 800)
	
-- create sales person data 
	insert into sales_person(first_name, last_name)
	values ('Ally', 'Daniels'), 
			('Chris', 'Lance')

--create service ticket data 
			
select * from service_ticket  

	insert into service_ticket(car_id, customer_id)
		values(1, 2), (3, 4)
	