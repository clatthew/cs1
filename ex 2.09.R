Exercise 2.09
mu <- 2
# i
	# a
	x <- 4
	mu ** x * exp(-mu) / factorial(x)
	# b
	dpois(x, mu)
# ii
par(mfcol=c(2,2))
for (mu in c(2, 5, 10, 20)){
	x <- 1:40
	barplot(
		dpois(x, mu),
		names=x,
		main=paste("mu=", mu, sep="")
	)
}
# iii
mu <- 2
ppois(2, mu, lower=FALSE)
# iv
x <- 0:10
par(mfcol=c(1,1))
plot(x, ppois(x, mu), type="s")
# v
qpois(0.75,mu)-qpois(0.25,mu)
# vi
set.seed(77)
reps <- 2000
S <- rpois(reps, mu)
table(S)
hist(S, breaks=-0.5:(max(S)+0.5))
# vii
length(S[S>=3])/length(S)
# viii
	# a
	sqrt(mu)
	# b
	sqrt(sum( (S-mean(S))**2 )/(reps-1))
	quantile(S, .75)-quantile(S, .25) 
# ix
average <- rep(0, reps)
x <- 1:reps
for (i in x){
	average[i] <- mean(S[1:i])
}

plot(x, average, type="o")
abline(h=mu, col="red", lty=2, lwd=2)