# Session notes

## Examples
```sql
SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE empleado;
SHOW TABLES;
DESCRIBE articulo;
DESCRIBE puesto;
DESCRIBE venta;
USE tienda;
SELECT * FROM empleado;
SELECT apellido_paterno FROM empleado;
SELECT id_empleado FROM empleado;
SELECT * FROM empleado WHERE apellido_paterno = "Jenne";
SELECT * FROM empleado WHERE id_empleado = 72;
SELECT * FROM empleado WHERE id_empleado < 72;
SELECT * FROM empleado WHERE id_empleado <= 72;
SELECT * FROM empleado WHERE id_empleado >= 72 AND id_empleado <= 990;
SELECT * FROM empleado where id_empleado IN (13, 14, 24, 30);
SELECT * FROM empleado where id_empleado = 14 OR id_empleado = 13 OR id_empleado = 24 OR id_empleado = 30;
DESCRIBE puesto;
DESCRIBE empleado;
USE tienda;
SELECT * FROM puesto;
```

## Concepts

- Jerarquía de operaciones

## Practice

**RETO 02**

- ¿Cuál es el nombre de los empleados con el puesto 4?
```sql
SELECT * FROM empleado WHERE id_puesto = 4;
```
- ¿Qué puestos tienen un salario mayor a $10,000?
```sql
SELECT nombre FROM puesto WHERE salario > 10000;
```
- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
```sql
SELECT * FROM articulo;
SELECT nombre FROM articulo WHERE precio > 1000 AND iva > 100;
```
- ¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
```sql
SELECT * FROM venta;
SELECT id_venta FROM venta WHERE id_articulo = 135 OR id_articulo = 963 AND id_empleado = 835 OR id_empleado = 369; 
```
**RETO 03**

Usando la base de datos kavak, escribe las consultas que permita responder las siguientes preguntas.

- ¿De que año es el auto más antiguo?
```sql
SELECT name, year FROM kavak.car ORDER BY year ASC;
SELECT name, year FROM kavak.car ORDER BY year ASC LIMIT 1;
SELECT name, year FROM kavak.car ORDER BY year, name ASC;
```
- ¿Cuál son los 3 autos con mayor kilometraje?
```sql
SELECT name, km FROM kavak.car ORDER BY km DESC LIMIT 3;
```
- ¿Cuál es el auto que lleva más tiempo sin venderse?
```sql
SELECT name, post_date FROM kavak.car ORDER BY post_date ASC LIMIT 1;
```
