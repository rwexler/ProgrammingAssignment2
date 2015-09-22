makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL ## initialize inverse
     
     set <- function(y) {
          y <<- x #set y equal to x
          inv <<- NULL # reinitialize inverse
     }
     get <- function() x ## make function which returns x
     ## make function which sets solve to inv
     setinv <- function(solve) inv <<- solve
     getinv <- function() inv
     
     ## make list of functions
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}