# Project Euler Problem 6

sum_of_squares = 0
sum = 0

0.upto(100) { |i|
  sum_of_squares += i**2
  sum += i
}

sum_sq = sum**2
p (sum_sq - sum_of_squares) # => 25164150