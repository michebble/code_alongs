# racecar
# atoyota


def add_one(num)
  return num + 1
end

def palindrome(str)
  str == str.reverse
end

def test(expected, actual) 
  if expected == actual
    p 'yay'
  else
    p 'nay'
  end
end

test(true, palindrome('racecar'))
test(false, palindrome('goat'))
test(true, palindrome('atoyota'))


test(6, add_one(5))
test(11, add_one(10))
test(0, add_one(-1))

# if palindrome('racecar') == true
#   puts 'it is pretty good'
# else
#   puts 'it is no good'
# end

# if palindrome('atoyota') == true
#   puts 'it is pretty good'
# else
#   puts 'it is no good'
# end


# Sinatra App - main.rb

@languages = ['ruby', 'js', 'css']

# views - shows.rb

# <%= @languages %>
# ruby , js, css