CREATE PROCEDURE importar_datos_2016
AS
	/* Poblamos directamente dimension store */
	INSERT INTO dim_store(storeID, store_name, city)
		SELECT store_id, store_name, city 
		FROM BikeStores.sales.stores;
	
	/* Poblamos directamente dimension store */
	INSERT INTO dim_customer(customerID,first_name,last_name)
		SELECT customer_id,first_name,last_name 
		FROM BikeStores.sales.customers;

	/* Poblamos directamente dimension store */
	INSERT INTO dim_staff(staffID,first_name,last_name)
		SELECT staff_id,first_name,last_name 
		FROM BikeStores.sales.staffs;

	/* Poblamos tabla de hechos correspondiente a las ordenes 
		se debe determinar referencia a la fecha de orden mediante funcion de ayuda obtenerIdMes */
	insert into fact_order(orderID, staffID, storeID, dateID, customerID, order_date, order_status)
	select 
		order_id as orderID, 
		staff_id as staffID, 
		store_id as storeID, 
		dbo.obtenerIdMes(order_date) as dateID, 
		customer_id as customerID, 
		order_date as order_date, 
		order_status as order_status
	from BikeStores.sales.orders
	WHERE BikeStores.sales.orders.order_date BETWEEN '2016-01-01' AND '2016-12-31';
	