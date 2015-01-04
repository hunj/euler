# Project Euler Problem 20

# using recursion
def recursive_factorial(n)
  if n == 1 or n == 0 
    return 1
  else
    return n * recursive_factorial(n-1)
  end
end

def sum_digits(number)
  raise "not integer" unless number.is_a? Integer
  
  if number == 0 
    return 0 
  end

  sum = 0 

  sum += number % 10 + sum_digits(number / 10)
end

number = recursive_factorial(100)
p sum_digits(number) # => 648