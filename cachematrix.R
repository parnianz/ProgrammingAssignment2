## Put comments here that give an overall description of what your
## functions do

## ## Put comments here that give an overall description of what your
## functions do

## This function set(set) the value of matrix,get(get) it,set(setinverse) and get(inverse) the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<-Null
  }
  get <- function() x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function getinverse of matrix if it is in Cache it returns it if not calcaulte the inverse and setinverse the value in the cache 


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<-Null
  }
  get <- function() x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function set(set) the value of matrix,get(get) it,set(setinverse) and get(inverse) the inverse of the matrix


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
