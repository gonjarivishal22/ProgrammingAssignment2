## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The makeCacheMatrix function is storing the cache information. 
## In the first run this function will not come into play because there is no cache
## In the second run, the function will reutn the message and cached data



makeCacheMatrix <- function(x = matrix()) {
                invrs <- NULL
                set <- function(y) {
                x <- y
                invrs <- NULL
                }
                get <- function() x
                setinverse <- function(inverse) invrs <- inverse
                getinverse <- function() invrs
                list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

            }


## Write a short comment describing this function

## This function is computing the inverse and 
## if the inverse is already created, then it runs the makeCacheMatrix function
## Hence returning the cached data

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    
              invrs <= x$getinverse()
              if(!is.null(invrs)) {
              message("getting cached data")
              return(invrs)
                  }
              
              mat <- x$get()
              invrs <- solve(mat, ...)
              x$setinverse(invrs)
              invrs
            }
