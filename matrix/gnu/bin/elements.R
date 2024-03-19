#!/usr/bin/r

# 5.6 Generalized transpose of an array
# The function aperm(a, perm) may be used to permute an array, a. The argument perm must be
# a permutation of the integers {1, . . . , k}, where k is the number of subscripts in a. The result of
# the function is an array of the same size as a but with old dimension given by perm[j] becoming
# the new j-th dimension. The easiest way to think of this operation is as a generalization of
# transposition for matrices. Indeed if A is a matrix, (that is, a doubly subscripted array) then B
# given by
A <- c(0, c(2,1))
A <- t(2)
B <- c(0, c(2,1))
B <- t(2)

# 5.7.1 Matrix multiplication
# The operator %*% is used for matrix multiplication. An n by 1 or 1 by n matrix may of course
# be used as an n-vector if in the context such is appropriate. Conversely, vectors which occur in
# matrix multiplication expressions are automatically promoted either to row or column vectors,
# whichever is multiplicative coherent, if possible, (although this is not always unambiguously
# possible, as we see later). If, for example, A and B are square matrices of the same size, then
A * B 

# is the matrix of element by element products and
A %*% B

# is the matrix product. If x is a vector, then
A %*% A %*% A


