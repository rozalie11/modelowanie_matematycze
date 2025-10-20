xi <- c(-1, 1, 5)
pi <- c(1/3, 1/3, 1/3)

Fx <- cumsum(pi)

# 3. Definicja punktów krańcowych dla segmentów
# Lewe punkty x (początek każdego segmentu poziomego)
x_start <- c(-2, xi) 
# Prawe punkty x (koniec każdego segmentu poziomego)
x_end <- c(xi, 6) # Używamy '6' jako końca dla ostatniego segmentu

# Wartości y (wysokość każdego segmentu)
y_level <- c(0, Fx) # Zaczynamy od 0, a potem mamy Fx

#puste płótno
plot(x = 0, y = 0, type = "n", #'n' = nie rysuj niczego
     main = "Wykres Dystrybuanty F(x)",
     xlab = "x",
     ylab = "F(x) = P(X <= x)",
     ylim = c(0, 1.1),
     xlim = c(-2, 6))

#rysujemy linie od (x_start, y_level) do (x_end, y_level)
segments(x0 = x_start, y0 = y_level,
         x1 = x_end, y1 = y_level,
         col = "blue", lwd = 2) #lwd grubosc linii

#przedział domknięty
points(xi, Fx, pch = 16, col = "red", cex = 1.5) #16 to zamalowany okrag; cex rozmiar kropki

#przedział otwarty
#Wysokość: 0, Fx[1], Fx[2] (czyli 0, 1/3, 2/3)
#Używamy c(0, Fx[1:(length(Fx)-1)])
empty_y <- c(0, Fx[1:(length(Fx)-1)])
points(xi, empty_y, pch = 1, col = "red", cex = 1.5)

#liie siatki
grid()