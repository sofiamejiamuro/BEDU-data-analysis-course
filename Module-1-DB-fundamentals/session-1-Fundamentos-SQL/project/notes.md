# PROJECT

1. Dentro del mismo servidor de bases de datos, conéctate al esquema `classicmodels`.

```sql
SHOW DATABASES;
USE classicmodels;
SHOW tables;
```

2. Dentro de la tabla `employees`, obtén el apellido de todos los empleados.

```sql
SELECT lastName FROM employees;
```

3. Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados.

```sql
SELECT lastName, firstName, jobTitle FROM employees;
```

4. Dentro de la tabla `employees`, obtén todos los datos de cada empleado.

```sql
SELECT * FROM employees;
```

5. Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto `Sales Rep`.

```sql
SELECT lastName, firstName, jobTitle FROM employees WHERE jobTitle = 'Sales Rep';
```

6. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` y código de oficina `1`.

```sql
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle = 'Sales Rep' AND officeCode = 1;
```

7. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` o código de oficina `1`.

```sql
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle = 'Sales Rep' OR officeCode = 1;
```

8. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina `1`, `2` o `3`.

```sql
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode = 1 OR officeCode = 2 OR officeCode = 3 ;
```
```sql
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode IN (1,2,3);
```

9. Dentro de la tabla `employees`, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a `Sales Rep`.

```sql
SELECT lastName, firstName, jobTitle FROM employees WHERE NOT jobTitle = 'Sales Rep';
```
```sql
SELECT lastName, firstName, jobTitle FROM employees WHERE jobTitle != 'Sales Rep';
```

10. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a `5`.

```sql
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode > 5;
```

11. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual `4`.

```sql
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode <= 4;
```

12. Dentro de la tabla `customers`, obtén el nombre, país y estado de todos los clientes cuyo país sea `USA` y cuyo estado sea `CA`.

```sql
SELECT customerName, country, state FROM customers WHERE country = 'USA' AND state = 'CA';
```

13. Dentro de la tabla `customers`, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, `USA`, cuyo estado sea `CA` y cuyo límite de crédito sea mayor a `100000`.

```sql
SELECT customerName, country, state, creditLimit FROM customers WHERE country = 'USA' AND state = 'CA' AND creditLimit > 100000;
```

14. Dentro de la tabla `customers`, obtén el nombre y país de todos los clientes cuyo país sea `USA` o `France`.

```sql
SELECT customerName, country FROM customers WHERE country = 'USA' OR country = 'France';
```
```sql
SELECT customerName, country FROM customers WHERE country IN ('USA','France');
```

15. Dentro de la tabla `customers`, obtén el nombre, país y límite de crédito de todos los clientes cuyo país sea `USA` o `France` y cuyo límite de crédito sea mayor a `100000`. Para este ejercicio ten cuidado con los paréntesis.

```sql
SELECT customerName, country, creditLimit FROM customers WHERE (country = 'USA' OR country = 'France') AND creditLimit > 10000;
```
```sql
SELECT customerName, country, creditLimit FROM customers WHERE country IN ('USA','France') AND creditLimit > 10000;
```

16. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en `USA` o `France`.

```sql
SELECT officeCode, city, phone, country FROM offices WHERE country IN ('USA', 'France');
```

17. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que *no* se encuentren en `USA` o `France`.

```sql
SELECT officeCode, city, phone, country FROM offices WHERE NOT country IN ('USA', 'France');
```

18. Dentro de la tabla `orders`, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número `10165`, `10287` o `10310`.

```sql
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber IN (10165,10287,10310);
```

19. Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.

```sql
SELECT customerName FROM customers ORDER BY customerName ASC;
```

20. Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente.

```sql
SELECT customerName FROM customers ORDER BY customerName DESC;
```

21. Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.

22. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).

```sql 
SELECT customerNumber, customerName, creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 5;
```

23. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo.

```sql
SELECT customerNumber, customerName, creditLimit FROM customers ORDER BY creditLimit ASC LIMIT 5;
```