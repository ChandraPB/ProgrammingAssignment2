## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this a function to make cache of a matrix

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y){
    x <<- y
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a 
  list(set = set, get = get, #return a list of cached matrix
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

## this a function to solve the cache of a matrix cached by function makeCacheMatrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  a <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mtx <- x$get()
  a <- solve(mtx,...)
  x$setInverse(a)
  a #return the matrix
}
