##THC Week 3 assignment

makeCacheMatrix <- function(x=matrix()) {
## Create a special "matrix" object that can cache reverse

## set the matrix
inv <- NULL
set <- function (matrix) {
	m <<- matrix
	inv <<- NULL
	}

## get the matrix
get <- function() {
	m
	}

## set the inverse
setinv <- function(inverse) {
	inv <<- inverse
	}

## get the inverse
getinv <- function() {
	inv
	}
	
	list(set = set,
	get = get,
	setinv = setinv,
	getinv = getinv)
}

cacheSolve <- function(x, ...) {
## compute the inverse of the matrix 	
	m <- x$getinv()
	
## return the inverse if it has already been calculated
	if (!is.null(m)) {
	message("gettung cache data")
	return(m)
	}

## get the matrix data
	data <- x$get()
	
## calculate the inverse of the matrix
	m <- inv(data, ...)
	
## set the inverse
	x$setinv(m)
	
	m
}
