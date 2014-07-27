makematrix <- function(x = matrix()) {
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

cachematrix <- function(x, ...) {
      m <- x$getrev()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setrev(m)
      m
}

