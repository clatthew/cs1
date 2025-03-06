# Exercise 2.08
# Hypergeometric with n=5, k=30, N=58
n <- 5
k <- 30
N <- 58
# i
	# a
	(58-30)*(57-30)*(56-30)*(55-30)*(54-30)/factorial(58)*factorial(53)
	# b
	dhyper(0, k, N-k, n)
	# c
	dbinom(0, 5, k/N)
# ii
par(mfrow=c(2,2))
for (n in seq(5, 20, 5)){
	x <- 0:n
	barplot(
		dhyper(x, k, N-k, n), 
		names=x, 
		main=paste("sample of",n),
		xlab="number of qualified in sample",
		ylab="probability of choosing sample"
	)
}
# iii
n <- 5
phyper(2, k, N-k, n, lower=FALSE)
# iv
par(mfrow=c(1,1))
x <- 0:n
plot(x, phyper(x, k, N-k, n), type="s")
# v
qhyper(0.75, k, N-k, n)
# vi
reps <- 2000
set.seed(67)
S <- rhyper(reps, k, N-k, n)
table(S)
# vii
length(S[S>2])/length(S)
# viii
	# a
	mean(S)
	n * k / N
	# b
	sqrt(sum( (S-mean(S))**2 )/(reps-1))
	sqrt(n*k*(N-k)*(N-n)/(N*N*(N-1)))
	# c
	quantile(S, 0.75)
# ix
x <- 0:5
	# a
	plot(
		x,
		dbinom(x, 5, k/N),
		type="o"
	)
	# b
	lines(
		x,
		dhyper(x, k, N-k, n),
		type="o",
		col="red"
	)
	# c
	N = 116
	k = 30 * 116 / 58
	lines(
		x,
		dhyper(x, k, N-k, n),
		type="o",
		col="green"
	)
