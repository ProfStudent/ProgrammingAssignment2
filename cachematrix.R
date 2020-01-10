## Hi,
## Here is my code, made for Programming Assignment #2

## The makeCacheMatrix() function creates a special "matrix" object that can cache its inverse
## det() function tests x. If x is a non-invertible matrix, det() returns an error.
## Other functions are almost similar to makeVector() function in the example for this Assesment.
## The difference is that we search an inverted matrix instead of mean of a vector


makeCacheMatrix <- function(x = matrix()) {
       det(x)
       inv <- NULL
       set_matrix <- function(x1) {
               x1 <<- x
               inv <<- NULL
        }
       get_matrix <- function() x
       set_inv <- function(solve) inv <<- solve
       get_inv <- function() inv
       list (set_matrix = set_matrix, get_matrix = get_matrix,
       set_inv = set_inv, get_inv = get_inv)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        inv1 <- x$get_inv()
        if (!is.null(inv1)) {
                print("getting cached matrix")
                return(inv1)
        }
        matrix <- x$get_matrix()
        inv <- solve(matrix, ...)
        x$set_inv(inv)
        inv
}
