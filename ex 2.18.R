# Exercise 2.18
# i
x <- 120
	# a
	dnorm(x, 100, sqrt(50))
	# b
	dlnorm(x, 4.5, sqrt(.005))
# ii
	# a
	pnorm(110, 100, sqrt(50))-pnorm(80, 100, sqrt(50))
	# b
	plnorm(100, 4.5, sqrt(.005), lower=FALSE)
# iii
	# a
	qnorm(.95, 100, sqrt(50))
	# b
	qlnorm(.95, 4.5, sqrt(.005))
# iv
reps <- 1000
set.seed(58)
S <- rlnorm(reps, 4.5, sqrt(.005))
# v
	# a
	curve(dlnorm(x, 4.5, sqrt(.005)), 60, 130, col="blue")
	# b
	lines(density(S), col="red")
# vi
	# a
	length(S[S>100])/length(S)
	# b
	quantile(S, .95)