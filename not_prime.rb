# You are given two positive integers a and b (a < b <= 20000). 
# Complete the function which returns a list of all those numbers in the interval [a, b) whose digits are made up of prime numbers (2, 3, 5, 7) but which are not primes themselves.
# Be careful about your timing!

def not_primes(a,b)
  require 'prime'
  p (a..b).select{ |num| num.digits.all?(&:prime?) && !num.prime? }
end

not_primes(999, 2500)

# STEPS:

# require the Prime module. Has a method (prime?) which checks if a number is prime.
# Create range(a..b) enumerable and filter using the select method.
# Check if all the digits of the number are prime && whether the number itself is prime.
# Result is an array of only the values that meet both of these conditions