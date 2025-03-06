# Exercise 2.15
a <- 2
l <- 1.5
# i
x <- 3
	# a
	# b
	dgamma(x, a, l)
# ii
curve(dgamma(x,a,l), 0, 8, ylab="f(x)", main="PDF of Gamma(2, 1.5)")
# iii
x <- seq(0, 8, .01)
	# a
	lines(x, dgamma(x, a, 1), col="red", lty=2)
	# b
	lines(x, dgamma(x, a, .5), col="green", lty=5)
# iv
legend(
	"topright", 
	title="Legend", 
	c("l=1.5", "l=1", "l=0.5"),
	lty=c(1, 2, 5),
	col=c("black","red","green")
)
# v
	# a
	pgamma(2, a, l, lower=FALSE)
	# b
	pgamma(3, a, l) - pgamma(1, a, l)
# vi
	IQR <- qgamma(.75, a, l)-qgamma(.25, a, l)
# vii
	reps <- 2000
	set.seed(57)
	S <- rgamma(reps, a, l)
# viii
	# a
	hist(
		S,
		main="Sinkhole claim amounts",
		xlab="claim amount / $m",
		prob=TRUE
	)
	# b
	x <- seq(0, 8, .01)
	lines(x, dgamma(x, a, l), col="red")
# ix
	# a
	length(S[S>2])/length(S)
	# b
	(length(S[S<3])-length(S[S<1]))/length(S)
# x
	# a
	print(
		paste(
			"SD:", round(sqrt(a/l**2),4), "sample SD:", round(sqrt( sum((S-mean(S))**2)/(reps-1) ),4)
		)
	)
	# b
	print(
		paste(
			"IQR:", round(IQR,4), "sample IQR:", round(quantile(S,.75)-quantile(S, .25),4)
		)
	)