## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        imat <- NULL
        set <- function(y) {
                x <<- y
                imat <<- NULL
        }
        get <- function() x
        setinvmat <- function(solve) imat <<- solve
        getinvmat <- function() imat
        list(set = set, get = get,
             setinvmat = setinvmat,
             getinvmat = getinvmat)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        imat <- x$getinvmat()
        if(!is.null(imat)) {
                message("getting cached data")
                return(imat)
        }
        data <- x$get()
        imat <- solve(data, ...)
        x$setinvmat(imat)
        imat
}
