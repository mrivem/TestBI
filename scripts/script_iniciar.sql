/* helpers */
USE DW;
DROP PROCEDURE crear_tablas;
DROP PROCEDURE importar_datos_2016;
DROP PROCEDURE importar_mensual;
DROP PROCEDURE generar_fechas;

select * from fact_order
select * from dim_staff

select count(*) from fact_order where staffID = 2

/* inicio */
EXEC crear_tablas;

EXEC generar_fechas;

EXEC importar_datos_2016;

EXEC importar_mensual @year=2017, @month=1;
EXEC importar_mensual @year=2017, @month=2;
EXEC importar_mensual @year=2017, @month=3;
EXEC importar_mensual @year=2017, @month=4;
EXEC importar_mensual @year=2017, @month=5;
EXEC importar_mensual @year=2017, @month=6;
EXEC importar_mensual @year=2017, @month=7;
EXEC importar_mensual @year=2017, @month=8;
EXEC importar_mensual @year=2017, @month=9;
EXEC importar_mensual @year=2017, @month=10;
EXEC importar_mensual @year=2017, @month=11;
EXEC importar_mensual @year=2017, @month=12;
