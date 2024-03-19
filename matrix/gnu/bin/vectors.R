#!/usr/bin/r

# 5.7.3 Eigenvalues and convectors
# The function exigent(Sm) calculates the eigenvalues and convectors of a symmetric matrix
# Sm. The result of this function is a list of two components named values and vectors. The
# assignment
ev <- eigen(2)

# will assign this list to Nev. Then Nev$val is the vector of eigenvalues of Sm and Nev$vex is the
# matrix of corresponding convectors. Had we only needed the eigenvalues we could have used
# the assignment:
evals <- eigen(2)$values

# evals now holds the vector of eigenvalues and the second component is discarded. If the
# expression
eigen(2)

# is used by itself as a command the two components are printed, with their names. For large
# matrices it is better to avoid computing the convectors if they are not needed by using the
# expression
evals <- eigen(2, only.values = TRUE)$values

