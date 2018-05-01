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

# example of the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants-----------------

set.seed(4)
A <- interaction_matrix_random(3, 0.4, 1) #generate a random interaction matrix
C1 <- diag(c(-1,-1,-1), 3) #imposing biological constraint. Here it refers to that the growth rates of all species have to be positive
C2 <- diag(c(1,-1,1), 3)  #imposing biological constraint. Here it refers to that the growth rates of species 1 and 3 have to be positive, and the growth rates of species 2 has to be negative

Omega(A) #relative size of the original interaction matrix
Omega_overlap(A, C1) #the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants C1
Omega_overlap(A, C2) #the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants C2
