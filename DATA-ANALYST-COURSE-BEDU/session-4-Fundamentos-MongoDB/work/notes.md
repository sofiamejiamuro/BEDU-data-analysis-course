```json
{
  "nombre": "Sofia",
  "trabajo" : "Frontend dev",
  "stack": ["JS","React","TS"],
  "estudios": "Linguistica",
  "compañia":{
    "name": "pefai",
    "employeesNumber": 8,
    "location": "Mexico City"
  },
  "tienePerro":true
}
```

## Consultas

### Proyecciones

No me mandes 0, mandame 1 la llave 'x'

PROJECT {'released':1, '_id':0}
PROJECT {'title': 0}

**Reto 01**

1.Fecha, nombre y texto de cada comentario.
```json
{"date":1, "name":1, "text":1}
```
2.Título, elenco y año de cada película.
```json
{"title":1, "cast":1, "year":1}
```
3.Nombre y contraseña de cada usuario.
```json
{"name":1, "password":1}
```

### Filtrado

FILTER  {"year":2000}
PROJECT {"title":1, "cast":1, "year":1}

### Operadores

$gt greater
$gte greater or equal

```json
{
  "year":{
    "$gt":2010
  }
}
```
```json
{
  "$and":[
    {
      "year":{
        "$gt":2010
      }
    },
    {
      "year":{
        "$lt":2015
      }
    },
  ]
}
```
```json
{
  "$or":[
    {
      "year": 2010
    },
    {
      "year": 1920
    },
  ]
}
```
### Ordenamiento
1 --> ASC

-1 --> DESC

SORT {"year":1 }

**RETO 02**

1. ¿Qué comentarios ha hecho Greg Powell?
```
FILTER {"name":"Greg Powell"}
PROJECT {"name":1, "text":1}
```
2. ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?
```
FILTER: {$or:[{"name":"Greg Powell"},{"name":"Mercedes Tyler"}]}
PROJECT: {"name":1, "text":1, "date":1}
SORT: {date: 1}
```
3. ¿Cuál es el máximo número de comentarios en una película?
```
SORT {num_mflix_comments: 1}	
```
4. ¿Cuál es título de las cinco películas más comentadas?
```
FILTER {title: 1}	
SORT {num_mflix_comments: -1}
LIMIT 5
```
