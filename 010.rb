# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

sum = 0

for i in 1..2_000_000
  if i.prime?
    sum += i
  end
end

p sum # => 142913828922
