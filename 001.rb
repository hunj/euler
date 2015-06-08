# Project Euler Problem 1

sum = 0
# for i in 1...1000
(1...1000).each do |i|
  if i % 3 == 0 or i % 5 == 0
    sum += i
  end
end


p sum # => 233168