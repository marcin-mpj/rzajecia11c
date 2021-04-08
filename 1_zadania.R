#1. Napisz funkcję sprawdzająca czy 1 liczba jest podzielna przez druga użyj - %%

CzyPodzielna <- function (licznik, mianownik)
{
  reszta <- licznik%%mianownik
  if (reszta == 0) {wynik <- TRUE} else { wynik<- FALSE}
  return(wynik)
}

#1.TEST
print(CzyPodzielna(10,5))
print(CzyPodzielna(125,5))
print(CzyPodzielna(1,5))

#2. Pociąg z Lublina do Warszawy przejechał połowę drogi ze średnią prędkością 120 km/h.
#Drugą połowę przejechał ze średnią prędkością 90 km/h.
#Jaka była średnia prędkość pociągu.

v1<-120
v2<-90
arytmetczyna <- (v1+v2)/2
print(arytmetczyna) #:)

s<-1000
sp = s/2

#v1 = sp/t1
t1 = sp/v1
t2 = sp/v2

sredniaPredkosc <- s/(t1+t2)
print(sredniaPredkosc) #nie zależy od przebytej drogi

#3. Utwórz funkcję obliczającą współczynnik korelacji r Pearsona dla 2 wektorów o tej samej długości.
#Wczytaj dane plik dane.csv i oblicz współczynnik dla wagi i wzrostu. W komentarzu napisz co oznacza wynik.

KorelacjaPearsona <- function(wektor1, wektor2)
{
  n1 <- length(wektor1)
  n2 <- length(wektor2)
  n<-n1
  s1 <- sum(wektor1)
  s2 <- sum(wektor2)
  
  w1 <- s1/n1
  w2 <- s2/n2
  
  coFunction = sum((wektor1-w1)*(wektor2-w2))
  
  sig1 =  sqrt(sum((wektor1-w1)^2))
  sig2 =  sqrt(sum((wektor2-w2)^2))
  
  rPer =  coFunction / (sig1*sig2)
  
return(rPer)
  
}
wt1 <- c(1,2,4,4)
wt2 <- c(1,1,4,6)

print(KorelacjaPearsona(wt1,wt2))
print(cor(wt1,wt2))

plikDane <-read.csv2("dane.csv")
waga <- plikDane$waga
wzrost <- plikDane$wzrost
wiek <-  plikDane$wiek

print(KorelacjaPearsona(waga,wzrost))
print(cor(waga,wzrost))

# waga i wzrost są silnie skorelowane dodatnio - wzrost rośnie to i waga rośnie

#4. Napisz funkcję zwracającą ramke danych z danych podanych przez użytkownika 
#stworzDataFrame <- function(ile=1)
#W pierwszym wierszu użytkownik podaje nazwy kolumn. w kolejnych wierszach zawartość wierszy ramki danych 
#( tyle wierszy ile podaliśmy w argumencie ile. ile=1 oznacza, że gdy użytkownik nie poda żadnej wartości jako parametr, 
#  domyślna wartością będzie 1)

stworzDataFrame <- function(defRamka, ile = 1)
{
  defKolumny<-defRamka[[1]]
  dl<-length(defKolumny)
  df<-data.frame(matrix(ncol = dl, nrow = 0))
  colnames(df) <- defKolumny
  
  dl1 <- length(defRamka)
  ileZaczytac <- min(ile+1,dl1)
  for (i in 2:ileZaczytac){
    df[nrow(df)+1,] <- defRamka [[i]]
  }
  
return(df)  
}

#TEST
listaDane = list(list("kol1","kol2","kol3"),list("w1",2,3), list("w2",2,3),list("w3",3,4),list("w4",2323,232))
Ramka1 <- stworzDataFrame(listaDane)
Ramka2 <- stworzDataFrame(listaDane,3)
# Nie było zdefiniowanych danych wejściowych więć zrobiłem to za pomocą listy list. 


#5 Napisz funkcję , która pobiera sciezkeKatalogu, nazweKolumny, jakaFunkcje, DlaIluPlikow i liczy: 
#mean, median,min,max w zależności od podanej nazwy funkcji w argumencie, 
#z katologu który podaliśmy i z tylu plików ilu podaliśmy dla wybranej nazwy kolumny. 

liczZplikow <- function(sciezka , nazwaKolumny, jakaFunkcja="mean", DlaIluPlikow=1)
{
  listaPlikow <- list.files(sciezka)
  wynik  = list()
  
  for (i in 1:DlaIluPlikow){
    wybranyPlik <- listaPlikow[i]
    plikDane <-read.csv( paste( sciezka , wybranyPlik, sep="/"))
    filtrKolumny <-  paste("X",nazwaKolumny, sep = "")
    kolumnaDoAnalizy  <- plikDane[,filtrKolumny]
    kolumnaDoAnalizy <-as.numeric(kolumnaDoAnalizy)
    if (jakaFunkcja=="mean"){Obliczenia <- mean(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="median"){Obliczenia <- median(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="min"){Obliczenia <- min(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="max"){Obliczenia <- max(kolumnaDoAnalizy, na.rm = TRUE)}
    wynik1 = list(wybranyPlik, nazwaKolumny , jakaFunkcja, Obliczenia )
    wynik = c(wynik,wynik1)
  }

  return(wynik)
}

#TEST Funkcja działa z domyślną ścieżką głoWną
Wynik1 <- liczZplikow("smogKrakow","142_pm1","mean",1)
print(Wynik1)

Wynik2 <- liczZplikow("smogKrakow","172_pressure","median",2)
print(Wynik2)

Wynik3 <- liczZplikow("smogKrakow","174_humidity","min",3)
print(Wynik3)

Wynik4 <- liczZplikow("smogKrakow","182_pm1","max",4)
print(Wynik4)

Wynik5 <- liczZplikow("smogKrakow","183_temperature","median",5)
print(Wynik5)







