Exercise 2.07
p <- 0.8
n <- 9
k <- 4
# i
print("probability that the 4th success occures on the ninth trial")
	# a
	choose(n-1, k-1) * (1-p)**(n-k)*p**k
	# b
	dnbinom(n-k, k, p)
# ii

par(mfrow=c(2,2))
k <- 1
x <- k:n
barplot(
	dnbinom(x-k, k, p), 
	names=x,
	xlab="trial of kth success",
	ylab="probability",
	main="k=1"
)
k <- 2
#x <- k:n
barplot(
	dnbinom(x-k, k, p), 
	names=x,
	xlab="trial of kth success",
	ylab="probability",
	main="k=2"
)
k <- 3
#x <- k:n
barplot(
	dnbinom(x-k, k, p), 
	names=x,
	xlab="trial of kth success",
	ylab="probability",
	main="k=3"
)
k <- 4
#x <- k:n
barplot(
	dnbinom(x-k, k, p), 
	names=x,
	xlab="trial of kth success",
	ylab="probability",
	main="k=4"
)
# iii
	# a
	pnbinom(2, 4, p)
	# b
	pnbinom(3, 4, p, lower=FALSE)
# iv
	# a
	qnbinom(0.75, k, p)
	# b
	qnbinom(0.25, k, p)
# v
par(mfrow=c(1,1))
reps <- 2000
set.seed(57)
S <- rnbinom(2000, k, p)
table(S)
# vi
	# a
	hist(
	S,
	breaks=-0.5:7.5
	)
	# b
	x <- 0:7
	lines(
		x, 
		reps*dnbinom(x, k, p), 
		type="o", 
		col="blue"
	)
# vii
	# a
	length(S[S<=2])/length(S)
	# b
	length(S[S>3])/length(S)
# viii
	# a
	sqrt(k*(1-p)/p**2)
	sqrt(sum( (S-mean(S))**2 )/(reps-1))
	
	# b
	k*(1-p)/p
	print("sample mean and SD are very close to those of the distribution")
# ix
set.seed(57)
sum(rgeom(k, p))
set.seed(57)
rnbinom(1,k,p)