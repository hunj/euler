def sum_digits(number)
  raise "not integer" unless number.is_a? Integer
  
  if number == 0 
    return 0 
  end

  sum = 0 

  sum += number % 10 + sum_digits(number / 10)
end

p sum_digits(2**1000) # => 1366