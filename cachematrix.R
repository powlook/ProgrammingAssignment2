## Put comments here that give an overall description of what your
## functions do

## This function create a 2 x 2 matrix, calculate the inverse and cached the answer

makeCacheMatrix <- function(x = matrix(rnorm(100),2,2)) {
   m <<- x
## solve(m) gives the inverse of matrix. The inverse is cached using the double assignment operator
   inverse_m <<- solve(m)
}

## This function check whether the inverse matrix from cache is identical to
## the computed inverse (up to 4 decimal places)
## If identical, it will get the inverse from the cache and display
## Else, it will recompute the inverse and display the results

cacheSolve <- function() {
        chk_inv <<- solve(inverse_m)
        if (identical(round(m,digit=4),round(chk_inv,digit=4))) {
        message ("get cached inverse matrix data")
        return(inverse_m)
        }
        ## Return a matrix that is the inverse of 'x'
message ("Computing Inverse")
x <- solve(m)
}
