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

Omega(A)
Omega(B)
#overlap of two interaction matrices
Omega_overlap(A, B) 

# example of the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants-----------------

#generate two random interaction matrices
set.seed(4)
A <- interaction_matrix_random(3, 0.4, 1)
C <- diag(c(-1,-1,-1), 3) #biological constraint

Omega(A)
#the normalized size of the feasibility domain of a random interaction matrix under linear biological constriants
Omega_overlap(A, C) 

