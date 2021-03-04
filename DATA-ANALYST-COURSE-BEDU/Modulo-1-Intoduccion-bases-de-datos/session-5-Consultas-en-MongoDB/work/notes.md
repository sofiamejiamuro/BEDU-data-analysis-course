# Consultas MongoDB

FILTER {"transit":"Metro"}
PROJECT {"transit":1}

{"transit":/Metro/}

i es case insensitive
{"transit":/Metro/i}

^ que mpiece con 
{"name":/^n/i}

$ que termine con 
{"name":/@gameofthron\.es$/i} 


{"name":1,"email":1}

Reto 1
1 Propiedades que no permitan fiestas.
1. {"house_rules":/party/i}
2. {"house_rules":/fiesta/i}
3. {"house_rules":/festa/i}

2 Propiedades que admitan mascotas.
{"house_rules":/mascota/}
{"house_rules":/animais/}
{"house_rules":{"$not":/no pets/i}}

3 Propiedades que no permitan fumadores.


4 Propiedades que no permitan fiestas ni fumadores.

## Buscar propiedades anidadas

PROJECT: {amenities:1}
FILTER: {"$in":["Kitchen", "Wifi"]}

Reto 2

Podemos obtener la lista de todas las publicaciones con 
- un costo menor a 100, 
- que se encuentren en España, 
- con una valoración de 50 o más puntos, 
- que cuenten con Internet o Wifi y 
- que tegan Elevador.

{
  "price":{
    $lt":100  
  }, 
  "adress.country_code":"ES", 
  "review.review_scores_rating" :{
    "$gte":50
  }, 
}
{
  
}