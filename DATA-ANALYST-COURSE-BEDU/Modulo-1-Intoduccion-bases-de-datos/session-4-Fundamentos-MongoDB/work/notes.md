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

# Consultas

## Proyecciones

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

## Filtrado
```json
FILTER  {year:1990}
PROJECT {year:1990}
```

## Operadores

**$gt greater**
**$gte greater or equal**

```json
FILTER {year:{$gt:2000}}
FILTER {year:{$gte:2000}}
```

```json
{
  "year":{
    "$gt":2010
  }
}
```

**$and**

Los documentos que matchen ambas condiciones
```json
FILTER {$and:[{year:{$gte:1995}},{director:Godard}]}
```
**$or**

O cumple una o cumple otra condición 
```json
FILTER {$or:[{year:2000},{year:1925}]}
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
## Ordenamiento
1 --> ASC

-1 --> DESC

```json
SORT {year:1 }
```

## Limit

```json
LIMIT {year:1}
```

**RETO 02**

1. ¿Qué comentarios ha hecho Greg Powell?
```json
FILTER {"name":"Greg Powell"}
PROJECT {"name":1, "text":1}
```
2. ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?
```json
FILTER: {$or:[{"name":"Greg Powell"},{"name":"Mercedes Tyler"}]}
PROJECT: {"name":1, "text":1, "date":1}
SORT: {date: 1}
```
3. ¿Cuál es el máximo número de comentarios en una película?
```json
PROJECT {num_mflix_comments:1}
SORT {num_mflix_comments: -1}	
```
4. ¿Cuál es título de las cinco películas más comentadas?
```json
PROJECT {num_mflix_comments:1, title:1}
SORT {num_mflix_comments: -1}
LIMIT 5
```
