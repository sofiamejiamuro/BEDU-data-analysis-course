# PROYECTO

Las consultas se realizarán sobre la base `sample_training`.

Todas las consultas que realices deberás mantenerlas dentro del MongoDB Compass. Para hacer esto, da clic en el botón con los puntos `···` y en `Toogle Query History`. Busca la última consulta y agregala a favoritos presionando el íncono con la estrella :star:.

1. Obtén los datos de contacto de cada compañía.
```json
PROJECT {email_address:1, phone_number:1}
```

2. Obtén la fuente de cada tweet.
```json
PROJECT {source:1}
```

3. Obtén el nombre de todas las compañias fundadas en octubre.
```json
FILTER {founded_month:10}
PROJECT{name:1}
```

4. Obtén el nombre de todas las compañías fundadas en 2008.
```json
FILTER {founded_year:2008}
PROJECT{name:1}
```
5. Obtén todos los *post* del autor `machine`.
```json
FILTER {author:"machine"}
```

6. Obtén todos los tweets provenientes de la `web`.
```json
FILTER {source:"web"}
```

7. Obtén todas las compañías fundadas en octubre del 2008.
```json
FILTER {$and:[{founded_month:10},{founded_year:2008}]}
```

8. Obtén todas las compañias con más de 50 empleados. 
```json
FILTER{number_of_employees: {$gt:50}}
```

9. Obtén las historias con número de comentarios entre 10 y 30.
```json
FILTER {$and:[{comments:{$gt:10}},{comments:{$lt:30}}]}
PROJECT {comments:1}
```

10. Obtén la empresa con el menor número de empleados.
```json
FILTER {number_of_employees:{$gt:0}}
PROJECT {number_of_employees:1}
SORT {number_of_employees:1}
LIMIT 1
```

11. Obtén la empresa con el mayor número de empleados.
```json
FILTER {number_of_employees:{$gt:0}}
PROJECT {number_of_employees:1}
SORT {number_of_employees:-1}
LIMIT 1
```

12. Obtén la historia más comentada.
```json
SORT {comments:-1} 
```

13. Obtén la historia menos comentada.
```json
SORT {comments:0} 
```
