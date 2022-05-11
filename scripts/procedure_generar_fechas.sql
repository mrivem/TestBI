CREATE PROCEDURE generar_fechas
AS
	INSERT INTO dim_date(dateID,date, month)
	VALUES
		(1,'2016-01-01', 'Enero'),
		(2,'2016-02-01', 'Febrero'),
		(3,'2016-03-01', 'Marzo'),
		(4,'2016-04-01', 'Abril'),
		(5,'2016-05-01', 'Mayo'),
		(6,'2016-06-01', 'Junio'),
		(7,'2016-07-01', 'Julio'),
		(8,'2016-08-01', 'Agosto'),
		(9,'2016-09-01', 'Septiembre'),
		(10,'2016-10-01', 'Octubre'),
		(11,'2016-11-01', 'Noviembre'),
		(12,'2016-12-01', 'Diciembre'),
		(13,'2017-01-01', 'Enero'),
		(14,'2017-02-01', 'Febrero'),
		(15,'2017-03-01', 'Marzo'),
		(16,'2017-04-01', 'Abril'),
		(17,'2017-05-01', 'Mayo'),
		(18,'2017-06-01', 'Junio'),
		(19,'2017-07-01', 'Julio'),
		(20,'2017-08-01', 'Agosto'),
		(21,'2017-09-01', 'Septiembre'),
		(22,'2017-10-01', 'Octubre'),
		(23,'2017-11-01', 'Noviembre'),
		(24,'2017-12-01', 'Diciembre')