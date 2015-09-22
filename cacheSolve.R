cacheSolve <- function(x, ...) {
     inv <- x$getinv() ## get inverse
     ## if inverse exists, get cached data     
     if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
     }
     data <- x$get() ## get matrix
     inv <- solve(data, ...) ## calculate inverse
     x$setinv(inv) ## set inverse
     inv ## print inverse
}