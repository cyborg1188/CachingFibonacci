# Caching Fibonacci Sequence Calculation

## Description

This project implements caching for the Fibonacci sequence to optimize the calculation of Fibonacci numbers. The Fibonacci sequence is defined as:

- F(0) = 0
- F(1) = 1
- F(n) = F(n-1) + F(n-2) for n > 1

The two main functions in this project are:

1. **`makeCacheFibonacci`**: This function creates a special "Fibonacci" object that can cache the Fibonacci number for a given value of `n`.
2. **`cacheFibonacci`**: This function calculates the Fibonacci number for the specified `n`. If the Fibonacci number has already been computed and cached, it retrieves the cached value; otherwise, it computes the Fibonacci number and stores it in the cache.

## Functions

### `makeCacheFibonacci()`
This function creates a special object that stores:
- The input value `n` for which Fibonacci is computed.
- The cached Fibonacci value.

It returns a list of four functions:
- `set(value)`: Set the input value `n` for Fibonacci computation.
- `get()`: Get the current value `n`.
- `setFib(fibonacci)`: Cache the Fibonacci number.
- `getFib()`: Retrieve the cached Fibonacci number.

### `cacheFibonacci(fibObject)`
This function computes the Fibonacci number for the stored value `n` in the `fibObject`. If the Fibonacci number is cached, it returns the cached value. Otherwise, it computes the Fibonacci number recursively and caches it.

## Usage

1. First, create the Fibonacci object by calling `makeCacheFibonacci()`.
2. Set the value for which you want to compute the Fibonacci number using the `set()` function.
3. Call `cacheFibonacci(fibObject)` to compute or retrieve the cached Fibonacci value.

Example usage:

```r
# Create the Fibonacci object
fibObj <- makeCacheFibonacci()

# Set the value for Fibonacci calculation (e.g., Fibonacci of 10)
fibObj$set(10)

# Compute and cache the Fibonacci number
fibResult <- cacheFibonacci(fibObj)
print(fibResult)  # Output: Fibonacci of 10 (55)

# Call cacheFibonacci again with the same value, it will use the cached result
fibResultCached <- cacheFibonacci(fibObj)
print(fibResultCached)  # Output: Getting cached Fibonacci number, 55