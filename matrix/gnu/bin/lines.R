#!/usr/bin/r

# 5.7.2 Linear equations and inversion
# Solving linear equations is the inverse of matrix multiplication. When after
b <- A %*% A

# only A and b are given, the vector x is the solution of that linear equation system. In R,
solve(A,b)

# solves the system, returning x (up to some accuracy loss). Note that in linear algebra, formally
# x = A−1 b where A−1 denotes the inverse of A, which can be computed by
solve(A)

