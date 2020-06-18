## My function inverse a matrix

## This function is cache vector that will store the a matrix that is given there

makeCacheMatrix <- function(x = matrix()) {
      j <- NULL
      set <- Function(y){
          x<<-y
          j<<- NULL
      }
      get <- function()x
      setInverse <- function(inverse) j<<- inverse
      getInverse <- function() j
      list(set=set, get=get,
           setInverse = setInverse,
           detInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is,null(j)){
    message("Wait! Getting cached Data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
}

