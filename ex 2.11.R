# Exercise 2.11
l <- 3
# i
	# a
	x <- 2
	l*exp(-l*x)
	# b
	dexp(x, l)
# ii
	# a
	x <- seq(0, 6, .01)
	plot(x, dexp(x, l), type="l", col="blue")
	# b
	curve(dexp(x, l),0,6, col="green")
	# c
	plot(x, type="n", xlim=c(0, 6), ylim=c(0,3))
	lines(x, dexp(x, l), type="l", col="purple")
# iii
curve(dexp(x, l),0,6, col="blue")
	# a
	lines(x, dexp(x, 6), type="l", col="purple", lty=2)
	# b
	lines(x, dexp(x, 1.5), type="l", col="green", lty=5)
# iv
legend(
	"topright", 
	title="Legend", 
	c("l=2", "l=6", "l=1.5"), 
	lty=c(1, 2, 5), 
	col=c("blue", "purple", "green")
)