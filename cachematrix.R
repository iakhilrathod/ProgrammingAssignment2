## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL    # sets the value of m to NULL(provides a default if cacheSolve has not yet been used) 
  set <- function(y){   #set the value of the matrix
  x <<- y     
  m <<- NULL    #sets the value of m (the matrix inverse if used cacheSolve) to NULL
}
get <- function() x
setmatrix <- function(solve) m<<- solve
getmatrix <- function() m
list(set=set, get=get,    # creates a list to house the four functions
   setmatrix=setmatrix,
   getmatrix=getmatrix)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # Need to compare matrix to what was there before!
        m <-x$getmatrix()  
        # if an inverse has already been calculated this gets it
    if(!is.null(m)){   # check to see if cacheSolve has been run before
      message("getting cached data")
      return(m)
    }
    mat <- x$get()
    m <- solve(mat, ...)    # compute the value of the inverse of the input matrix
    x$setmatrix(m)          # run the setinverse function on the inverse to cache the inverse
    m      # return the inverse
}
