-- SQL-команды для создания таблиц
CREATE TABLE employees (
	employee_id int NOT NULL PRIMARY KEY,
	first_name varchar(25) NOT NULL,
	last_name varchar(50) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date DATE,
	notes text
);

CREATE TABLE customers (
    customer_id varchar(5) PRIMARY KEY,
    company_name varchar(50),
    contact_name varchar(50)
);

CREATE TABLE orders (
	order_id int PRIMARY KEY,
	customer_id varchar(5) REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date DATE,
	ship_city varchar(50),
    UNIQUE(customer_id)
)
