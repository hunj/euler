# Project Euler Problem 4

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# Monkeypatching!
class String
  def palindrome?
    return true if self == self.reverse
  end
end

def x_times_y_palindrome_check(x, y, min)
  @xy = {}
  @palindrome = []
  x.downto(min) { |x| 
    y.downto(min) { |y| # omg O(n^2) already
      current = [x, y]
      string = (x*y).to_s
      @xy[current] = string
      if string.palindrome?
        p "#{x} * #{y} = #{string}"
        @palindrome << string.to_i
      end
    }
  }
  @palindrome.max
end

puts x_times_y_palindrome_check(999, 999, 100) # => 906609