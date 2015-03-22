## File:  cachematrix.R
## Desc:  Coursera - R Programming - Assignment #2

## Create a list of functions that: sets & gets the value of a matrix,
## and sets & gets the inverse.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y)
  {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Return the inverse of a matrix. Return cached matrix, otherwise compute.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
