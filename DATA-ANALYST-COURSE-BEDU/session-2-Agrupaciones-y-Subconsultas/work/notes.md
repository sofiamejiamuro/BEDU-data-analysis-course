
### Example
```sql
SELECT precio, cantidad, (precio * cantidad) AS total FROM tienda.articulo;
```
## Practice

**RETO 01**

1. Selecciona todos los autos que incluyen en su nombre la palabra "1.6l";
```sql
SELECT name FROM car WHERE name LIKE '%1.6l%';
select * FROM kavak.car where name LIKE '%1.6l%';
```
2. Selecciona todos los nombres de las marcas que empiecen con la letra A
```sql
SELECT name FROM make WHERE name LIKE 'a%';
SELECT name FROM kavak.make	WHERE NAME LIKE "A%";
```
3. Selecciona todos los modelos que contengan 4 caracteres.
```sql
SELECT name, model FROM car WHERE model LIKE '____';
```

**RETO 02**

- ¿Cuál es el promedio un auto en Kavak?
```sql
SELECT avg(price) AS 'promedio' FROM car; 
```
- ¿Cuántos artículos según su nomre son de 1.6l?
```sql
SELECT count(name) AS 'articuos de 1.6l' FROM car WHERE name LIKE '%1.6l%';
```
- ¿Cuál es el precio mínimo y máximo de todos los autos?
```sql
SELECT min(price) AS 'precio minimo' FROM car;
SELECT max(price) AS 'precio minimo' FROM car;
```
- ¿Cuál es la suma del precio de los tres autos más caros?
Buscar en la subconsulta
//Incorrecto
```sql
SELECT avg(price) AS 'precio minimo' FROM car ORDER BY price DESC LIMIT 3;
```

***RETO - 03**

¿Cuántos registros hay por cada uno de los modelos?
```sql
SELECT model, COUNT(*) AS 'Registros x modelo' FROM car GROUP BY model;
```
¿Cuál es el promedio de kilometraje de los autos dependiendo de su año?
```sql
SELECT year, AVG(km) FROM car GROUP BY year;
```
¿Cuál son las 10 combinaciones de color - transmisión más comunes? (P.E. BLANCO - Automático)
```sql
SELECT color, transmission, COUNT(*) AS 'count' FROM car GROUP BY color, transmission ORDER BY count DESC;
```

👀 ❗
Check the differences between these queries
```sql
SELECT COUNT(*) as 'color' FROM car;
SELECT COUNT(*) as 'color' FROM car	 GROUP BY color;
SELECT color, COUNT(color) AS 'color' FROM car GROUP BY color;
```

## AGRUPACIONES Y SUBCONSULTAS

Dos consultas
```sql
SELECT nombre, salario, id_puesto FROM puesto WHERE nombre = 'Junior Executive';
SELECT id_puesto FROM puesto WHERE nombre = 'Junior Executive';
```

Subconsulta

nota: en la subcosulta debe solo haber una columna porque si  *  no va a saber donde hacer la consulta principal
```sql
SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE nombre = 'Junior Executive');
```

```sql
SELECT id_empleado, id_puesto, nombre, (SELECT salario FROM tienda.puesto WHERE id_puesto = puesto.id_puesto) AS salario FROM empleado;
```

Tipos de subconsultas:

- simple:
  - Independiente al query inicial
  - va en el qhere
- correlacionada:
  - sucede al mismo tiempo que la otra consulta, se ejecuta línea por línea
  - va en el SELECT
- vista en línea
  - consulta sobre una respuesta obtenida anteriormente


ej. Conocer el promedio de salario  de cada de uno de los puestos
```sql
# Primera consulta
SELECT nombre, AVG(salario) FROM puesto GROUP BY nombre;
# Subconsulta vista en línea
SELECT MAX(salario_promedio), MIN(salario_promedio) FROM (SELECT nombre, AVG(salario) AS salario_promedio FROM tienda.puesto GROUP BY nombre) AS salarios_promedio; 
```

**RETO 04**

1. Muestra cuántos autos están en venta en total en la Ciudad de México y Guadalajara.
```sql
use kavak;
SHOW TABLES;
SELECT * FROM car;
SELECT * FROM region;
SELECT id FROM region WHERE name = 'Guadalajara' OR name = 'Ciudad de México';
SELECT region_id, COUNT(region_id) AS 'ventas' FROM car GROUP BY region_id;
SELECT region_id, COUNT(region_id) AS 'ventas' FROM car WHERE region_id IN (SELECT id FROM region WHERE name = 'Guadalajara' OR name = 'Ciudad de México') GROUP BY region_id;
SELECT COUNT(*) FROM kavak.car WHERE region_id IN (
SELECT id FROM kavak.region WHERE name IN ("Ciudad de México", "Guadalajara")
);
```
2. Muestra el nombre de la marca y el número de autos que hay por cada una de ellas.
```sql
SELECT * FROM make;
SELECT id, name FROM make;
SELECT make_id, 
(SELECT name FROM make WHERE id = make_id),
COUNT(make_id) AS 'marca' 
FROM car 
GROUP BY make_id;
```
3. Muestra el promedio de autos registrados por año.
```sql
SELECT (carros) FROM (SELECT year, COUNT(*) AS 'carros' FROM car GROUP BY year) AS 'Promedio de autos por año';
```