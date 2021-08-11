## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
          x <<- y
          inv <<- NULL
  } 
  get <- function() {x} ## function to get matrix  x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}  ## getting the inverse of the matrix 
  list(set=set, get=get, setInverse=setInverse, getInverse= getInverse)
}


## Write a short comment describing this function

ccacheSolve <- function (x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
}
 matriz <- x$get()
 inv <- solve(matriz, ...)
 x$setInverse(inv)
 inv
}
