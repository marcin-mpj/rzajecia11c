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