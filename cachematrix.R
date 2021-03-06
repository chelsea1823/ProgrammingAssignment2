## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        i=NULL
        set=function(matrix){
                m=matrix
                i<<-NULL
        }
        get=function()  m 
        setInverse=function(inverse) {
                i=inverse
        }
        getInverse=function() i 
        
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
        
}


## Write a short comment describing this function
## The following function calculates the inverse of the special "matrix" created with the above function. 
## However, it first checks to see if the inverse has already been calculated. 
## If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setInverse function.

cacheSolve <- function(x, ...) {
        m=x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data=x$get()
        m=solve(data,...)
        x$setInverse(m)
        m     
        
}
