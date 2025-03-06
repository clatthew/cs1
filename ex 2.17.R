# Exercise 2.17
claim_dist <- function(x) {
	return (
		1-exp(
			-3*x**.5
		)
	)
}
# i
	# a
	reps <- 1000
	set.seed(47)
	u <- runif(reps, 0, 1)
	# b
	S <- (-1/3*log(1-u))**2
	# c
	print(
		paste(
			"mean of claims:",
			round(mean(S),4),
			"SD of claims:",
			round(
				sqrt(sum((S-mean(S))**2)/(reps-1)),
				4
			)
		)
	)
# ii
	# a
	curve(dbeta(x, 0.5, 2),0, 1, col="blue", ylab="f(x)")
	# b
	x <- seq(0, 1, .01)
	lines(x, dbeta(x, 2, .5), col="green")
	# c
	lines(x, dbeta(x, .5, .5), col="red")
# iii
	# a
	pbeta(.8, 2, .5)-pbeta(.2, 2, .5)
	# b
	pbeta(.7, .5, .5, lower=FALSE)
# iv
qbeta(.65, .5, 2, lower=FALSE)