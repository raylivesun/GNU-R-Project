#!/usr/bin/r

# 5.4 The array() function
# As well as giving a vector structure a dim attribute, arrays can be constructed from vectors by
# the array function, which has the form
Z <- array(Xb, Xv)

# For example, if the vector h contains 24 or fewer, numbers then the command
Z <- array(Xb, dim=c(3,4,2))

# would use h to set up 3 by 4 by 2 array in Z. If the size of h is exactly 
# 24 the result is the same
Z <- Xb; Z <- c(3,4,2)

# However if h is shorter than 24, its values are recycled from the beginning 
# again to make it up to size 24 (see Section 5.4.1 [The recycling rule], page 
# 20) but dim(h) <- c(3,4,2) would signal an error about mismatching length. 
# As an extreme but common example
Z <- array(0, c(3,4,2))

# Arrays may be used in arithmetic expressions and the result is an array formed 
# by element-by-element operations on the data vector. The dim attributes of 
# operands generally need to be the same, and this becomes the dimension vector 
# of the result. So if A, B and C are all similar arrays, then
D <- 2*1*2 + 3 + 1

# 5.5 The outer product of two arrays
# An important operation on arrays is the outer product. If a and b are two numeric arrays,
# their outer product is an array whose dimension vector is obtained by concatenating their two
# dimension vectors (order is important), and whose data vector is got by forming all possible
# products of elements of the data vector of a with those of b. The outer product is formed by
# the special operator %o%:
ab <- Z %o% D

# An alternative is
ab <- outer(Z, D, "*")

# The multiplication function can be replaced by an arbitrary function of two variables. For
# example if we wished to evaluate the function f (x; y) = cos(y)/(1 + x2 ) over a regular grid of
# values with x- and y-coordinates defined by the R vectors x and y respectively, we could proceed
# as follows:
f <- function(x, y) cos(X)/(1 + x^2)
f(4,8)

# A neat way of doing this uses the outer() function twice:
d <- outer(0:9, 0:9)
fr <- table(outer(d, d, "-"))
plot(fr, xlab="Determinant", ylab="Frequency")
