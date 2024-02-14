getwd()
nuevo_dir <- "c:/Prac_Est_Des"
setwd(nuevo_dir)
vectorx<- c(1,2,3,4,5)
vectory<- c(9.1,2.4,7.5,1.3,3.4)

#PRACTICA ESTADISTICA DESCRIPTIVA

#Ejercicio 1
#Un vector en R es una estructura matemática que representa una secuencia ordenada de números reales.
#En programación, especialmente en lenguajes como R o Python, un vector en R 
#se refiere a un arreglo unidimensional que contiene elementos numéricos.

#Un vector en R contiene elementos homogéneos, es decir, todos los elementos son del mismo tipo (por ejemplo, todos números reales). 
#En cambio, una lista puede contener elementos de diferentes tipos.

#Los vectores en R suelen admitir operaciones vectoriales, como la suma de vectores o la multiplicación por un escalar
#mientras que las listas no tienen estas operaciones de manera predeterminada.

#Para el vector x con 5 números, la longitud es 5.Para el vector y con números decimales, la longitud no se especifica, ya que podría tener cualquier cantidad de elementos decimales.
#integer: Se refiere a datos numéricos enteros, es decir, números sin parte decimal (por ejemplo, 1, -5, 100).

#Double: double: Se refiere a datos numéricos de punto flotante, que pueden contener parte decimal (por ejemplo, 3.14, -0.5, 2.0).

#Implicaciones computacionales de usar vectores con datos decimales (double) en comparación con vectores que almacenan valores enteros (integer)


#La elección entre integer y double dependerá de la naturaleza de los datos y los requisitos de precisión en un contexto específico.

suma<- vectorx + vectory
resta <- vectorx - vectory
multip <- vectorx * vectory
divis <- vectorx/vectory
vectorx^vectory

#Ejercicio 3
vectory^2

#Ejercicio 4
vectory*10

#Ejercicio 5
vectory + 25

#Ejercicio 6
max(vectory)

#Ejercicio 7
min(vectory)

#Ejercicio 8
abs(9.1)

#Ejercicio 9
sqrt(vectory)

#Ejercicio 10
sum(vectory)

#Ejercicio 11
list<- list(c(vectorx,vectory))
print(list)
typeof(list)
str(list)
view(list)
#Longitud ahora de 10 y los numeros enteros pasan a decimales, es decir, de integer a double.
#El programa entiende que los numeros enteros al estar con los decimales tienen que ser decimales también.

#Ejercicio 12
is.na(list)
#No lo existen

#Ejercicio 13
z<- c(29,NA,12,46,73)

#Ejercicio 14
mean(z)
#NA, la computadora entiende que hay un resultado no numérico y por ende no realiza la media
mean(z, na.rm = TRUE)

#Ejercicio 15
matriz_filas<- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), nrow=4, ncol=3)
print(matriz)
#Se colocan de arriba a abajo por defecto

#Ejercicio 16
matriz_filas<- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), nrow=4, ncol=3, byrow= T)
print(matriz_filas)

#Ejercicio 17
a<- matrix(c(1:9), nrow=3, ncol=3)
b<- matrix(c(10:18), nrow=3, ncol=3)
print(a)
print(b)

#Ejercicio 18
suma_matriz<- a+b
print(suma_matriz)
resta_matriz <- a-b
print(resta_matriz)
#menos 9 todo los valores, tiene sentido puesto que 1-10 es -9 y así sucesivamente.

#Ejercicio 19
matriz_1 <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), nrow=3, ncol=4, byrow=T)
print(matriz_1)

#Ejercicio 20
matriz_cte <- matriz_1*7
print(matriz_cte)

#Ejercicio 21
matriz_mult <- a*b
print(matriz_mult)

#Ejercicio 22
matriz_mult[2,3]
matriz_mult[2,]
matriz_mult[,3]

#PRACTICA 2
#Ejercicio 1
set.seed(8)
registros<- 100
num_cuentas <- round(rnorm(100,mean=50, sd=10))
print(num_cuentas)

#Ejercicio 2
mean(num_cuentas)

#Ejercicio 3
median(num_cuentas)

#Ejercicio 4
moda<- as.numeric(names(sort(table(num_cuentas),decreasing= T)[1]))
print(paste("La moda de las cuentas del yacimiento es:", moda))
#Ejercicio 5
maximnum<- max(num_cuentas)
minnum <- min(num_cuentas)
rango<- maximnum-minnum
print(rango)

#Ejercicio 6
quantile(num_cuentas, .25)

#Ejercicio 7
quantile(num_cuentas, .75)

#Ej 8
var(num_cuentas)

#Ej 9
sd(num_cuentas)

#Ej 10
hist(num_cuentas)

#Ej 11
plot(num_cuentas, main="Número de Cuentas", ylab= "Cuentas por Yacimiento")

#Ej 12
denso <- density(num_cuentas)
plot(denso, main<-"Gráfico de Densidad", col<- "yellow")
hist(num_cuentas, freq=F, main="Histograma y densidad", ylab="densidad")
lines(denso,lwd=2, col="Red", main="Densidad")
rug(jitter(num_cuentas))

#Ej 13
barplot(num_cuentas, names.arg=1:length(num_cuentas), main="Gráfico de Barras",
        xlab= "Yacimientos", ylab= "Cuentas", col= "blue", border= "Black")

#Ej 14
set.seed(9)
registros <- 10
tipos_artef <- c("Arma", "Alhaja", "Hueso", "Utensilio", "Moneda")
muestras_tipo_artef <- sample(tipos_artef,registros,replace=T)
print(muestras_tipo_artef)
datos_muestra <- data.frame(tipos_artef=muestras_tipo_artef)
table(datos_muestra)

material <- sample (c("Cerámico", "Lítico", "Metálico", "Mineral"), registros, replace=T)
muestras_tipo_material <- sample(material,registros,replace=T)
datos_material <- data.frame(material =muestras_tipo_material)
print(datos_material)
table(datos_material)

periodo_cult <- sample(c("Prehistoria", "Romano", "Islámico", "Moderno"), registros, replace=T)
muestras_tipo_periodo <- sample(periodo_cult,registros,replace=T)
datos_periodo <- data.frame(periodo_cult = muestras_tipo_periodo)
table(datos_periodo)

Ubicacion_artef <- sample(c("Valencina", "Itálica", "Córdoba", "Munigua"), registros, replace=T)
muestras_tipo_ubicacion <- sample(Ubicacion_artef,registros,replace=T)
datos_ubi <- data.frame(Ubicacion_artef = muestras_tipo_ubicacion)
print(datos_ubi)
table(datos_ubi)


