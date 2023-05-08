-- Create/Alter Customer Table
CREATE TABLE "customer"(
    "customer_id" SERIAL NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100) NOT NULL,
    "address" VARCHAR(200) NOT NULL,
    "city" VARCHAR(50) NULL,
    "payment_info" VARCHAR(100) NULL,
    "dealership_id" INTEGER NULL
);
ALTER TABLE
    "customer" ADD PRIMARY KEY("customer_id");

-- Add Customers
INSERT INTO customer(
first_name,
last_name,
address,
city,
payment_info,
dealership_id
)VALUES(
	'sean',
	'currie',
	'123 cool breeze lane',
	'Chicago',
	'4242 4545 6767',
	1
);

INSERT INTO customer(
first_name,
last_name,
address,
city,
payment_info,
dealership_id
)VALUES(
	'morty',
	'smith',
	'123 cooler breeze lane',
	'Chicago',
	'4244 5555 9876',
	2
);

INSERT INTO customer(
first_name,
last_name,
address,
city,
payment_info,
dealership_id
)VALUES(
	'rick',
	'sanchez',
	'5150 Multiverse Ave',
	'Seattle',
	'4242 4545 6767',
	1
);


-- Create/Alter Used Cars Table
CREATE TABLE "used_cars"(
    "used_car_id" SERIAL NOT NULL,
    "customer_id" INTEGER NULL,
    "salesperson_id" INTEGER NULL,
    "make" VARCHAR(50) NOT NULL,
    "model" VARCHAR(255) NOT NULL,
    "model_year" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "service_records_id" INTEGER NULL,
    "invoice_id" INTEGER NULL,
    "serial_number" INTEGER NOT NULL
);
ALTER TABLE
    "used_cars" ADD PRIMARY KEY("used_car_id");

-- Insert Used Cars
INSERT INTO used_cars(
customer_id,
salesperson_id,
make,
model,
model_year,
price,
serial_number
)VALUES(
	2,
	1,
	'chevy',
	'astro van',
	1998,
	4567.50,
	8753947
);

INSERT INTO used_cars(
customer_id,
salesperson_id,
make,
model,
model_year,
price,
serial_number
)VALUES(
	1,
	2,
	'chevy',
	'equinox',
	2007,
	3777.50,
	8734757
);

INSERT INTO used_cars(
customer_id,
salesperson_id,
make,
model,
model_year,
price,
serial_number
)VALUES(
	3,
	1,
	'chrysler',
	'andromeda',
	2020,
	97255.99,
	1323947
);


-- Create/Alter New Cars Table
CREATE TABLE "new_cars"(
    "new_car_id" SERIAL NOT NULL,
    "customer_id" INTEGER NULL,
    "salesperson_id" INTEGER NULL,
    "make" VARCHAR(50) NOT NULL,
    "model" VARCHAR(50) NOT NULL,
    "model_year" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "invoice_id" INTEGER NULL,
    "serial_number" INTEGER NOT NULL
);
ALTER TABLE
    "new_cars" ADD PRIMARY KEY("new_car_id");
    
-- Insert New Cars
INSERT INTO new_cars(
make,
model,
model_year,
price,
serial_number
)VALUES(
	'honda',
	'galaxy',
	2023,
	56755.99,
	398475934
);

INSERT INTO new_cars(
make,
model,
model_year,
price,
serial_number
)VALUES(
	'honda',
	'univers',
	2023,
	66655.99,
	865475934
);

INSERT INTO new_cars(
make,
model,
model_year,
price,
serial_number
)VALUES(
	'honda',
	'sol',
	2023,
	36755.99,
	846575934
);

-- Create/Alter Salesperson Table
CREATE TABLE "salesperson"(
    "salesperson_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "used_car_id" INTEGER NULL,
    "new_car_id" INTEGER NULL,
    "invoice_id" INTEGER NULL,
    "dealership_id" INTEGER NULL
);
ALTER TABLE
    "salesperson" ADD PRIMARY KEY("salesperson_id");
    
-- Insert Salespeople
INSERT INTO salesperson(
first_name,
last_name,
dealership_id
)VALUES(
	'Cornvelious',
	'Daniel',
	1
);

