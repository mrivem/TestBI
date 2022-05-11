CREATE PROCEDURE crear_tablas
AS
	DROP TABLE IF EXISTS fact_order;
	DROP TABLE IF EXISTS dim_staff;
	DROP TABLE IF EXISTS dim_store;
	DROP TABLE IF EXISTS dim_customer;
	DROP TABLE IF EXISTS dim_date;

	CREATE TABLE dim_staff (
		staffID int NOT NULL,
		first_name VARCHAR(64),
		last_name VARCHAR(64),
		PRIMARY KEY (staffID),
	);

	CREATE TABLE dim_store (
		storeID int NOT NULL,
		store_name VARCHAR(64),
		city VARCHAR(64),
		PRIMARY KEY (storeID),
	);

	CREATE TABLE dim_customer (
		customerID int NOT NULL,
		first_name VARCHAR(64),
		last_name VARCHAR(64),
		PRIMARY KEY (customerID),
	);

	CREATE TABLE dim_date (
		dateID int NOT NULL,
		date date
		PRIMARY KEY (dateID),
	);

	CREATE TABLE fact_order (
		orderID int NOT NULL,
		staffID int NOT NULL,
		storeID int NOT NULL,
		dateID int NOT NULL,
		customerID int NOT NULL,
		order_date date NOT NULL,
		order_status VARCHAR(64),
		PRIMARY KEY (orderID),
		FOREIGN KEY (dateID) REFERENCES dim_date(dateID),
		FOREIGN KEY (staffID) REFERENCES dim_staff(staffID),
		FOREIGN KEY (customerID) REFERENCES dim_customer(customerID),
		FOREIGN KEY (storeID) REFERENCES dim_store(storeID)
	);