# Project Euler Problem 20

# let's try being fancy...
# using memoization
class Integer
  def factorial
    @@factorials[0] = 1
    @@factorials[1] = 1

    

  end

  private
  def calc_factorial(number)
    if @@factorials[number].nil?
      
    end
  end
end