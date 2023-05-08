-- Function to update a customer's last name
CREATE OR REPLACE FUNCTION replace_last_name(
	_customer_id INTEGER,
	_first_name VARCHAR(45),
	_last_name VARCHAR(45),
	new_last_name VARCHAR(45)
)
RETURNS VARCHAR AS
$$
	BEGIN
		UPDATE customer
		SET last_name = new_last_name
		WHERE customer_id = _customer_id;
		RETURN concat(_first_name, ' ', new_last_name) AS full_name;
	END;
$$
LANGUAGE plpgsql;

-- Run Function
SELECT replace_last_name(1, 'sean', 'curry', 'beardman');
--
--
--
--
-- Procedure to add a customer
CREATE OR REPLACE PROCEDURE add_customer(
	_first_name VARCHAR(50),
	_last_name VARCHAR(50),
	_address VARCHAR(100),
	_city VARCHAR(50),
	_payment_info VARCHAR(100),
	_dealership_id INTEGER
)
AS $$
	BEGIN
		INSERT INTO customer(
			first_name,
			last_name,
			address,
			city,
			payment_info,
			dealership_id
		)VALUES (
			_first_name,
			_last_name,
			_address,
			_city,
			_payment_info,
			_dealership_id
		);
		COMMIT;
	END;
$$
LANGUAGE plpgsql;

-- Run add_customer
CALL add_customer('Christopher', 'Eakins', '1515 Afterburner Dr', 'Houston', '4545 6565 7676', 2);
--
--
--
--
-- Fuction to add service ticket
CREATE OR REPLACE PROCEDURE add_service_ticket(
	_serial_number INTEGER,
	_customer_id INTEGER,
	_mechanics_id INTEGER,
	_service_description VARCHAR(250),
	_price DECIMAL(8,2),
	_dealership_id INTEGER
)
AS $$
	BEGIN
		INSERT INTO service_ticket(
			serial_number,
			customer_id,
			mechanics_id,
			service_description,
			price,
			dealership_id
		)VALUES (
			_serial_number,
			_customer_id,
			_mechanics_id,
			_service_description,
			_price,
			_dealership_id
		);
		COMMIT;
	END;
$$
LANGUAGE plpgsql;

-- Run add_service_ticket
CALL add_service_ticket(2435743, 4, 2, 'Dang engine broke', 3465.00, 2);