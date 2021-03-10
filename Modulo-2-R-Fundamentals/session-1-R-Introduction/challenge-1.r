# Abre el fichero que se encuentra en el repositorio y obten sus carácteristicas, para finalmente imprimir los resultados en un fichero CSV.

# 1. Leer el archivo "netflix_titles.csv" desde Github (https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv), almacenarlo en un df llamado netflix

read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")
netflix <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")
netflix

# 2.Obtener la dimensión y el tipo de objeto que se obtiene

dim(netflix)
class(netflix)

# 3. Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015 (Hint: primero podrías filtrar solo aquellas filas del data frame que corresponden a estrenos después del 2015, por ejemplo, dataframe[columna > 2015, ])

head(netflix)
netflix$release_year > 2015
net.2015 <- netflix[netflix$release_year > 2015,]
net.2015
dim(net.2015)

#4. Escribir los resultados en un archivo .csv llamado res.netflix.csv (Hint: consulta la función write.csv)
write.csv(net.2015, "/Users/sofiamejiamuro/Desktop/data-analysis-course/Modulo-2-R-Fundamentals/session-1-R-Introduction/res.netflix.csv", row.names = FALSE)


