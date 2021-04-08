c(1:5)

print (1:5)
print(c(1:5))

iloczyn_wektorow <- function(v1, v2)
{return (v1*v2)}

iloczyn_wektorow(c(1,2,4,5) , c(1,2))

wektor <- c(1,2,4,5)
length(wektor)

w1 = c(1,2,3)
w2 = c(1,2,3)

w1*w2

w1-1

plikDane <-read.csv2("dane.csv")
waga <- plikDane$waga # wektor
waga1 <- plikDane[2]  # ramka danych
waga2 <-  plikDane[,2] # wektor

list(c("x1","x2","x3"),c("y1","y2","y3"))
matrix(1:9,3)

# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(matrix(ncol = 3, nrow = 0))
x <- c("name", "age", "gender")
colnames(df) <- x


names <- c("v","u","w")
df <- data.frame() 
for (k in names) {df[[k]] <- as.numeric() }


#Japan Population Data Frame - Step 1    
Japan.Population <- data.frame(11, "Japan", 126860301,    127202192, "-0.27%")      

#Naming the Data Frame - Step 2  
names(Japan.Population) <- c("Rank", "Country", "Population.2019", "Population.2018", "Growth.Rate")  


# Tworzenie ramki danych
listaDane = list(list("kol1","kol2","kol3"),list("w1",2,3), list("w2",2,3),list("w3",3,4))

dl1 <- length(listaDane)
for (i in 2:dl1){
  Ramka1 <- rbind(Ramka,listaDane [[i]]) 
  Ramka <- Ramka1
}

Ramka1 <- rbind(Ramka,listaDane [[2]])


listaDane [[1]]
dl =length(listaDane [[1]])
df <- data.frame(matrix(ncol = dl, nrow = 0))
x <- listaDane [[1]]
colnames(df) <- x

length(listaDane[[1]])

df<-data.frame(index=1:3, imie=c("jan","alina","bartek"), plec=c("M","K","M"))
pom<-1
for (i in 1:pom){    print(i)}

p <-c(1,2)
p+c(3)


############ZADANIA

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
    jakaFunkcja="median"
    if (jakaFunkcja=="mean"){Obliczenia <- mean(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="median"){Obliczenia <- median(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="min"){Obliczenia <- min(kolumnaDoAnalizy, na.rm = TRUE)}
    if (jakaFunkcja=="max"){Obliczenia <- max(kolumnaDoAnalizy, na.rm = TRUE)}
    wynik1 = list(wybranyPlik, nazwaKolumny , jakaFunkcja, Obliczenia )
    wynik = c(wynik,wynik1)
  }
  
  return(wynik)
}

Wynik <- liczZplikow("smogKrakow","142_pm1","median",2)
print(Wynik)

sciezka <-"smogKrakow"
listaPlikow <- list.files(sciezka)
wybranyPlik <- listaPlikow[1]
plikDane <-read.csv( paste( sciezka , wybranyPlik, sep="/"))
nazwaKolumny  <- "142_pm1"
filtrKolumny <-  paste("X",nazwaKolumny, sep = "")
kolumnaDoAnalizy  <- plikDane[,filtrKolumny]
kolumnaDoAnalizy <-as.numeric(kolumnaDoAnalizy)
jakaFunkcja="median"
if (jakaFunkcja=="mean"){mean(kolumnaDoAnalizy, na.rm = TRUE)}
if (jakaFunkcja=="median"){median(kolumnaDoAnalizy, na.rm = TRUE)}
if (jakaFunkcja=="min"){min(kolumnaDoAnalizy, na.rm = TRUE)}
if (jakaFunkcja=="max"){max(kolumnaDoAnalizy, na.rm = TRUE)}
