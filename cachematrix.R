## These functions compute the inverse of a matrix and cache
## the result

## This function sets and gets the values of both the matrix
## and its inverse

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     set <- function(y) {
          x <<- y
          i <<- NULL
     }
     get <- function() x
     setinv <- function(inv) i <<- inv
     getinv <- function() i
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}


## This function computes the inverse of the matrix or, if 
## cached, simply returns its value

cacheSolve <- function(x, ...) {
     i <- x$getinv()
     if(!is.null(i)) {
          message("getting cached data")
          return(i)
     }
     data <- x$get()
     i <- solve(data, ...)
     x$setinv(i)
     i
}