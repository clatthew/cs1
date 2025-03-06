# Exercise 2.14
l <- 3
# i
reps <- 500
set.seed(37)
S <- rexp(reps, l)
# ii
	# a
	hist(
		S,
		xlab="waiting time",
		main="Waiting times with rate 3",
		prob=TRUE
	)
	# b
	x <- seq(0, 2, .01)
	lines(
		x, 
		dexp(x, l), 
		type="l", 
		col="purple"
	)
# iii
	# a
	length(S[S>.5])/length(S)
	# b
	length(S[S<3])/length(S)
	# c
	(length(S[S<2.5])-length(S[S<1.5]))/length(S)
# iv
print(
	paste(
		"mean:", round(1/l, 4), "sample mean:", round(mean(S),4)
	)
)
print(
	paste(
		"SD:", round(1/l, 4), "sample SD:", round(sqrt(sum((S-mean(S))**2)/(reps-1)),4)
	)
)
print(
	paste(
		"IQR:", 
		round(qexp(.75, l)-qexp(.25, l), 4), 
		"sample IQR:", 
		round(quantile(S,.75)-quantile(S,.25),4))
)
print(
	paste(
		"95th percentile:", 
		round(qexp(.95, l),4), 
		"sample 95th percentile:", 
		round(quantile(S,.95),4)
	)
)
# v
median <- rep(0, reps)
x <- 1:reps
for (i in x){
	median[i] <- quantile(S[1:i], .5)
}
plot(x, median, xlab="rep")
abline(h=qexp(.5,l), lty=2, col="red")