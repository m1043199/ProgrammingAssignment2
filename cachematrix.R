## Put comments here that give an overall description of what your
## functions do

## A pair of function that cache the inverse of a matrix.
## This function creates a special matrix object that ca cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- funtion(y){
          c <<- y
          }
        get <- function() x
        setinverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
        
}


## casheSolve is a functon which computes the inverse of the special matrix returned by makeCacheMatrix above. 
## if the inverse has already been calculated,  then the cacheSolve hould retrive the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)){
     message("getting cache result")
     return(inv)
   }
   data <- x$get()
   inv <- solve(data, ...)
   x$setinv(inv)
   inv
            
}
