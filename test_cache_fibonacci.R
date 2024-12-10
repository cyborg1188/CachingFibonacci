# Load the cacheFibonacci functions (assuming it's in the same directory)
source("cacheFibonacci.R")

# Create the Fibonacci object
fibObj <- makeCacheFibonacci()

# Set the value for Fibonacci calculation (e.g., Fibonacci of 5)
fibObj$set(5)
result1 <- cacheFibonacci(fibObj)
print(result1)  # Should compute Fibonacci(5)

# Call cacheFibonacci again with the same value, it will use the cached result
result2 <- cacheFibonacci(fibObj)
print(result2)  # Should print cached Fibonacci(5)

# Set a new value for Fibonacci calculation (e.g., Fibonacci of 7)
fibObj$set(7)
result3 <- cacheFibonacci(fibObj)
print(result3)  # Should compute Fibonacci(7)

# Call cacheFibonacci again with the same value, it will use the cached result
result4 <- cacheFibonacci(fibObj)
print(result4)  # Should print cached Fibonacci(7)

# Test for Fibonacci(0) and Fibonacci(1)
fibObj$set(0)
result5 <- cacheFibonacci(fibObj)
print(result5)  # Should compute Fibonacci(0)

fibObj$set(1)
result6 <- cacheFibonacci(fibObj)
print(result6)  # Should compute Fibonacci(1)