INSERT INTO salesperson(
first_name,
last_name,
dealership_id
)VALUES(
	'Dr',
	'Wong',
	2
);

INSERT INTO salesperson(
first_name,
last_name,
dealership_id
)VALUES(
	'Tammy',
	'Gueterman',
	1
);

INSERT INTO salesperson(
first_name,
last_name,
dealership_id
)VALUES(
	'King',
	'Flippy Nips',
	2
);

-- Create/Alter Mechanics Table
CREATE TABLE "mechanics"(
    "mechanics_id" SERIAL NOT NULL,
    "serial_number" INTEGER NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "service_records_id" INTEGER NULL,
    "service_ticket_id" INTEGER NULL
);
ALTER TABLE
    "mechanics" ADD PRIMARY KEY("mechanics_id");
    
-- Insert Mechanics
INSERT INTO mechanics(
first_name,
last_name
)VALUES(
	'me',
	'seeks'
);

INSERT INTO mechanics(
first_name,
last_name
)VALUES(
	'prince',
	'nebulon'
);

INSERT INTO mechanics(
first_name,
last_name
)VALUES(
	'sleepy',
	'gary'
);

-- Create/Alter Dealership Table
CREATE TABLE "dealership"(
    "dealership_id" INTEGER NOT NULL,
    "dealership_name" VARCHAR(100) NOT NULL,
    "sales_staff" INTEGER NULL,
    "customers" INTEGER NULL,
    "inventory" INTEGER NULL,
    "service_shop" INTEGER NULL,
    "service_data" INTEGER NULL,
    "service_ticks" INTEGER NULL
);
ALTER TABLE
    "dealership" ADD PRIMARY KEY("dealership_id");
    
-- Insert Dealerships
INSERT INTO dealership(
	dealership_id,
	dealership_name
	)VALUES(
		1,
		'Interstellar Autos'
	);

INSERT INTO dealership(
	dealership_id,
	dealership_name
	)VALUES(
		2,
		'Galactic Gearheads'
	);

INSERT INTO dealership(
	dealership_id,
	dealership_name
	)VALUES(
		3,
		'Supernova Customs'
	);
	
-- Create/Alter Inventory Table
CREATE TABLE "inventory"(
    "inventory_id" INTEGER NOT NULL,
    "used_car_id" INTEGER NULL,
    "new_car_id" INTEGER NULL,
    "dealership_id" INTEGER NOT NULL,
    "service_ticket_id" INTEGER NULL,
    "serial_number" INTEGER NOT NULL
);
ALTER TABLE
    "inventory" ADD PRIMARY KEY("inventory_id");
   
-- Insert Inventory
INSERT INTO inventory(
inventory_id,
new_car_id,
dealership_id,
serial_number
)VALUES(
	1,
	1,
	2,
	398475934
);

INSERT INTO inventory(
inventory_id,
new_car_id,
dealership_id,
serial_number
)VALUES(
	2,
	2,
	3,
	865475934
);

INSERT INTO inventory(
inventory_id,
new_car_id,
dealership_id,
serial_number
)VALUES(
	3,
	3,
	1,
	846575934
);

-- Create/Alter Invoice Table
CREATE TABLE "invoice"(
    "invoice_id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100) NOT NULL,
    "salesperson_id" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "dealership_id" INTEGER NOT NULL,
    "serial_number" INTEGER NOT NULL
);
ALTER TABLE
    "invoice" ADD PRIMARY KEY("invoice_id");
ALTER TABLE
    "invoice" ADD COLUMN "new_car_id" integer null;
ALTER TABLE
	"invoice" ADD COLUMN "used_car_id" integer NULL;
	
-- Insert Invoices
INSERT INTO invoice(
customer_id,
first_name,
last_name,
salesperson_id,
price,
dealership_id,
used_car_id,
serial_number
)VALUES(
	1,
	'sean',
	'curry',
	4,
	3777.50,
	1,
	2,
	8734757
);

INSERT INTO invoice(
customer_id,
first_name,
last_name,
salesperson_id,
price,
dealership_id,
used_car_id,
serial_number
)VALUES(
	3,
	'rick',
	'sanchez',
	1,
	97255.99,
	1,
	3,
	1323947
);

