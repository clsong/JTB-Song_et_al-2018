# R-code of "A guideline to study the feasibility domain of multi-trophic and changing ecological communities" by:
# Chuliang Song, Rudolf P. Rohr, Serguei Saavedra
# published in: Journal of Theoretical Biology

source('toolbox.R') #load the toolbox



# example of the overlap of two random interaction matrix -----------------

#set the parameter for the data
num = 4
stren = 0.4
conne = 1

#generate two random interaction matrices
set.seed(1)
A <- interaction_matrix_random(num, stren, conne)
set.seed(2)
B <- interaction_matrix_random(num, stren, conne)

Omega(A) #relative size of interaction matrix
Omega(B) #relative size of interaction matrix
Omega_overlap(A, B) #overlap of two interaction matrices

# example of the normalized size of the feasibility domain of a random interaction matrix under linear biological constraints-----------------
set.seed(3)
A <- interaction_matrix_random(num, stren, conne) #generate a random interaction matrix
I1 <- c(1, 2, -1, 1) #put linear inequality contraints. The interpretation is 1*r1 + 2*r2 - r3 + r4 < 1
I2 <- c(1, 2, 0, 0) #put linear inequality contraints. The interpretation is 1*r1 + 2*r2 < 1

Omega(A) #relative size of the original interaction matrix
Omega_overlap(A, I1) #the size of the feasibility domain of a random interaction matrix under linear biological constriants I1
Omega_overlap(A, I2) #the size of the feasibility domain of a random interaction matrix under linear biological constriants I2

# example of the normalized size of the feasibility domain of a random interaction matrix under the sign constraints-----------------
set.seed(4)
A <- interaction_matrix_random(3, 0.4, 1) #generate a random interaction matrix
C1 <- diag(c(-1,-1,-1), 3) #imposing biological constraint. Here it refers to that the growth rates of all species have to be positive
C2 <- diag(c(1,-1,1), 3)  #imposing biological constraint. Here it refers to that the growth rates of species 1 and 3 have to be negative, and the growth rates of species 2 has to be positive

Omega(A) #relative size of the original interaction matrix
Omega_overlap(A, C1) #the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants C1
Omega_overlap(A, C2) #the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants C2

# example of the normalized size of the feasibility domain of a random interaction matrix under the sign constraints-----------------
