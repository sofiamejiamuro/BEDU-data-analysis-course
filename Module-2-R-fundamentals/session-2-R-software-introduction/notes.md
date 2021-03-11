# Session 2 R Programming and data manipulation

Conceptos:

- Medidas de tendencia central
- Medidas de posición
- Medidas de dispersión

## Medidas de tendencia central:

Dado un conjunto de datos, son números alrededor de los cuales se concentran los datos:

- Media o promedio.
- Mediana:

¿Qué pasa cuándo, en un conjunto de datos, un dato esta fuera del rango de los demás datos? Si se hiciera un promedio, no habría un dato representativo.

Para evitar esto se utiliza la mediana, para encontrar la mediana se parte el conjunto de datos en dos y se ordenan de menor a mayor,si el conjunto de datos es impar, la mediana es el valor que se encuentra a la mitad del conjunto,+ + Si el conjunto de datos es par, la mediana es el promedio de los dos datos intermedios.

Ejemplo

{3500, 4000, 5000, 50000}

Al ser un conjunto par la mediana es el promedio de los dos datos intermedios:

(4000 + 5000) / 2 = 4500

- Moda: La moda es el valor que ocurre con más frecuencia. si hay dos modas la distribucion de los datos es bimodal, si hay más de dos modas se dice que la distribución de los datos es multimodal

## Medidas de posición:

Son valor es de la variables que nos informan del lugar que ocupa un dato dentro del conjunto de datos ordenados

Dos tipos de medidas:
Los cuartiles y los percentiles

Los cuartiles dividen el conjunto en cuatro partes: Q1 = 25%, Q2 = 50% ,  Q3 = 75%

Los percentiles dividen el conjunto en 100 partes

## Medidas de dispersión

La dispersión es el rango o extensión de los datos que se define como la diferencia entre el dato más grande y el más pequeño

Ejemplo:

{5,6,7,8,9}

rango 9-5 = 4

{1,2,7,12,13}

rango 13-1 = 12

Una forma para medir la dispersión de un conjunto de datos es através de la **desviación estandar**.

La desviación estandar mide qué tanto los datos se desvían de la media y se detona comunmente por sn.

La desviasión estándar es el cuadrado de la varianza.

El **rango intercuartilico** también es una medida de dispersión.