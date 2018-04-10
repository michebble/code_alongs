require 'httparty'
require 'pry'

print "Enter movie title"
title = gets.chomp

url = "http://omdbapi.com/?apikey=2f6435d9&t=#{title}"

result = HTTParty.get(url)

puts result.parsed_response["Title"]
puts result.parsed_response["Plot"]

puts "ENd of program"