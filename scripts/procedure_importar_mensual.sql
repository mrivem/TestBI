CREATE PROCEDURE importar_mensual @month int, @year int
AS
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
	WHERE MONTH(BikeStores.sales.orders.order_date) = @month AND YEAR(BikeStores.sales.orders.order_date) = @year;