
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