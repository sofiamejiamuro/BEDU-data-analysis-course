# Session notes

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
# 1
SELECT * FROM empleado WHERE id_puesto = 4;
# 2
SELECT nombre FROM puesto WHERE salario > 10000;
SELECT * FROM articulo;
# 3
SELECT nombre FROM articulo WHERE precio > 1000 AND iva > 100;
SELECT * FROM venta;
# 4
SELECT id_venta FROM venta WHERE id_articulo = 135 OR id_articulo = 963 AND id_empleado = 835 OR id_empleado = 369; 
```

RETO 02

- ¿Cuál es el nombre de los empleados con el puesto 4?
  Staff Scientist
- ¿Qué puestos tienen un salario mayor a $10,000?
  36
- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
  mayo a mil 38 , 41, cuarenta arituclos
- ¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?

Jerarquía de operaciones