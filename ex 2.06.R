Exercise 2.06
p <- 0.51
# i
	# a
	(1-p)**3 * p
	# b
	dgeom(3, p)
	print("R's geom function counts the number of failures")
# ii 
x = 0:10
barplot(
	dgeom(x, p),
	names=x, 
	col="red", 
	xlab="# of daughters", 
	ylab="probaility",
	main="Probability of having daughters before first son"
)
# iii
	# a
	pgeom(4, p)
	# b
	pgeom(2, p, lower=FALSE)
	# c
	dgeom(1, p)
# iv
plot(x, pgeom(x, p), type="s")
# v
qgeom(0.9, p)
qgeom(0.6, p)
# vi
set.seed(47)
reps <- 1000
S = rgeom(reps, p)
table(S)
# vii
	# a
	length(S[S<=4])/length(S)
	length(S[S>2])/length(S)
	length(S[S==1])/length(S)
	# b
	quantile(S, 0.9)
	quantile(S, 0.6)
# viii
	# a
	mean(S)
	(1-p)/p
	print("The mean is overstated by the sample")
	# b
	sum( (S - mean(S))**2 )/(reps-1)
	(1-p)/p**2
	print("The SD is overstated by the sample")
