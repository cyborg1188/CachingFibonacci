# Function to create a special "Fibonacci" object that can cache its value
makeCacheFibonacci <- function() {
  fib <- NULL  # Initialize the cache for Fibonacci value
  n <- NULL    # The value for which the Fibonacci is calculated
  
  # Function to set the value for which Fibonacci is calculated
  set <- function(value) {
    n <<- value      # Store the input value
    fib <<- NULL     # Reset the cached Fibonacci value when the input changes
  }
  
  # Function to get the current value
  get <- function() {
    return(n)  # Return the stored value
  }
  
  # Function to set the Fibonacci value in the cache
  setFib <- function(fibonacci) {
    fib <<- fibonacci  # Cache the computed Fibonacci value
  }
  
  # Function to get the cached Fibonacci value
  getFib <- function() {
    return(fib)  # Retrieve the cached Fibonacci value
  }
  
  # Return a list of functions
  list(set = set, get = get, setFib = setFib, getFib = getFib)
}

# Function to compute the Fibonacci number and cache it if not already cached
cacheFibonacci <- function(fibObject, ...) {
  fib <- fibObject$getFib()  # Check if the Fibonacci value is cached
  if (!is.null(fib)) {
    message("Getting cached Fibonacci number")  # If cached, retrieve the value
    return(fib)
  }
  
  n <- fibObject$get()  # Get the input value for Fibonacci calculation
  if (n == 0) {
    fib <- 0  # F(0) = 0
  } else if (n == 1) {
    fib <- 1  # F(1) = 1
  } else {
    fib <- cacheFibonacci(fibObject, n - 1) + cacheFibonacci(fibObject, n - 2)  # Recursive call for n > 1
  }
  
  fibObject$setFib(fib)  # Cache the computed Fibonacci value
  return(fib)  # Return the Fibonacci value
}
