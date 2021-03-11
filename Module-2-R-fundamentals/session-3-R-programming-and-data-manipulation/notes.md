# Introducción 

Un **diagrama de dispersión**, **gráfica de dispersión** o **gráfico de burbujas** es un tipo de diagrama matemático que utiliza las coordenadas cartesianas para mostrar los valores de dos variables para un conjunto de datos.

Son útiles para reconocer tendencias en datos.  Se toman dos variables de tipo cuantitativo. se pueden observar dos tipos de correlación. Cuando hay una alta dispersión de puede suponer qeu la correlación es cercana a cero y cuando tenemos poca disperción se puede deber a correlaciones cercanas a 1 o a -1. Correlaciones positivas y negativas

La correlación se puede obtener mediante el comando 

```r
cor()
```

## Boxplots y outliers

Es un método para representar graficamente una serie de datos numéricos a través de sus cuartiles

El máximo interés del box-plot es visualizar la distribución de una variable numérica de la manera más simplificada posible. Sólo utiliza los valores de los cuartiles, los extremos (q1 - 1.5IQR y q3 + 1.5IQR) y valores raros o outliers.


## Histograma

Es una gráfica de la distribución de un conjunto de datos. Es un tipo especial de gráfica de barras, en la cual una barra va pegada a la otra, es decir no hay espacio entre las barras. Cada barra representa un subconjunto de los datos. Un histograma muestra la acumulación ó tendencia, la variabilidad o dispersión y la forma de la distribución. Un histograma es una gráfica adecuada para representar variables continuas, aunque también se puede usar para variables discretas. Es decir, mediante un histograma se puede mostrar gráficamente la distribución de una variable cuantitativa o numérica. Los datos se deben agrupar en intervalos de igual tamaño, llamados clases.

## Series de tiempo

Es un conjunto de valores observados durante una serie de periodos temporales, secuencialmente ordenada. Son variables estadísticas bidimensionales en donde el tiempo es la variable independiente, y la otra es la variable dependiente.

Se construyen modelos de series de tiempo para:

- Obtención del mecanismo
- Estudio de su evolución futura o predicción.

Se realiza:

- Analizando los componentes o factores que determinan los resultados de la información.

El método clásico para el análisis de series de tiempo identifica cuatro componentes:

- TENDENCIA (T).- El movimiento general a largo plazo de los valores de la serie de tiempo (Y) sobre un extenso periodo de años.

- FLUCTUACIONES CÍCLICAS (C).- Movimientos ascendentes y descendentes respecto de las tendencias recurrentes, con una duración de varios años.

- VARIACIONES ESTACIONALES (E).- Movimientos ascendentes y descendentes respecto de la tendencia que se consuman en el término de un año y se repiten anualmente, estas variaciones suelen identificarse con base en datos mensuales o trimestrales.

- VARIACIONES IRREGULARES (I).- Las variaciones erráticas respecto de la tendencia que no puedan atribuirse a las influencias cíclicas o estacionales. A continuación, se muestran las partes de una serie de tiempo.

Existe la descomposición aditiva y multiplicativa las cuales ayudan a entender el comportamiento de la serie de tiempo.