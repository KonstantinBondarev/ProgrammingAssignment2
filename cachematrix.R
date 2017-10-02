## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(orig = matrix()) {
inv <- NULL
        set <- function(y) {
                orig <<- y
                inv <<- NULL
        }
        get <- function() orig
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
list(set = set, 
     get = get,
     setinv = setinv,
     getinv = getinv)
}       
}


## Write a short comment describing this function

cacheSolve <- function(orig, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- orig$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        # Let's create inverted matrix in case
        # there's no cached matrix available.
          mat.inv <- orig$get()
          inv <- solve(mat.inv)
          orig$set.inverse(inv)
          inv
}
