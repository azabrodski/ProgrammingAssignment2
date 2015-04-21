## Put comments here that give an overall description of what your
## functions do

## Takes in a matrix, and assigns the inverse as NULL
## Can set or return the value of the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get <- function()x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Checks to see if the inverse is assigned already
## If yes, function returns that value. If value is NULL it solves for the inverse
## and assigns that value to i and returns it

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        print("getting cached data")
        return (i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
        ## Returns i, a matrix that is the inverse of 'x'
}
