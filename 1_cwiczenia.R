'install.packages("httr")
install.packages("jsonlite")

library(httr)
require(jsonlite)'

endpoint <- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77"
getWeather <- GET(endpoint)
weatherText <- content(getWeather, as="text")
weatherJson <- fromJSON(weatherText)
weatherDF <- as.data.frame(weatherJson)

x<-124.5
x
class(x)
is.vector(x)
x<-"123"
class(x)

?c

x<-c(1,2,3,4,5,6,7,8,9,10)
y<-2
y<-as.vector(c(2),mode="integer")
y

class(x)

x<-as.integer(x)

#komntarz +,-,*,/  działa na każdym elemencie wektora

wynik <- x+y
class(wynik)
wynik <- x-y
class(wynik)
wynik <- x*y
class(wynik)
wynik <- x/y
class(wynik)


v1<-c(1,2,3,4,5,6,7,8,9,10)
v1
v2<-as.vector(c(3), mode="integer")
v2

wynik = v1-v2
wynik
wynik = v1+v2
wynik
wynik = v1*v2
wynik
wynik = v1/v2
wynik

wynik1 = v1/v2
wynik1
wynik2 = v1%%v2 # reszta z dzielenia
wynik2
wynik3 = v1%/%v2 # calość z dzielenia
wynik3

vektor <- c(v2,TRUE,FALSE,-1,3)
vektorl <- as.logical(vektor)
vektor3 <- as.numeric((vektorl))
vektorString <- c(vektor3,"1",'2',"3","abc")
vektorInt = as.numeric(vektorString) # wstawia NA NotAvaible

vektorInt[1]

brakujace <- is.na(vektorInt)
vektorInt[brakujace]
vektorInt[!brakujace]
vektorInt[complete.cases(vektorInt)]

#LISTY

lista<-list(1,2,3,4,5)
lista2<-list(1,"2",3,4,5,"test",lista, c(1,2,3))
str(lista2)
?c
lista2[2]
lista2[8]
lista2[[8]]

lista2[[8]] [lista2[[8]] >= 2] #filtrowanie wektora
lista2[[8]] [lista2[[8]] > 1] #filtrowanie wektora

c(1,2,3,4,5,6) [ c(1,2,3,4,5,6) > 3]
?NaN
class(lista2[8])
class(lista2[[8]])


plec<-c("mężczyzna","kobieta","mężczyzna")
plecFactor<-as.factor(plec)
str(plecFactor)
as.numeric(plecFactor)
plecFactor2<-factor(plec,levels = c("mężczyzna","kobieta"))
str(plecFactor2)

# Ramka danych Data Frame
df<-data.frame(index=1:3, imie=c("jan","alina","bartek"), plec=plecFactor)
df2<-data.frame(index=1:3, imie=c("jan","alina","bartek"), plec=plecFactor, stringsAsFactors = TRUE)

df3 <-read.table("1_dane.csv",sep = ";", header = TRUE)
df4 <-read.csv2("1_dane.csv")

# Pętla
i<-1

for (i in 1:10){
  if(i==2){}
  else{
  print(i)}
}

for (i in 1:10){
  if(i==2){next}
  else{
    print(i)}
}

for (i in 1:10){
  if(i==2){break}
  else{
    print(i)}
}

i<-1

while(i<=10){
  if(i>5){break}
  if(i==2){
    i<-i+1
    }
  print(i)
  i<-i+1
}


