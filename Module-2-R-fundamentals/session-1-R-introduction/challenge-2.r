#Realizar la lectura de los datos y seguir las instruccines que se muestran a continuación.

#Utiliza el data frame de ventas de libros por Amazon y realiza las siguientes actividades:

#1. Almacenalo en un data frame que se llame amazon.best
setwd("/Users/sofiamejiamuro//Desktop/data-analysis-course/Modulo-2-R-Fundamentals/datasets/")
dir()

amazon.best <- read.csv("best_sellers.csv")
amazon.best

#2. Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame (Hint: consulta la ayuda sobre las funciones t y as.data.frame)
t(amazon.best)

tAmazon <- t(amazon.best)

tAmazon

tAmazon <- data.frame(t(amazon.best))
is.data.frame(tAmazon)


#3. Usa el nombre de los libros como el nombre de las columnas (Hint: consulta la documentación de names, tienes que hacer algo similar a names(dataframe) <- vector de nuevos nombres)
colnames(tAmazon) <- tAmazon$Name

#4. ¿Cúal es el libro de menor y mayor precio?
which.min(tAmazon['Price',])
which.max(tAmazon['Price',])

tAmazon

## Resolución correcta
tamazon3 <- t(amazon.books)
class(tamazon3)
tamazon3 <- as.data.frame(tamazon3)
names(tamazon3) <- amazon.books$Name

which.max((tamazon3["Price",]))
tamazon3[,70]  

which.min(tamazon3["Price",])
tamazon3[,43]
