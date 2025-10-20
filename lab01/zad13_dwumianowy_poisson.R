#wartośc oczekiwana sumy i różnicy:
#E(aX+b) = aE(X)+b
 
#wariancja transformacji liniowej:
#Var(aX+b) = a^2*Var(X)
 
#zadanie 13
#a) X~B(n=40,p=1/4)
#własności rozkładu dwumianowego:
#E(x) = n*p ; Var(x) = n*p*q

n <- 40 ; p <- 1/4
Ex <- n*p; Varx <- n*p*(1-p)
E5xmin3 <- 5*Ex -3
Var5xmin100 <- 5^2 * Varx

#b) X~Pois(lamba=4)
#własności rozkładu Poissona:
#E(x) = lambda ; Var(x) = lambda

lambda <- 4
EY <- lambda
VarY <- lambda
E5ymin3 <- 5*EY -3
Var5ymin100 <- 5^2 * VarY