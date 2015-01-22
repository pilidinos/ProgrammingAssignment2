## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
 ##     x <- NULL
      ## this set the value of the matrix
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      
      ## get the value of the matrix
      get <- function () x
      
      ##set the inverse of the matrix
      setinvesre <- function(solve) m <<- solve
      getinverse <- function() 
      
      ##get inverse of the matrix
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## Return a matrix that is the inverse of 'x'
  
  ## get the inverse of the matrix        
  i <- x$getinverse()
  
  ## check if there is the matrix   
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## if not:  get the inverse of the matrix   
  data <- x$get()
  i <- solve(data, ...)
  ## set the inverse of the matrix 
  x$setinverse(i)
  i
}
