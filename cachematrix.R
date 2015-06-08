makeCacheMatrix <- function(x = matrix()) {
  xi <- NULL
  
  set <- function(y) {
    x <<- y
    xi <<- NULL
  }
  get <- function() x
  setinv <- function(solve) xi <<- solve
  getinv <- function() xi
  list(set = set, get = get,
       setmean = setinv,
       getmean = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  xi <- getinv
  
  if (xi == NULL){ 
    xi <- solve(x)
    setinv (xi)}
  
  cacheSolve <- x1 
}
