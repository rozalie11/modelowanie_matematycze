#zadanie 1
#a)
x <- c(-50, 40, 50); p <- c(3/8, 1/4, 3/8)
#wartość oczekiwana
#E(x) = sum(x*p)
EX <- sum(x*p)
#wariancja
#obliczona wartośc oczekiwana = m; Var(x) = sum((x - m)^2 * p)
VarX <- sum((x - EX)^2 * p)

#wariancja drugi wzór
#Var(X) = E(X^2) - (E(X))^2
EX2 <- sum((x^2) * p)
VarX2 <- EX2 - EX^2

#odchylenie standardowe
#odch_stad = sqrt(wariancja)
od_st <- sqrt(VarX)