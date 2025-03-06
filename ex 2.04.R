# Exercise 2.04
n <= 10
p <- 0.7
# i
# a
qbinom(0.8,n, p)
# b
qbinom(0.95, n, p)
# c
qbinom(0.6, n, p)
# ii
qbinom(0.5, n, p)
# iii
qbinom(0.75, n, p)-qbinom(0.25, n, p)
# iv
prob <- seq(0, 1, 0.01)

plot(
	prob,
	qbinom(prob, n, p),
	type="s",
	xlab="cumulative probability",
	ylab="number of survivors"
)