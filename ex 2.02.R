# Exercise 2.02
n <- 10
p <- 0.7
x <- 6
# i
# a
factorial(n) / factorial(n-x) / factorial(x) * p**x *  (1-p)**(n-x)
# b
choose(n, x)* p**x *  (1-p)**(n-x)
# c
dbinom(x, n, p)
# ii
# a
pbinom(8, n, p, lower=FALSE)
# b
pbinom(4, n, p)
# iii
x <- 1:10
barplot(dbinom(x, n, p), names=x, col="blue")
# iv
print("7 is the modal number of survivors")
# v
sum(dbinom(x, n, p)*x)