INSERT INTO invoice(
customer_id,
first_name,
last_name,
salesperson_id,
price,
dealership_id,
used_car_id,
serial_number
)VALUES(
	2,
	'morty',
	'smith',
	1,
	4567.50,
	2,
	1,
	8753947
);

-- Create/Alter Service Ticket Table
CREATE TABLE "service_ticket"(
    "service_ticket_id" SERIAL NOT NULL,
    "serial_number" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "mechanics_id" INTEGER NOT NULL,
    "service_description" VARCHAR(250) NOT NULL,
    "price" DECIMAL(8, 2) NULL,
    "dealership_id" INTEGER NULL
);
ALTER TABLE
    "service_ticket" ADD PRIMARY KEY("service_ticket_id");
    
-- Insert Service Tickets
INSERT INTO service_ticket(
serial_number,
customer_id,
mechanics_id,
service_description,
price
)VALUES(
	1323947,
	3,
	3,
	'Wubba lubba dub dub',
	137.50
);

INSERT INTO service_ticket(
serial_number,
customer_id,
mechanics_id,
service_description,
price
)VALUES(
	1323947,
	3,
	3,
	'Its doing the Wubba lubba dub dub again',
	145.50
);

INSERT INTO service_ticket(
serial_number,
customer_id,
mechanics_id,
service_description,
price
)VALUES(
	1323947,
	3,
	3,
	'Still making the dub dub noise',
	105.99
);

-- Create/Alter Service Records Table
CREATE TABLE "service_records"(
    "service_records_id" SERIAL NOT NULL,
    "used_car_id" INTEGER NULL,
    "new_car_id" INTEGER NULL,
    "service_completed" VARCHAR(250) NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "mechanics_id" INTEGER NOT NULL,
    "service_ticket_id" INTEGER NOT NULL,
    "serial_number" INTEGER NOT NULL,
    "dealership_id" INTEGER NULL
);
ALTER TABLE
    "service_records" ADD PRIMARY KEY("service_records_id");
    
-- Insert Service Records
INSERT INTO service_records(
used_car_id,
service_completed,
customer_id,
mechanics_id,
service_ticket_id,
serial_number,
dealership_id
)VALUES(
	3,
	'fixed all the wubba lubba dub dub',
	3,
	3,
	2,
	1323947,
	1
);

INSERT INTO service_records(
used_car_id,
service_completed,
customer_id,
mechanics_id,
service_ticket_id,
serial_number,
dealership_id
)VALUES(
	3,
	'repaired wabba lubba dub dub',
	3,
	3,
	1,
	1323947,
	1
);

INSERT INTO service_records(
used_car_id,
service_completed,
customer_id,
mechanics_id,
service_ticket_id,
serial_number,
dealership_id
)VALUES(
	3,
	'changed out dub dub with fresh dub dub',
	3,
	3,
	3,
	1323947,
	1
);

-- Create/Alter Service Shop Table
CREATE TABLE "service_shop"(
    "service_shop_id" SERIAL NOT NULL,
    "customer_id" INTEGER NULL,
    "mechanics_id" INTEGER NOT NULL,
    "serial_number" INTEGER NOT NULL,
    "service_records_id" INTEGER NOT NULL,
    "dealership_id" INTEGER NULL
);
ALTER TABLE
    "service_shop" ADD PRIMARY KEY("service_shop_id");
    
   -- Insert Service Shop
INSERT INTO service_shop(
customer_id,
mechanics_id,
serial_number,
service_records_id,
dealership_id
)VALUES(
	3,
	3,
	1323947,
	1,
	1
);

INSERT INTO service_shop(
customer_id,
mechanics_id,
serial_number,
service_records_id,
dealership_id
)VALUES(
	3,
	3,
	1323947,
	2,
	1
);

INSERT INTO service_shop(
customer_id,
mechanics_id,
serial_number,
service_records_id,
dealership_id
)VALUES(
	3,
	3,
	1323947,
	3,
	1
);


-- Add foreign key constraints to all dependent tables
-- Inventory
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_used_car_id_foreign" FOREIGN KEY("used_car_id") REFERENCES "used_cars"("used_car_id");
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_new_car_id_foreign" FOREIGN KEY("new_car_id") REFERENCES "new_cars"("new_car_id");
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_dealership_id_foreign" FOREIGN KEY("dealership_id") REFERENCES "dealership"("dealership_id");
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_invoice_id_foreign" FOREIGN KEY("invoice_id") REFERENCES "customer"("customer_id");

