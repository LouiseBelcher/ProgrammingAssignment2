## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
    
  # 'i' is the inverse of the matrix
  # 'm_cache' is the matrix that was solved

  i <- NULL    

  set <- function(y) {
    m <<- y
    i <<- NULL
  }
  
  get <- function() {
    m
  }
  
  setInverse <- function(inv) {
    i <<- inv
  }
  
  getInverse <- function() {
    i
  }
  
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Returns the inverse of a matrix, checks cache first

cacheSolve <- function(m, ...) {
  
  ## check cache for inverse
  i <- m$getInverse()

  ## make sure matrix hasn't change, otherwise inverse is wrong
  if (!is.null(i)) {
    ## inverse is in cache
    message("Getting cache data, inverse of matrix")
    return (i)
  }
    
  message("cache is empty")
  ## cache is empty, so solve inverse
  data_m <- m$get()
  i <- solve(data_m,...)
  m$setInverse(i)
    
  ## matrix isn't the same
  ## TODO: Solve for new matrix
  
  i
}
