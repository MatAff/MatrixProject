
###
# Sum of vector using Matrix algebra
###

X <- matrix(c(2,5,7,3,4))
ones <- matrix(rep(1,5))

sumVal <- t(ones) %*% X
sumVal

sum(vec)

###
# Mean of vector
###

meanVal <- 1/nrow(vec) * t(ones) %*% X
meanVal == mean(X)

###
# Deviation scores
###

P <- (ones %*% t(ones))/nrow(vec)
Q <- diag(5) - P
dX <-  Q %*% X

###
# Idempotency
###

P %*% P
P

# These appear identical but why is the below statement FALSE??? 
P %*% P == P

###
# Variance
###

Var <- 1/(nrow(X)-1) * t(dX) %*% dX
Var 
var(X)