-- Service Ticket
ALTER TABLE "service_ticket" ADD CONSTRAINT "service_ticket_mechanics_id_foreign" FOREIGN KEY("mechanics_id") REFERENCES "mechanics"("mechanics_id");
ALTER TABLE "service_ticket" ADD CONSTRAINT "service_ticket_service_ticket_id_foreign" FOREIGN KEY("service_ticket_id") REFERENCES "customer"("customer_id");
--ALTER TABLE "service_ticket" ADD CONSTRAINT "service_ticket_serial_number_foreign" FOREIGN KEY("serial_number") REFERENCES "used_cars"("serial_number");

-- Mechanics
ALTER TABLE "mechanics" ADD CONSTRAINT "mechanics_service_records_id_foreign" FOREIGN key("service_records_id") REFERENCES "service_records"("service_records_id");

-- Invoice
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_dealership_id_foreign" FOREIGN KEY("dealership_id") REFERENCES "dealership"("dealership_id");
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_new_car_id_foreign" FOREIGN KEY("new_car_id") REFERENCES "new_cars"("new_car_id");
ALTER TABLE "invoice" ADD CONSTRAINT "invoice_used_car_id_foreign" FOREIGN KEY("used_car_id") REFERENCES "used_cars"("used_car_id");

-- Service Records
--ALTER TABLE "service_records" ADD CONSTRAINT "service_records_serial_number_foreign" FOREIGN KEY("serial_number") REFERENCES "used_cars"("serial_number");
ALTER TABLE "service_records" ADD CONSTRAINT "service_records_service_records_id_foreign" FOREIGN KEY("service_records_id") REFERENCES "mechanics"("mechanics_id");
ALTER TABLE "service_records" ADD CONSTRAINT "service_records_mechanics_id_foreign" FOREIGN KEY("mechanics_id") REFERENCES "mechanics"("mechanics_id");
ALTER TABLE "service_records" ADD CONSTRAINT "service_records_used_car_id" FOREIGN key("used_car_id") REFERENCES "used_cars"("used_car_id");

-- Service Shop
ALTER TABLE "service_shop" ADD CONSTRAINT "service_shop_dealership_id_foreign" FOREIGN KEY("dealership_id") REFERENCES "dealership"("dealership_id");
ALTER TABLE "service_shop" ADD CONSTRAINT "service_shop_service_records_id_foreign" FOREIGN key("service_records_id") REFERENCES "service_records"("service_records_id");

-- Used Cars
ALTER TABLE "used_cars" ADD CONSTRAINT "used_cars_used_car_id_foreign" FOREIGN KEY("used_car_id") REFERENCES "salesperson"("salesperson_id");
ALTER TABLE "used_cars" ADD CONSTRAINT "used_cars_used_customer_id_foreign" FOREIGN key("customer_id") REFERENCES "customer"("customer_id");
ALTER TABLE "used_cars" ADD CONSTRAINT "used_cars_service_records_id_foreign" FOREIGN key("service_records_id") REFERENCES "service_records"("service_records_id");

-- New Cars
ALTER TABLE "new_cars" ADD CONSTRAINT "new_cars_new_car_id_foreign" FOREIGN KEY("new_car_id") REFERENCES "salesperson"("salesperson_id");
ALTER TABLE "new_cars" ADD CONSTRAINT "new_cars_used_customer_id_foreign" FOREIGN key("customer_id") REFERENCES "customer"("customer_id");

-- Salesperson
ALTER TABLE "salesperson" ADD CONSTRAINT "salesperson_dealership_id_foreign" FOREIGN KEY("dealership_id") REFERENCES "dealership"("dealership_id");

-- Dealership
ALTER TABLE "dealership" ADD CONSTRAINT "dealership_customers_foreign" FOREIGN KEY("customers") REFERENCES "customer"("customer_id");
ALTER TABLE "dealership" ADD CONSTRAINT "dealership_service_ticks_foreign" FOREIGN KEY("service_ticks") REFERENCES "service_ticket"("service_ticket_id");
