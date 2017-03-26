## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
            #The following function will produce the inverse for the matrix required
            #If we want to calculate the inverse of the matrix 
            #it computes the inverse and sets the value in the chache using the setinverse function
            #If the inverse is already been calculated then it just only will produce us with the results and will skip the computation
        
cacheSolve <- function(x, ...) {
        {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
        ## Return a matrix that is the inverse of 'x'
}
