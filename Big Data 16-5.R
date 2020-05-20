#Limpiar variables y environment

a <- "hola mundo"

b <- "Hoy dia habia prueba"

c <- "Pero los alumnos no estudiaron"

d <- "Hoy es sabado, yuhuu"

#Borra variables uno a uno
rm(a,b,c,d)

#Enlista las variables del environment
ls()

#Borra todas las variables
rm(list=ls())

#Recorrer numeros/rangos

1:10
20:1
-10:1
1:-10

#Generar numeros aleatorios/random

sample(1:10,1)

#Ayuda sobre funciones (por ejemplo: sample)

?sample

#Genera numeros aleatorios con reemplazo
sample(1:10,1,replace=TRUE)

##Ejercicio de prueba: Lanzar un dado cuando salga numero par
#usted obtiene el doble de su puntaje más 5, si es impar usted obtiene
#el triple de su puntaje. Ademas si en el primer lanzamiento usted
#saca 1 o 6, obtiene el doble del puntaje debe volver a lanzar y
#seguir las reglas relacionadas con el puntaje de par o impar

lanzar <- print(sample(1:6,1,replace=T))

#lanzar <- 5

lanzarDados <- if(lanzar==1 || lanzar==6){
                puntos <- (2*lanzar)
                print(puntos)
                lanzar2 <- print(sample(1:6,1,replace=T))
                if(lanzar2%%2==0){
                  puntos2 <- 2*lanzar2+5+puntos
                  print(paste("El puntaje obtenido es",puntos2))
                }else{
                  puntaje <- lanzar*3+puntos
                  print(paste("El puntaje obtenido es",puntaje))
                }
}else if(lanzar%%2==0){
  puntaje3 <- lanzar*2+5
  print(paste("El puntaje obtenido es",puntaje3))
}else{
  puntaje4 <- 3*lanzar
  print(paste("El puntaje obtenido es",puntaje4))
}

rm(list=ls())

#Vectores
a <- "hola mundo"

is.vector(a)

is.vector(2)

is.vector(FALSE)

#Crear vector 
b <- "No hubo prueba"
c <- "Va a estar mas dificil buu"

primerVector <- c(a,b,c)
primerVector

segundoVector <- c("a","b","c")
segundoVector

tercerVector <- c(1,2,3,4)
tercerVector  

#Tipologia Vector

class(primerVector)
class(segundoVector)
class(tercerVector)

#Mezclar datos en el vector

cuartoVector <- c(primerVector,4)
cuartoVector

class(cuartoVector)

#Unir dos vectores
quintoVector <- c(segundoVector,tercerVector)
quintoVector

class(quintoVector)

sextoVector <- c(FALSE,TRUE,FALSE,F,F,T)
sextoVector
class(sextoVector)

septimoVector <- c(sextoVector,segundoVector)
septimoVector
class(septimoVector)

#Capturar posiciones del vector

primerVector[2]
primerVector[1]

#Los numeros negativos indican eliminacion de elementos
primerVector[-1]
primerVector[-2]

primerVector[1:3]
primerVector[-1:-3]

#Unir posiciones entre vectores
superVector <- c(primerVector[2],sextoVector[3])
superVector

#El largo del vector
length(superVector)

length(sextoVector)

#Comparacion con listas

comprasNegocio <- list("arroz","azucar","cerveza","duraznos")
comprasNegocio

comprasNegocio1 <- c("arroz","azucar","cerveza","duraznos")
comprasNegocio1

comprasNegocio2 <- unlist(comprasNegocio)
comprasNegocio2

#Tarea
#Crea una lista de listas
#Que significa lista[[]]


lista1 <- list["finanzas","mercado de capitales", "derivados"]
lista1

lista1[[1]]

