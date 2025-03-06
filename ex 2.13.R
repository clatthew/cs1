# Exercise 2.13
l <- 3
# i
	# a
	qexp(.8, l)
	# b
	qexp(.95, l)
	# c
	qexp(.3, l, lower=FALSE)
# ii
qexp(.5, l)
# iii
qexp(.75, l)-qexp(.25, l)