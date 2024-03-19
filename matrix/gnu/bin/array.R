#!/usr/bin/r

# A vector can be used by R as an array only if it has a dimension vector as its dim attribute.
# Suppose, for example, z is a vector of 1500 elements. The assignment
z <- c(3,5,100)

# Continuing the previous example, a[2,,] is a 4 × 2 array with dimension vector c(4,2) and
# data vector containing the values
prv <- c(a1=2,1,1, a2=2,2,1, a3=2,3,1, a4=2,4,1,
  a5=2,1,2, a6=2,2,2, a7=2,3,2, a8=2,4,2)

# In this case we need a 3 by 2 subscript array, as in the following example.
x <- array(1:20, dim=c(4,5))
# Generate a 4 by 5 array.
x
i <- array(c(1:3,3:1), dim=c(3,2))
i  # i is a 3 by 2 index array.
x[i]
x[i] <- 0
x
# quest yer boss
Xb <- matrix(0, x, i)
Xv <- matrix(0, x, i)
ib <- c(1:9)
iv <- c(1:9)
Xb[ib] <- 1
Xv[iv] <- 1
X <- cbind(Xb, Xv)

# To construct the incidence matrix, N say, we could use
N <- crossprod(Xb, Xv)

# However a simpler direct way of producing this matrix is to use table():
N <- table(Xb, Xv)
