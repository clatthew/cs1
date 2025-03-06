# Exercise 2.05
n <= 10
p <- 0.7
# i
set.seed(37)
reps <- 500
S <- rbinom(reps, n, p)
# ii
# a
table(S)
# b
table(S)/reps
# c
x = 0:10
P = round(dbinom(x, n, p),3)
P
# d
length(S[S<=6])/length(S)
# ii 
# a
hist(
	S,
	breaks=-0.5:n+0.5
)
# b
lines(
	x-0.5, 
	reps * dbinom(x, n, p), 
	type="o", 
	col="blue"
)
# iv
# a
sum(dbinom(x, n, p)*x)/n
mean(S)
# b
sample_var = sum((S-mean(S))**2)/(reps-1)
sample_var
sqrt(sample_var)
sd(dbinom(x, n, p)*x)
# c
quantile(S, 0.75)-quantile(S, 0.25)
qbinom(.75, n, p)-qbinom(.25, n, p)
# v
average <- rep(0, 500)
for (i in 1:500) {average[i] <- sd(S[1:i])}
plot(
	1:500, 
	average[1:500]
)



# iii c
par(mfrow=c(2, 2))
reps <- 500
set.seed(37)
S <- rbinom(reps, n, p)
hist(
	S,
	breaks=-0.5:n+0.5,
	main="n=500"
)
lines(
	x-0.5, 
	reps * dbinom(x, n, p), 
	type="o", 
	col="blue"
)
reps <- 1000
set.seed(37)
S <- rbinom(reps, n, p)
hist(
	S,
	breaks=-0.5:n+0.5,
	main="n=1000"

)
lines(
	x-0.5, 
	reps * dbinom(x, n, p), 
	type="o", 
	col="blue"
)
reps <- 2000
set.seed(37)
S <- rbinom(reps, n, p)
hist(
	S,
	breaks=-0.5:n+0.5,
	main="n=2000"

)
lines(
	x-0.5, 
	reps * dbinom(x, n, p), 
	type="o", 
	col="blue"
)
reps <- 5000
set.seed(37)
S <- rbinom(reps, n, p)
hist(
	S,
	breaks=-0.5:n+0.5,
	main="n=10000"

)
lines(
	x-0.5, 
	reps * dbinom(x, n, p), 
	type="o", 
	col="blue"
)
