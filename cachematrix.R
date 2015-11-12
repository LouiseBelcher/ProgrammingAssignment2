## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
  inv_x <- NULL
  
  set <- function(y) {
    x <<- y
    inv_x <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverse <- function() {
    inv_x <<- solve(x)
  }
  
  getInverse <- function() {
    inv_x
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Returns the inverse of a matrix, checks cache first

cacheSolve <- function(x, ...) {
  
  ## check cache for inverse
  m <- x$getInverse()
  
  if (!is.null(m)) {
    ## inverse is in cache
    message("Getting cache data, inverse of matrix")
  }
  
  ## cache is empty, so solve inverse
  data_m <- x$get()
  m <- solve(data_m)
  x$setInverse(m)
  
  m
}
