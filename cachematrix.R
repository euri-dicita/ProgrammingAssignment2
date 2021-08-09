## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) { 
        ## inverse property
        inv<-NULL
        ##setting the matrix 
        set <- function(y){
                x<<- NULL
                inv <<- NULL
                } ## getting the matrix 
        get <- function(){x}
        ##setting the inverse of the matrix 
        setinverse <- function (inverse) {inv <<- inverse}
        ##getting the inverserse of the matrix 
        getInverse <- function() {inv}
        list(set=set, get=get, setInverse=SetInverse, getInverse=getInverse)
}
## Write a short comment describing this function

        ## Return a matrix that is the inverse of 'x'
CacheSolve <- function(x, ...){
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cache data")
                }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
