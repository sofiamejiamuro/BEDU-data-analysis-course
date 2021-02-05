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

use kavak;
SHOW TABLES;
SELECT * FROM car;
SELECT * FROM region;
SELECT id FROM region WHERE name = 'Guadalajara' OR name = 'Ciudad de México';
