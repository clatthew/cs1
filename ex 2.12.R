# Exercise 2.12
l <- 3
# i
	# a
	pexp(0.5, l, lower=FALSE)
	# b
	pexp(3, l)
	# c
	pexp(2.5, l) - pexp(1.5, l)
# ii
x <- seq(0, 5, .01)
curve(
	pexp(x, l), 
	0, 
	5, 
	col="purple", 
	main=paste("CDF of exponential with rate", l),
	xlab="x",
	ylab="F(x)=P(X<x)"
)