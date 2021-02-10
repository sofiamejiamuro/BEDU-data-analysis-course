USE tienda;
SELECT * FROM articulo;
SELECT nombre, COUNT(*) AS count FROM articulo GROUP BY nombre ORDER BY count DESC;	
# la query de arriba y la de abajo funcionan igual
SELECT nombre, COUNT(nombre) AS count FROM articulo GROUP BY nombre ORDER BY count DESC;	
SELECT * FROM articulo WHERE nombre = "Wine - Sake";
USE kavak;
SHOW TABLES;
SELECT * FROM car;
SELECT model, COUNT(*) AS 'Registros x modelo' FROM car GROUP BY model;
SELECT year, AVG(km) FROM car GROUP BY year;
SELECT color, transmission, COUNT(*) AS 'count' FROM car GROUP BY color, transmission ORDER BY count;
SELECT color, transmission, COUNT(*) AS 'count' FROM car GROUP BY color, transmission ORDER BY count DESC;
SELECT COUNT(*) as 'color' FROM car;
SELECT COUNT(*) as 'color' FROM car	 GROUP BY color;
SELECT color, COUNT(color) AS 'color' FROM car GROUP BY color;
USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
SELECT * FROM puesto;
SELECT nombre, salario, id_puesto FROM puesto WHERE nombre = 'Junior Executive';
SELECT id_puesto FROM puesto WHERE nombre = 'Junior Executive';
SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE nombre = 'Junior Executive');
# QUeremos el salario del empleado
SELECT id_empleado, id_puesto, nombre, (SELECT salario FROM tienda.puesto WHERE id_puesto = puesto.id_puesto) AS salario FROM empleado;
# COnocer el promedio de salario  de cada de uno de los puestos
SELECT MAX(salario_promedio), MIN(salario_promedio) FROM (SELECT nombre, AVG(salario) AS salario_promedio FROM tienda.puesto GROUP BY nombre) AS salarios_promedio; 
SELECT nombre, AVG(salario) FROM puesto GROUP BY nombre;
SELECT color, COUNT(color) AS 'color' FROM car GROUP BY color;

# reto 4
#1
use kavak;
SHOW TABLES;
SELECT * FROM car;
SELECT * FROM region;
SELECT id FROM region WHERE name = 'Guadalajara' OR name = 'Ciudad de México';
SELECT region_id, COUNT(region_id) AS 'ventas' FROM car GROUP BY region_id;
SELECT region_id, COUNT(region_id) AS 'ventas' FROM car WHERE region_id IN (SELECT id FROM region WHERE name = 'Guadalajara' OR name = 'Ciudad de México') GROUP BY region_id;
#2
SELECT * FROM make;
SELECT id, name FROM make;
SELECT make_id, 
(SELECT name FROM make WHERE id = make_id),
COUNT(make_id) AS 'marca' 
FROM car 
GROUP BY make_id;
#3

SELECT year, COUNT(*) AS 'carros' FROM car GROUP BY year;

SELECT name FROM make WHERE id = 1;

# //////// Session 3
SHOW KEYS FROM tienda.empleado;
SELECT * FROM tienda.empleado JOIN tienda.puesto ON empleado.id_puesto = puesto.id_puesto;
SELECT clave, articulo.nombre AS articulo, empleado.nombre AS empleado FROM tienda.venta JOIN tienda.articulo ON venta.id_articulo = articulo.id_articulo JOIN tienda.empleado ON venta.id_empleado = empleado.id_empleado;
# 1. Muestra una tabla con el nombre y marca de cada auto

#2. ¿Cuántos autos hay por cada una de las ciudades?
SELECT region.name, COUNT(*) AS count
FROM kavak.region
LEFT JOIN kavak.car 
ON car.region_id = region.id
GROUP BY region.name;

#3. Muestra una tabla con el nombre, marca y tipo de carrocería (body_type) de cada auto
SELECT car.name, make.name AS 'fabricante', body_type.name AS 'body type name' 
FROM kavak.car
JOIN kavak.make
ON car.make_id = make.id
JOIN kavak.body_type
ON car.body_type_id = body_type.id;








