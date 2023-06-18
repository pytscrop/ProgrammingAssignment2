## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  mt <- NULL
  set <- function(y) {
    x <<- y
    mt <- NULL
  }
  get <- function() x
  setCache <- function(inverse) mt <<- inverse
  getCache <- function() mt
  list ( set=set, get=get, setCache=setCache, getCache=getCache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mt <- x$getCache()
  if (!is.null(mt)) {
    message("getting teh cache data")
    return(mt)
  }
  data <- x$get()
  mt <- solve(data,...)
  x$setCache(mt)
  mt
}


