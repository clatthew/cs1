# Exercise 2.01
# i
R=0:36
# ii
length(R[R<20])/length(R)
length(R[R>=10])/length(R)
length(R[3<R<=9])/length(R)
# iii
set.seed(77)
S1 = sample(R, 1000, replace=TRUE)
# iv
#hist(S1, breaks=length(R), xaxt='n')
#axis(side=1, at = seq(0.5,39.5,5), labels=seq(0,39,5))
hist(S1, breaks=-0.5:37.5)
# v
length(S1[S1<20])/length(S1)
length(S1[S1>=10])/length(S1)
length(S1[3<S1&S1<=9])/length(S1)
mean(S1)
median(S1)
sd(S1)
skew <- sum((S1-mean(S1))^3)/length(S1)
skew
CoS <- skew/sd(S1)^3
CoS