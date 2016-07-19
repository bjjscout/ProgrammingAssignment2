## Put comments here that give an overall description of what your
## functions do

## Create list of functions for MakeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
   
        I <- NULL
        
        set <- function(y){
                x <<- y
                I <<- NULL
        }
        
        get <- function(){
                x               
        } 
        
        setInv <- function(i) {
                I <<- i
        }
        
        getInv <- function() {
                I
        }
        
        list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Calculate the inverse Matrix

cacheSolve <- function(x, ...) {
        
        IM <- x$getInv()     
        
        if (is.null(IM)) {
                message('Calculating the inverse...')
                
                data <- x$get()
                IM <- solve(data, ...)
                x$setInv(IM)
        } else {
                message('Cached inverse...')
        }
        
        IM
}
