# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'

@prime = [0, 2, 3, 5, 7, 11, 13]

def check_prime_and_add(number)
  if number.prime?
    @prime << number
  end
end

current = @prime[@prime.size-1]
while @prime.size <= 10001
  current += 1
  check_prime_and_add current
end

p @prime.last # => 104743