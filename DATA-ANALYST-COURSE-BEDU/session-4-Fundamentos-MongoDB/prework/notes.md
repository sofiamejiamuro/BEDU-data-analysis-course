# Fundamentos de Mongo DB

Mongo DB es una base de datos no relacional

Las bases de datos no relacionales estñasn diseñadas para modelos específicos y no tienen un lenguaje de consulta en común. No existe una estructura común para el alamacenamiento (tabla), la estructura de datos se va generando conforme se van insertando valores.

**Bases de datos orientada a documentos:** 
- Los formatos más utilizados son JSON y BSON.
- JSON utiliza un modelo llave/valor 

**Bases de Datos Orientadas a Gráficas:**
- Utilizan gráficas 
- Se manipulan siguiendo la Teoría de Gráficas

## Gestor MongoDB

- **JSON:** Es un formato compacto de representación de objetos. Es un formato de intercambio de información y su uso nació del lenguaje JavaScript. Está conformado por:
  - Objetos: Conjuntos de pares llave/valor.
  - Valores: Pueden ser cadenas, números, booleanos, null, objetos o arreglos.Estos pueden anidarse.
  - Son una colección de valores
- **Documento:** Es un conjunto de datos semiestructurados, que contienen parejas de la forma llave/valor, usando BSON como formato de almacenamiento.
- **Coleción:** Es un conjunto de documentos.

```
Tabla -> Colección

Registro -> Documento

Columna -> Llave
```


## Conexión a una base de datos MongoDB

Cliente: MongoDB Compass

