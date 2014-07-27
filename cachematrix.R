## well based on my instructor,good programers are lazy so,
##I created my function from the example,simply change mean with solve and valla!!!!
##The name changes were not needed but,its better this way.

## Creates a list of 4.first seting the matrix second getting it 
## third seting the inverse and fourth getting the inverse
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
            print(y)
      }
      get <- function() x
      setrev <- function(solve) m <<- solve
      getrev <- function() m
      list(set = set, get = get,
           setrev = setrev,
           getrev = getrev)
}


## first checks if there is a reverse of our metrix in $getrev if its there
##it will say that it is loading from cache and returns that reverse,
##if there is no reverse in cache it goes on and calculats it,
##then stores the matrix and its inverse in our list. 

cacheSolve <- function(x, ...) {
      m <- x$getrev()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setrev(m)
      m                ## Returns a matrix that is the inverse of 'x'
}
        
}
