# Problem 48
# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

class Fixnum
  def self_power
    self ** self
  end
end

sum = 0

(1..1000).each do |n|
  sum += n.self_power
end

p sum.to_s[-10, 10] # => 9110846700