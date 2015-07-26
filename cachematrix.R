## This two functions has the objective of caching the inverse of a matrix.


## The makeCacheMatrix creates a special "matrix" object that cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {

        cache <- NULL
        
        
        set <- function(new) {
                x <<- new
                cache <<- NULL
        }
        
        get <- function() {
                x
        }
        
        setinverse <- function(solve) {
                cache <<- solve
        }
        
        getinverse <- function() {
                cache
        }
        
        list(set = set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)
}


## The cacheSolve function computes the inverse of the matrix returned 
## by makeCacheMAtrix

cacheSolve <- function(y, ...) {
        
        inverse <- y$getinverse()


        if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
}


data <- y$get()
inverse <- solve(data)
y$setinverse(inverse)


inverse
}