# Exercise 2.03
n <= 10
p <- 0.7
# i
# a
pbinom(7, n, p)
# b
pbinom(5, n, p, lower=FALSE)
# c 
pbinom(7, n, p, lower=FALSE)
# d
pbinom(5, n, p)
# e
dbinom(9, n, p)

# iii
par(mfrow=c(2,1))
x <- 0:10
barplot(
	pbinom(x, n, p),
	names=x,
	col="blue", 
	xlab="number of survivors", 
	ylab="cdf",
	main="cdf of binomial model of survival for n=10, p=0.7"
)
# iv
plot(
	x,
	pbinom(x, n, p),
	type="s",
	xlab="number of survivors", 
	ylab="cdf",
	main="cdf of binomial model of survival for n=10, p=0.7"
)
