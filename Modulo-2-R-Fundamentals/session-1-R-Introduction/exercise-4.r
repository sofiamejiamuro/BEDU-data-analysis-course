# EJEMPLO 4. Descarga y lectura de data sets.

# Objetivo
# Fijar y conocer ruta de trabajo
# Lectura de ficheros CSV, locales y en repositorio
# Manejo de objetos

# Requisitos
# R, RStudio
# Prework
# Desarrollo

# Ejecutar las líneas de comando y tratar de comprender que realiza cada parte de sus entradas

# Se pueden obtener diversos data sets de Kaggle, visita el sitio para que te familiarices
# La siguiente es una base de datos de los libros más vendidos en Amazon del 2009 - 2019

# Obtenemos la ruta del directorio de trabajo

getwd()

# Fijando el directorio de trabajo

setwd("c:/Users/User/Documents/Bedu/") # Depende del usuario
setwd("/Users/sofiamejiamuro//Desktop/data-analysis-course/Modulo-2-R-Fundamentals/datasets/")
dir()

# La función read.csv será util para leer fichero .csv

read.csv("bestsellers with categories.csv") # El archivo csv debe estar en el directorio de trabajo
read.csv("best_sellers.csv")
# se puede asignar a un objeto el fichero leido anteriormente

amazon.books <- read.csv("best_sellers.csv")
# Las últimas 5 entradas
tail(amazon.books)

# Las primeras 5 entradas
str(amazon.books)

head(amazon.books)

# También se puede leer el fichero directamente desde una URL

songs <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-con-R-2021/main/Sesion-01/Data/Top%20500%20Songs.csv")
songs
head(songs)

tail(songs) 
str(songs)
dim(songs)

# Con el punto y coma para que se lean los dos comandos
tail(songs); str(songs)

# Calculamos la dimensión de la base de datos

dim(best_sellers)
str(best_sellers)

# El tipo de objeto se puede saber utilizando class()

class(best_sellers)
