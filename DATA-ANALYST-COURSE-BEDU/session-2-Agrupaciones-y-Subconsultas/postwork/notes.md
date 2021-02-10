# Review

**COUNT(*)**

Count returns a new column, grouping the selected attribute by same values.
```sql
SELECT COUNT(*) FROM articulo GROUP BY cantidad;
```

```sql
SELECT cantidad, COUNT(*) FROM articulo GROUP BY cantidad;
# The return is multiple two columns with multiple registers
```


e.g.
Return a new column that shows the results of counting all the car which name includes '1.6'
```sql
SELECT count(name) AS 'articuos de 1.6l' FROM car WHERE name LIKE '%1.6l%';
# The return is a single column with a single value. 
```

