'''
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
'''

@fibonacci = [nil, 1, 1]

## calculates & finds the number-th fibonacci number
def fibo(number)
  return 1 if number == 1 or number == 2
  return @fibonacci[number] if @fibonacci[number]
  @fibonacci[number] = fibo(number-1) + fibo(number-2)
  @fibonacci[number]
end

## calculates the number of digits of the given number.
def digits_of(number)
  digits = 1
  while number / 10 != 0
    digits += 1
    number /= 10
  end
  digits
end

# here we go...
n = 1
until digits_of(fibo( n )) == 1000
  n += 1
end

p fibo(n) # => some bigass number
p n # => 4782