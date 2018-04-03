require 'pry'
#while loop
# how to get input
puts 'Welcome to the guessing game.'
puts 'Please guess a number between 1 and 10.'
guess = gets.chomp   
secret_number = rand(10) + 1

while guess != secret_number.to_s
  if guess > secret_number.to_s
    puts 'The secret number is less than that.'
    guess = gets.chomp 
  elsif guess < secret_number.to_s
    puts 'The secret number is higher than that.'
    guess = gets.chomp 
  end
end

puts("You win, #{secret_number} was the correct number.")