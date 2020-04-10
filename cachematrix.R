## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse property
  i <- NULL
  
  ## Method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Method the get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  # Method to set the inverse of the matrix
  set_Inverse <- function(inverse) {
    i <<- inverse
  }
  
  # Get the inverse of the matrix
  get_Inverse <- function() {
    ## Return the inverse property
    i
  }
  
  # Return a list of the methods
  list( set = set, get = get,
       set_Inverse = setInverse,
       get_Inverse = getInverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
        
  m <- x$get_Inverse()
  
  # Return the inverse if its already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  # Get the matrix from our object
  data <- x$get()
  
  # Calculate the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## Set the inverse to the object
  x$set_Inverse(m)
  
  ## Return the matrix
  m
}
