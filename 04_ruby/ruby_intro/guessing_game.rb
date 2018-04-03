require 'pry'
#while loop
# how to get input
puts 'Welcome to the guessing game.'
puts 'Please guess a number between 1 and 10.'
guess = gets.chomp   
secret_number = rand(10) + 1

while guess != secret.to_s
  puts 'Incorrect. Guess again.'
  guess = gets.chomp 
end

puts("You win, #{secret_number} was the correct number.")