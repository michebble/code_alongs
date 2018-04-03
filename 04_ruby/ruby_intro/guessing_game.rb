require 'pry'
#while loop
# how to get input
puts 'Welcome to the guessing game.'
puts 'Please guess a number between 1 and 10.'
guess = gets.chomp   
secret_number = rand(1..10) 
binding.pry
while guess.to_i != secret_number
  if guess.to_i > secret_number
    puts 'The secret number is less than that.'
    guess = gets.chomp 
  elsif guess.to_i < secret_number
    puts 'The secret number is higher than that.'
    guess = gets.chomp 
  end
end

puts("You win, #{secret_number} was the correct number.")