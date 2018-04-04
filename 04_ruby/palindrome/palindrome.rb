# example
# racecar

# define method - ? means method should return boolean
def palindrome?(str)
  str == str.reverse
end

puts palindrome?('racecar')  # => true
puts palindrome?('apple')      # => false