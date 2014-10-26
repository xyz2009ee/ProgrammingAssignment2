## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
#initialize the matrix
        set <- function(y){
             x <<- y
             m <<- NULL
}
# get the matrix
get <- function()x
# cache the inverse
setinverse <- function(inverse) m <<- inverse
# get the inverse
getinverse <- function()m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
#If the inverse of the matrix has been calculated, cacheSolve get its
#cached inverse, otherwise cacheSolve calculate its inverse and stored.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
# if inverse exists, get and return the inverse    
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
# calculate and save the inverse        
        datam <- x$get()
        m <- solve(datam)
        x$setinverse(m)
        ## Return a matrix that is the inverse of 'x'
        m 
}
