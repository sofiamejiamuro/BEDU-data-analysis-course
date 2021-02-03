## Proyecto Sesión 1

### 1. Objetivos 


- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos

1. MySQL Workbench instalado.

### 3. Desarrollo 

**En este pequeño proyecto aplicarás los conceptos adquiridos durante la sesión:**

- Descripción de tablas  
- Consulta de los campos de una tabla  
- Cláusula WHERE  
- Operadores relacionales  
- Operadores lógicos  
- Cláusula ORDER BY  
- Cláusula LIMIT  

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`. Recuerda que para hacer consultas a una tabla debes conocer primero su estructura.

1. Dentro del mismo servidor de bases de datos, conéctate al esquema `kavak`.
```sql
USE kavak;
```
2. Obtén una tabla con sólo los nombres de las regiones en donde se venden autos.
```sql
SELECT name FROM region;
```
3. Obtén una tabla con el nombre de los autos, su modelo y su precio.
```sql
SELECT name, model, price FROM car;
```
4. Muestra el nombre y modelo de los autos que sean para 5 pasajeros.
```sql
SELECT name, model FROM car WHERE passengers = 5;
```
5. Muestra el nombre, modelo y año de los autos que apliquen para Uber.
```sql
SELECT name, model, year FROM car WHERE apply_uber = 1;
```
6. Muestra el nombre todos los autos cuyo año sea menor al 2015.
```sql
SELECT name FROM car WHERE year < 2015;
```
7. Muestra el nombre todos los autos que sean del año 2016 o 2018.
```sql
SELECT name, year FROM car WHERE year IN (2016, 2018);
SELECT name, year FROM car WHERE year = 2018 OR year = 2016;
```
8. Muestra los todos los autos de cuyo precio sea mayor o igual a los 100000 pesos, menor a los 150000 y que tengan menos de 50000 km.

```sql
SELECT name,price,km FROM car WHERE (price >= 100000 AND price <= 150000) AND km<50000;
```
9. Muestra los autos de modelo Aveo que sean de color AZUL, BLANCO, ROJO o GRIS.
```sql
SELECT name, model, color FROM kavak.car WHERE model = "AVEO" AND color IN ('AVEO','AZUL','BLANCO','ROJO','GRIS');
```
10. Muestra los autos de modelo Sentra que no sean de color BLANCO.
```sql
SELECT model, color FROM kavak.car WHERE model = 'Sentra' AND color NOT LIKE 'Blan%';
```
11. Muestra el nombre, modelo y año de todos los autos de la marca Nissan que apliquen para Uber.
`NOTA`: Puede ser en dos o más consultas separadas.
```sql
SELECT name, id FROM make WHERE name = 'Nissan';
SELECT name, model, year,make_id FROM car WHERE make_id = 2 AND apply_uber = 1;
```

12. Muestra el nombre y modelo de todos los autos de la marcas Audi, Mazda y KIA cuyo año sea menor o igual al 2017 y que apliquen para Uber.
`NOTA`: Puede ser en dos o más consultas separadas.


13. Obtén el nombre de todas las marcas ordenado de manera descendente.

14. Muestra todos los autos de 7 pasajeros de transmisión automática cuyo precio esté entre los 200000 y 250000 pesos. Ordénalos de mayor a menor precio.

15. Muestra los 10 autos de menor precio que apliquen para Uber y que sean de transmisión Automática.
```sql
SELECT name,price FROM car WHERE transmission = 'Automática' AND apply_uber = 1 ORDER BY price ASC LIMIT 10;
```
16. Muestra los 10 autos con menor kilometraje y ordénalos primero de mayor a menor año y después de menor a mayor precio.

17. Muestra los 3 primeros autos convertibles de menor precio que se vendan en la Ciudad de México y que sean de color pero que no sean de transmisión Automática.
`NOTA`: Puede ser en dos o más consultas separadas.


**¡¡¡MUCHA SUERTE!!!**