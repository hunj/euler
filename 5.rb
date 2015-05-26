# 2520 is the smallest number that can be divided by each of 
# the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number 
# that is evenly divisible by all of the numbers from 1 to 20?

class Fixnum
  def divisible_up_to(n)
    (1..n).each do |num|
      if self % num != 0
        return false
      end
    end
    return true
  end
end

a = 20

loop do
  if a.divisible_up_to 20
    break
  end
  a += 1
end

puts a # => 232792560

puts 232792560.divisible_up_to 20 # => true