# Introduction to data bases- prework

## Concepts

- SQL is a relational data base
- Data
- Information
- Data base
- Table/Relation
- Tuples(Registros/entes)
- Attributes(Campos/columnas)
- Domain
- Degree
- Cardinality
- Data Managment System (DBMS) / Sistema Gestor de Bases de Datos (SGBD)
- Client - Server
- MyWorkbench

## Practice

```sql
SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE articulo;
SELECT nombre FROM articulo;
SELECT * FROM articulo;
SELECT * FROM articulo WHERE id_articulo = 22;
SELECT * FROM articulo ORDER BY precio ASC;
SELECT * FROM articulo ORDER BY precio DESC;
SELECT * FROM articulo WHERE precio < 1000 ORDER BY precio DESC;
SELECT * FROM articulo WHERE precio < 1000 ORDER BY precio DESC LIMIT 50;
```
