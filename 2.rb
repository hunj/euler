# Project Euler Problem 2

def fibo(number)
  # cant use memoization technique for this problem
  # ignoring complexity...

  if number == 1 or number == 2
    return 1
  end

  return fibo(number-1) + fibo(number-2)
end

# main part!
sum = 0
i = 1
current = fibo(i)
while current < 4000000 # a java style for-loop would be nice in this case.
  if current.even?
    sum += current
  end
  
  i += 1
  current = fibo(i)
end

p sum # => 4613732